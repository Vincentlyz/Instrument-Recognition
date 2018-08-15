function [mfccs, fs_mfcc] = instrument_recognition_mfccs(filepath, win_size, hop_size, min_freq, max_freq, num_mel_filts, n_dct)
    
% import audio file.  
[x_t, fs] = audioread(filepath);


% Test if the audio is stereo or mono, 
[L, R] = size(x_t); 

if R > 1;  % if R is more than 1, the audio is stereo.
    x_t_left = x_t(:,1); % take the left channel. 
    x_t = x_t_left; 
end
    
% compute spectrogram and break signal into frames.    
[x, f, ts] = spectrogram(x_t, hamming(win_size), win_size - hop_size, win_size, fs);

% convert frequency scale into mel-scale.
min_mel = 1127*log(1+min_freq./700);
max_mel = 1127*log(1+max_freq./700);


melhops = (max_mel - min_mel) / (num_mel_filts - 1);

% get the vector of mel-scale and hz. 
melvec = [min_mel - melhops : melhops : max_mel + melhops];
freqvec = 700*((exp(melvec/1127))-1);

% assign indices to target array
nearest_indices = find_nearest(f, freqvec);
    

% build the non-symmetrical mel filter
mel_filter = zeros(num_mel_filts, length(f));
% preset
for i = 1 : (length(nearest_indices)-2)
    triang_L = nearest_indices(i); 
    triang_Mid = nearest_indices(i+1);
    triang_R = nearest_indices(i+2);

    % the triangles on mel filter are non-symmetrical, 
    % but the areas of the triangles are equal to each other, 
    % we could calculate it by using the math of similar triangles.
    
    % the left side
    for j = triang_L:triang_Mid
        mel_filter(i, j) = (j - triang_L)/(triang_Mid - triang_L);
    end
    % the right side
    for j = triang_Mid+1:triang_R
        mel_filter(i, j) = (triang_R - j)/(triang_R - triang_Mid);
    end
    
    mel_filter(i,:) = mel_filter(i,:)/sum(mel_filter(i,:));
    
end
    
% get dB spec
melspec = mel_filter*abs(x);
meldBspec = log(melspec.^2);

% take dct 
melspec_dct = dct(meldBspec);
melspec_dct = melspec_dct(2:n_dct,:); % dct-1

for i=1:(length(ts))
    melspec_dct(:,i) = (melspec_dct(:,i)-min(melspec_dct(:,i)))/max(melspec_dct(:,i)-min(melspec_dct(:,i)));
end
    
mfccs = melspec_dct;
fs_mfcc = fs/hop_size;

end
