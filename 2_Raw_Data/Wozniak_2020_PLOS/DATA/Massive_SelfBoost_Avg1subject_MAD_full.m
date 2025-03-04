% Massive_SelfBoost_Avg1subject_MAD
% A script calculating 

% Author: Mateusz Wo?niak
% Date: 13/02/2019

% List of participants:

Experiment = 3;     % Calculate averages for which experiment: 1, 2, or 3

% OUTPUT: results_massive 
% Explanation of columns in results_massive:
%   RT = reaction time, AC = accuracy, NM1 = non-matching 1 trials, NM2 =
%   non-matching 2 trials, 
%   In each column there are two numbers: first reflects which cue (label) was
%   used, and the second which target (face)
% The numbers correspond to different pairings: 
%       In Experiment 1: 1 - label "You" + stranger's face; 2&3 - strangers' names with strangers' faces
%       In Experiment 2: 1&2 - strangers' names with strangers' faces; 3 - stranger's name with participant's face
%       In Experiment 3: 1 - label "You" + stranger's face; 2 - stranger's name with stranger's face; 3 - stranger's name with participant's face
% 1. Participant number
% 2. RT_11
% 3. RT_22
% 4. RT_33
% 5. RT_10
% 6. RT_20
% 7. RT_30
% 8. RT_01
% 9. RT_02
% 10. RT_03
% 11. AC_11
% 12. AC_22
% 13. AC_33
% 14. AC_10
% 15. AC_20
% 16. AC_30
% 17. AC_01
% 18. AC_02
% 19. AC_03
% 20. RT_NM1_1
% 21. RT_NM1_2
% 22. RT_NM1_3
% 23. RT_NM2_1
% 24. RT_NM2_2
% 25. RT_NM2_3
% 26. AC_NM1_1
% 27. AC_NM1_2
% 28. AC_NM1_3
% 29. AC_NM2_1
% 30. AC_NM2_2
% 31. AC_NM2_3

switch Experiment
    case 1
        % Participants from Experiment 1
        participants_list = [1001 1002 1003 1004 1005 1006 1007 1008 1009 1010 1011 1012 ...
            1101 1102 1103 1104 1105 1106 1107 1108 1109 1110 1111 1112];
    case 2
        % Participants from Experiment 2
        participants_list = [2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 ...
            2101 2102 2103 2104 2105 2106 2107 2108 2109 2110 2111 2112];
    case 3
        % Participants from Experiment 3
        participants_list = [3001 3002 3003 3004 3005 3006 3007 3008 3009 3010 3011 3012 ...
            3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112];
end


% Prepare the output file:
results_massive = zeros(size(participants_list,2),49);

% run the script:
for j = 1:size(participants_list,2)
    filename = ['SelfBoostExp_',num2str(participants_list(j)),'.dat'];
    SelfBoost_Avg1subject_MAD_full
    results_massive(j,:) = [participants_list(j) results_export];
end