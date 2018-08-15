function [feature_set, label_set] = mfccs_feature_set(fpath1, fpath2, fpath3, params)
    
% produce feature set and label set for all 3 classes.

% get class 1 feature & label 
mfccs_features_class1 = instrument_recognition_mfccs(fpath1, params.win_size, params.hop_size, params.min_freq, params.max_freq, params.num_mel_filts, params.n_dct);
label_class1 = (zeros(1,length(mfccs_features_class1))+1);

% get class 2 feature & label
mfccs_features_class2 = instrument_recognition_mfccs(fpath2, params.win_size, params.hop_size, params.min_freq, params.max_freq, params.num_mel_filts, params.n_dct);
label_class2 = (zeros(1,length(mfccs_features_class2))+2);

% get class 3 feature & label    
mfccs_features_class3 = instrument_recognition_mfccs(fpath3, params.win_size, params.hop_size, params.min_freq, params.max_freq, params.num_mel_filts, params.n_dct);
label_class3 = (zeros(1,length(mfccs_features_class3))+3);    
    

% put features and labels together as sets        
feature_set = [mfccs_features_class1, mfccs_features_class2, mfccs_features_class3];
label_set = [label_class1, label_class2, label_class3];