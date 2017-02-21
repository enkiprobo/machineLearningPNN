function p = createPrototype(Xtrain, ytrain)
  %this function will return prototype of each class [0,9]
  
  p =[];
  for i=1:10,
      p = [p;sum(Xtrain(find(ytrain == i-1),:))/length(find(ytrain == i-1))];
  end