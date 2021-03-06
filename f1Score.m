function [f1s TP FP FN TN]= f1Score(cM)
   %this function will return f1 score based on given confussion matrix
   
   %initiate the measure tools
   TP = zeros(10,1);
   FP = zeros(10,1);
   FN = zeros(10,1);
   TN = zeros(10,1);
   
   for i=1:10,
    TP(i) = cM(i,i);
    FP(i) = sum(cM(:,i))-TP(i);
    FN(i) = sum(cM(i,:))-TP(i);
    TN(i) = sum(sum(cM))-sum(FP)-sum(FN)-TP(i);
   end
   
   P = sum(TP)/(sum(TP)+sum(FP));
   R = sum(TP)/(sum(TP)+sum(FN));
   
   f1s = 2*P*R/(P+R);