%% preset conditions
% set parameters
params = struct('win_size', 1024, 'hop_size', 512, 'min_freq', 86, 'max_freq', 8000,'num_mel_filts', 40, 'n_dct', 15);

% training data
fpath0_1 = 'training_data/Training_Drum.wav';
fpath0_2 = 'training_data/Training_Guitar.wav';
fpath0_3 = 'training_data/Training_GuitarDrum.wav';

% get training data features and labels
[train_featureset, train_labelset] = mfccs_feature_set(fpath0_1, fpath0_2, fpath0_3, params);


%% 1st test data 

fpath1_1 = 'test_data/AClassicEducation/AClassicEducation_Drum.wav';
fpath1_2 = 'test_data/AClassicEducation/AClassicEducation_Guitar.wav';
fpath1_3 = 'test_data/AClassicEducation/AClassicEducation_GuitarDrum.wav';

[test_features1, test_labels1] = mfccs_feature_set(fpath1_1, fpath1_2, fpath1_3, params);
[overall_accuracy1, per_class_accuracy1] = knnclassification(train_featureset, train_labelset, test_features1);



%% 2nd test data

fpath2_1 = 'test_data/Again/Again_Drum.wav';
fpath2_2 = 'test_data/Again/Again_Guitar.wav';
fpath2_3 = 'test_data/Again/Again_GuitarDrum.wav';

[test_features2, test_labels2] = mfccs_feature_set(fpath2_1, fpath2_2, fpath2_3, params);
[overall_accuracy2, per_class_accuracy2] = knnclassification(train_featureset, train_labelset, test_features2);





%% 3

fpath3_1 = 'test_data/Beatles/Beatles_Drum.wav';
fpath3_2 = 'test_data/Beatles/Beatles_Guitar.wav';
fpath3_3 = 'test_data/Beatles/Beatles_GuitarDrum.wav';

[test_features3, test_labels3] = mfccs_feature_set(fpath3_1, fpath3_2, fpath3_3, params);
[overall_accuracy3, per_class_accuracy3] = knnclassification(train_featureset, train_labelset, test_features3);




%% 4

fpath4_1 = 'test_data/Curfews/Curfews_Drum.wav';
fpath4_2 = 'test_data/Curfews/Curfews_Guitar.wav';
fpath4_3 = 'test_data/Curfews/Curfews_GuitarDrum.wav';

[test_features4, test_labels4] = mfccs_feature_set(fpath4_1, fpath4_2, fpath4_3, params);
[overall_accuracy4, per_class_accuracy4] = knnclassification(train_featureset, train_labelset, test_features4);



%% 5


fpath5_1 = 'test_data/DieForUs/DieForUs_Drum.wav';
fpath5_2 = 'test_data/DieForUs/DieForUs_Guitar.wav';
fpath5_3 = 'test_data/DieForUs/DieForUs_GuitarDrum.wav';

[test_features5, test_labels5] = mfccs_feature_set(fpath5_1, fpath5_2, fpath5_3, params);
[overall_accuracy5, per_class_accuracy5] = knnclassification(train_featureset, train_labelset, test_features5);

%% 6

fpath6_1 = 'test_data/Emergency/Emergency_Drum.wav';
fpath6_2 = 'test_data/Emergency/Emergency_Guitar.wav';
fpath6_3 = 'test_data/Emergency/Emergency_GuitarDrum.wav';

[test_features6, test_labels6] = mfccs_feature_set(fpath6_1, fpath6_2, fpath6_3, params);
[overall_accuracy6, per_class_accuracy6] = knnclassification(train_featureset, train_labelset, test_features6);



%% 7

fpath7_1 = 'test_data/Flying/Flying_Drum.wav';
fpath7_2 = 'test_data/Flying/Flying_Guitar.wav';
fpath7_3 = 'test_data/Flying/Flying_GuitarDrum.wav';

[test_features7, test_labels7] = mfccs_feature_set(fpath7_1, fpath7_2, fpath7_3, params);
[overall_accuracy7, per_class_accuracy7] = knnclassification(train_featureset, train_labelset, test_features7);


%% 8

fpath8_1 = 'test_data/Grunge/Grunge_Drum.wav';
fpath8_2 = 'test_data/Grunge/Grunge_Guitar.wav';
fpath8_3 = 'test_data/Grunge/Grunge_GuitarDrum.wav';

[test_features8, test_labels8] = mfccs_feature_set(fpath8_1, fpath8_2, fpath8_3, params);
[overall_accuracy8, per_class_accuracy8] = knnclassification(train_featureset, train_labelset, test_features8);



%% 9

fpath9_1 = 'test_data/Hendrix/Hendrix_Drum.wav';
fpath9_2 = 'test_data/Hendrix/Hendrix_Guitar.wav';
fpath9_3 = 'test_data/Hendrix/Hendrix_GuitarDrum.wav';

[test_features9, test_labels9] = mfccs_feature_set(fpath9_1, fpath9_2, fpath9_3, params);
[overall_accuracy9, per_class_accuracy9] = knnclassification(train_featureset, train_labelset, test_features9);



%% 10

fpath10_1 = 'test_data/HighHorse/HighHorse_Drum.wav';
fpath10_2 = 'test_data/HighHorse/HighHorse_Guitar.wav';
fpath10_3 = 'test_data/HighHorse/HighHorse_GuitarDrum.wav';

[test_features10, test_labels10] = mfccs_feature_set(fpath10_1, fpath10_2, fpath10_3, params);
[overall_accuracy10, per_class_accuracy10] = knnclassification(train_featureset, train_labelset, test_features10);


%% 11

fpath11_1 = 'test_data/Lolita/Lolita_Drum.wav';
fpath11_2 = 'test_data/Lolita/Lolita_Guitar.wav';
fpath11_3 = 'test_data/Lolita/Lolita_GuitarDrum.wav';

[test_features11, test_labels11] = mfccs_feature_set(fpath11_1, fpath11_2, fpath11_3, params);
[overall_accuracy11, per_class_accuracy11] = knnclassification(train_featureset, train_labelset, test_features11);


%% 12

fpath12_1 = 'test_data/OldTree/OldTree_Drum.wav';
fpath12_2 = 'test_data/OldTree/OldTree_Guitar.wav';
fpath12_3 = 'test_data/OldTree/OldTree_GuitarDrum.wav';

[test_features12, test_labels12] = mfccs_feature_set(fpath12_1, fpath12_2, fpath12_3, params);
[overall_accuracy12, per_class_accuracy12] = knnclassification(train_featureset, train_labelset, test_features12);


%% 13

fpath13_1 = 'test_data/OurFutureFaces/OurFutureFaces_Drum.wav';
fpath13_2 = 'test_data/OurFutureFaces/OurFutureFaces_Guitar.wav';
fpath13_3 = 'test_data/OurFutureFaces/OurFutureFaces_GuitarDrum.wav';

[test_features13, test_labels13] = mfccs_feature_set(fpath13_1, fpath13_2, fpath13_3, params);
[overall_accuracy13, per_class_accuracy13] = knnclassification(train_featureset, train_labelset, test_features13);


%% 14

fpath14_1 = 'test_data/Phantom/Phantom_Drum.wav';
fpath14_2 = 'test_data/Phantom/Phantom_Guitar.wav';
fpath14_3 = 'test_data/Phantom/Phantom_GuitarDrum.wav';

[test_features14, test_labels14] = mfccs_feature_set(fpath14_1, fpath14_2, fpath14_3, params);
[overall_accuracy14, per_class_accuracy14] = knnclassification(train_featureset, train_labelset, test_features14);


%% 15

fpath15_1 = 'test_data/Punk/Punk_Drum.wav';
fpath15_2 = 'test_data/Punk/Punk_Guitar.wav';
fpath15_3 = 'test_data/Punk/Punk_GuitarDrum.wav';

[test_features15, test_labels15] = mfccs_feature_set(fpath15_1, fpath15_2, fpath15_3, params);
[overall_accuracy15, per_class_accuracy15] = knnclassification(train_featureset, train_labelset, test_features15);


%% 16

fpath16_1 = 'test_data/Rock/Rock_Drum.wav';
fpath16_2 = 'test_data/Rock/Rock_Guitar.wav';
fpath16_3 = 'test_data/Rock/Rock_GuitarDrum.wav';

[test_features16, test_labels16] = mfccs_feature_set(fpath16_1, fpath16_2, fpath16_3, params);
[overall_accuracy16, per_class_accuracy16] = knnclassification(train_featureset, train_labelset, test_features16);


%% 17

fpath17_1 = 'test_data/Rockabilly/Rockabilly_Drum.wav';
fpath17_2 = 'test_data/Rockabilly/Rockabilly_Guitar.wav';
fpath17_3 = 'test_data/Rockabilly/Rockabilly_GuitarDrum.wav';

[test_features17, test_labels17] = mfccs_feature_set(fpath17_1, fpath17_2, fpath17_3, params);
[overall_accuracy17, per_class_accuracy17] = knnclassification(train_featureset, train_labelset, test_features17);


%% 18


fpath18_1 = 'test_data/Vermont/Vermont_Drum.wav';
fpath18_2 = 'test_data/Vermont/Vermont_Guitar.wav';
fpath18_3 = 'test_data/Vermont/Vermont_GuitarDrum.wav';

[test_features18, test_labels18] = mfccs_feature_set(fpath18_1, fpath18_2, fpath18_3, params);
[overall_accuracy18, per_class_accuracy18] = knnclassification(train_featureset, train_labelset, test_features18);


%% 19

fpath19_1 = 'test_data/Waterduct/Waterduct_Drum.wav';
fpath19_2 = 'test_data/Waterduct/Waterduct_Guitar.wav';
fpath19_3 = 'test_data/Waterduct/Waterduct_Guitar.wav';

[test_features19, test_labels19] = mfccs_feature_set(fpath19_1, fpath19_2, fpath19_3, params);
[overall_accuracy19, per_class_accuracy19] = knnclassification(train_featureset, train_labelset, test_features19);


%% 20

fpath20_1 = 'test_data/Zeppelin/Zeppelin_Drum.wav';
fpath20_2 = 'test_data/Zeppelin/Zeppelin_Guitar.wav';
fpath20_3 = 'test_data/Zeppelin/Zeppelin_GuitarDrum.wav';

[test_features20, test_labels20] = mfccs_feature_set(fpath20_1, fpath20_2, fpath20_3, params);
[overall_accuracy20, per_class_accuracy20] = knnclassification(train_featureset, train_labelset, test_features20);


