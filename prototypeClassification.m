function predicted = prototypeClassification(data, p)
    %this function will return predicted class of datatest
    
    euclidlist = [];
    
    for i=1:10
        euclid = norm(data-p(i,:));
        euclidlist = [euclidlist; euclid i-1];
    end
    
    [M,I] = min(euclidlist);
    
    predicted = euclidlist(I(1),2);