
% filename = 'SelfBoostExp_3108.dat'

% Import the data file
temp = importdata(filename);

% Prepare temporary data structures
textdataX = temp.textdata;
data = temp.data;


% Set highest acceptable RT
lowestRT = 200;

% Prepare the MAD highestRT
std_RT = std(data(data(:,2)==1,3));
mean_RT = mean(data(data(:,2)==1,3));
median_RT = median(data(data(:,2)==1,3));
mad_RT = mad(data(data(:,2)==1,3),1);
% Calculate the highestRT: highestRT = 1500;
highestRT = median_RT + 2.5 * mad_RT;
highestRT = 1500;


% Prepare some data structures
dataX = zeros(size(textdataX,1),3);

for i=1:size(textdataX,1)
    % Part 1: translate the labels into numbers
    if isequal(char(textdataX(i,8)),'You')==1
        dataX(i,1)=1;   % You = 1
    elseif isequal(char(textdataX(i,8)),'Neutral')==1
        dataX(i,1)=2;   % Neutral = 2
    elseif isequal(char(textdataX(i,8)),'AntiYou')==1
        dataX(i,1)=3;   % AntiYou = 3
    end
    
    % Part 2a: translate image files into numbers
    if isequal(char(textdataX(i,10)),'shape1.jpg')==1
        textdataX(i,4)=textdataX(i,17);   % You = 1
    elseif isequal(char(textdataX(i,10)),'shape2.jpg')==1
        textdataX(i,4)=textdataX(i,18);   % Neutral = 2
    elseif isequal(char(textdataX(i,10)),'shape3.jpg')==1
        textdataX(i,4)=textdataX(i,19);   % AntiYou = 3
    end
    % Part 2b: convert them into numbers
    if isequal(char(textdataX(i,4)),'You')==1
        dataX(i,2)=1;   % You = 1
    elseif isequal(char(textdataX(i,4)),'Neutral')==1
        dataX(i,2)=2;   % Neutral = 2
    elseif isequal(char(textdataX(i,4)),'AntiYou')==1
        dataX(i,2)=3;   % AntiYou = 3
    end
    
    % Filter the RTs
    if (data(i,3)>lowestRT)&&(data(i,3)<highestRT)
        dataX(i,3)=data(i,2);
    else
        dataX(i,3)=0;
    end
end


% Data in this way: 1.SubNum 2.Gender 3.Exp 4.Hand 5.TrialNum 6.LabelNUM 7.FaceNUM 8.ObjType 9.Acc 10.RT
data = [str2num(char(textdataX(:,1))) str2num(char(textdataX(:,13))) str2num(char(textdataX(:,2))) str2num(char(textdataX(:,3))) str2num(char(textdataX(:,5))) dataX(:,1:2) data dataX(:,3)];

% Correct pairs
data1_1 = data((data(:,6)==1)&(data(:,7)==1)&(data(:,11)==1),:);
data2_2 = data((data(:,6)==2)&(data(:,7)==2)&(data(:,11)==1),:);
data3_3 = data((data(:,6)==3)&(data(:,7)==3)&(data(:,11)==1),:);
results.(genvarname(filename(1:17))).Correct = [mean(data1_1(:,10)), mean(data2_2(:,10)), mean(data3_3(:,10)); size(data1_1(:,10),1)/30, size(data2_2(:,10),1)/30, size(data3_3(:,10),1)/30];
results.(genvarname(filename(1:17))).Correct

% Influence of the first stimulus (label)
data1_0 = data((data(:,6)==1)&(data(:,9)==1)&(data(:,11)==1),:);
data2_0 = data((data(:,6)==2)&(data(:,9)==1)&(data(:,11)==1),:);
data3_0 = data((data(:,6)==3)&(data(:,9)==1)&(data(:,11)==1),:);
results.(genvarname(filename(1:17))).FirstStimulus = [mean(data1_0(:,10)), mean(data2_0(:,10)), mean(data3_0(:,10)); size(data1_0(:,10),1)/90, size(data2_0(:,10),1)/90, size(data3_0(:,10),1)/90];
results.(genvarname(filename(1:17))).FirstStimulus

% Influence of the second stimulus (face)
data0_1 = data((data(:,7)==1)&(data(:,9)==1)&(data(:,11)==1),:);
data0_2 = data((data(:,7)==2)&(data(:,9)==1)&(data(:,11)==1),:);
data0_3 = data((data(:,7)==3)&(data(:,9)==1)&(data(:,11)==1),:);
results.(genvarname(filename(1:17))).SecondStimulus = [mean(data0_1(:,10)), mean(data0_2(:,10)), mean(data0_3(:,10)); size(data0_1(:,10),1)/90, size(data0_2(:,10),1)/90, size(data0_3(:,10),1)/90];
results.(genvarname(filename(1:17))).SecondStimulus

% MISMATCHING: Influence of the first stimulus (label)
data1_X = data((data(:,6)==1)&(data(:,7)==2|data(:,7)==3)&(data(:,9)==1)&(data(:,11)==1),:);
data2_X = data((data(:,6)==2)&(data(:,7)==1|data(:,7)==3)&(data(:,9)==1)&(data(:,11)==1),:);
data3_X = data((data(:,6)==3)&(data(:,7)==1|data(:,7)==2)&(data(:,9)==1)&(data(:,11)==1),:);
results.(genvarname(filename(1:17))).Mismatch_FirstStimulus = [mean(data1_X(:,10)), mean(data2_X(:,10)), mean(data3_X(:,10)); size(data1_X(:,10),1)/60, size(data2_X(:,10),1)/60, size(data3_X(:,10),1)/60];
results.(genvarname(filename(1:17))).Mismatch_FirstStimulus

% MISMATCHING: Influence of the second stimulus (face)
dataX_1 = data((data(:,7)==1)&(data(:,6)==2|data(:,6)==3)&(data(:,9)==1)&(data(:,11)==1),:);
dataX_2 = data((data(:,7)==2)&(data(:,6)==1|data(:,6)==3)&(data(:,9)==1)&(data(:,11)==1),:);
dataX_3 = data((data(:,7)==3)&(data(:,6)==1|data(:,6)==2)&(data(:,9)==1)&(data(:,11)==1),:);
results.(genvarname(filename(1:17))).Mismatch_SecondStimulus = [mean(dataX_1(:,10)), mean(dataX_2(:,10)), mean(dataX_3(:,10)); size(dataX_1(:,10),1)/60, size(dataX_2(:,10),1)/60, size(dataX_3(:,10),1)/60];
results.(genvarname(filename(1:17))).Mismatch_SecondStimulus

% ALL_COMBINATIONS: All combinations of cue and target
data1_1 = data((data(:,6)==1)&(data(:,7)==1)&(data(:,11)==1),:);
data1_2 = data((data(:,6)==1)&(data(:,7)==2)&(data(:,11)==1),:);
data1_3 = data((data(:,6)==1)&(data(:,7)==3)&(data(:,11)==1),:);
data2_1 = data((data(:,6)==2)&(data(:,7)==1)&(data(:,11)==1),:);
data2_2 = data((data(:,6)==2)&(data(:,7)==2)&(data(:,11)==1),:);
data2_3 = data((data(:,6)==2)&(data(:,7)==3)&(data(:,11)==1),:);
data3_1 = data((data(:,6)==3)&(data(:,7)==1)&(data(:,11)==1),:);
data3_2 = data((data(:,6)==3)&(data(:,7)==2)&(data(:,11)==1),:);
data3_3 = data((data(:,6)==3)&(data(:,7)==3)&(data(:,11)==1),:);

results.(genvarname(filename(1:17))).All_Combinations = [...
    mean(data1_1(:,10)), mean(data1_2(:,10)), mean(data1_3(:,10)), mean(data2_1(:,10)), mean(data2_2(:,10)), mean(data2_3(:,10)), mean(data3_1(:,10)), mean(data3_2(:,10)), mean(data3_3(:,10));...
    size(data1_1(:,10),1)/30, size(data1_2(:,10),1)/30, size(data1_3(:,10),1)/30, size(data2_1(:,10),1)/30, size(data2_2(:,10),1)/30, size(data2_3(:,10),1)/30, size(data3_1(:,10),1)/30, size(data3_2(:,10),1)/30, size(data3_3(:,10),1)/30];
results.(genvarname(filename(1:17))).All_Combinations


results_export = [mean(data1_1(:,10)), mean(data2_2(:,10)), mean(data3_3(:,10)), mean(data1_0(:,10)), mean(data2_0(:,10)), mean(data3_0(:,10)), mean(data0_1(:,10)), mean(data0_2(:,10)), mean(data0_3(:,10)),...
    size(data1_1(:,10),1)/30, size(data2_2(:,10),1)/30, size(data3_3(:,10),1)/30, size(data1_0(:,10),1)/90, size(data2_0(:,10),1)/90, size(data3_0(:,10),1)/90, size(data0_1(:,10),1)/90, size(data0_2(:,10),1)/90, size(data0_3(:,10),1)/90,...
    mean(data1_X(:,10)), mean(data2_X(:,10)), mean(data3_X(:,10)), mean(dataX_1(:,10)), mean(dataX_2(:,10)), mean(dataX_3(:,10)),...
    size(data1_X(:,10),1)/60, size(data2_X(:,10),1)/60, size(data3_X(:,10),1)/60, size(dataX_1(:,10),1)/60, size(dataX_2(:,10),1)/60, size(dataX_3(:,10),1)/60,...
    mean(data1_1(:,10)), mean(data1_2(:,10)), mean(data1_3(:,10)), mean(data2_1(:,10)), mean(data2_2(:,10)), mean(data2_3(:,10)), mean(data3_1(:,10)), mean(data3_2(:,10)), mean(data3_3(:,10)),...
    size(data1_1(:,10),1)/30, size(data1_2(:,10),1)/30, size(data1_3(:,10),1)/30, size(data2_1(:,10),1)/30, size(data2_2(:,10),1)/30, size(data2_3(:,10),1)/30, size(data3_1(:,10),1)/30, size(data3_2(:,10),1)/30, size(data3_3(:,10),1)/30];
