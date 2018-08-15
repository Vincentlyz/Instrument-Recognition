function [overall_accuracy, per_class_accuracy] = knnclassification(train_features, train_labels, test_features);
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


% make the matrices the same size first
[Mtr,Ntr] = size(train_features);
[Mte,Nte] = size(test_features);
[Mtrlab, Ntrlab] = size(train_labels);

% determine which one is bigger
if Ntr <= Nte;
    test_features = test_features(1:Mtr,1:Ntr);
elseif Ntr >= Nte;
    train_features = train_features(1:Mte,1:Nte);
    train_labels = train_labels(1:Mtrlab,1:Nte);
end



train_features = train_features';
train_labels = train_labels';
mdl = fitcknn(train_features,train_labels);
test_features = test_features';
predicted_label = predict(mdl,test_features);


% similarity?

% correct labeling : calculate how many labels are matching in each class
class1 = sum(train_labels==1);
class2 = sum(train_labels==2);
class3 = sum(train_labels==3);

% false labeling : when it's not the same class.
not_class1 = sum(train_labels==1 & (predicted_label==2 | predicted_label==3));
not_class2 = sum(train_labels==2 & (predicted_label==1 | predicted_label==3));
not_class3 = sum(train_labels==3 & (predicted_label==1 | predicted_label==2));

% overall = 100% - (no/yes)
overall_accuracy = 1 - (not_class1 + not_class2 + not_class3)/(class1+class2+class3);

% get accuracy of every class
accuracy_class1 = 1-not_class1/class1;
accuracy_class2 = 1-not_class2/class2;
accuracy_class3 = 1-not_class3/class3;

per_class_accuracy = [accuracy_class1, accuracy_class2, accuracy_class3]; 







end

