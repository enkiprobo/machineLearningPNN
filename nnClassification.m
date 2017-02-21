function predicted = nnClassification(data, Xtrain, ytrain)

    euclidlist = [];
    
    for i=1:length(Xtrain(:,1))
        euclid = norm(data-Xtrain(i,:));
        euclidlist = [euclidlist; euclid ytrain(i)];
    end
    
    [M,I] = min(euclidlist);
    
    predicted = euclidlist(I(1),2);