%% A showcase of the ExemplarSVM Library 1.0

%Generate a training data set with class name 'circle'
data_set = esvm_generate_dataset(50,50,'circle');

%Learn an ensemble of ExemplarSVMs
%model = learnExemplarSVMs(data_set,'circle');
model = learnDalalTriggs(data_set,'circle');

%Create a held-out test-set
test_set = esvm_generate_dataset(200,200,'circle');

%Get detection boxes by applying model to test_set
boxes = applyModel(test_set, model);

%Get the AP curve by comparing against ground_truth
results = evaluateModel(test_set, boxes, model);

%Show the top detections on the test_set
showTopDetections(test_set, boxes, model);