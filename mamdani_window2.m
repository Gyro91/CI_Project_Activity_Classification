
load MamdaniAllvsAll
load MamdaniA1vsAll
load MamdaniA2vsAll
load MamdaniA3vsAll
load MamdaniA4vsAll
load feat_temp

features_raw = feat_temp;

f1 = 4;
f2 = 5;
f3 = 11;
f4 = 17;

 d1 = cell2mat(features_raw{f1,1}(2,1));
 d2 = cell2mat(features_raw{f2,1}(2,1));
 d3 = cell2mat(features_raw{f3,1}(2,1));
 d4 = cell2mat(features_raw{f4,1}(2,1));
 
start = 1;
fine = 80;

%% Mamdani Classifier AllvsAll 
 %  Test Window 2 Sensor 1
  
 
TP = 0;
 for i = start:fine
 
    input = [d1(1,i) d2(1,i) d3(1,i) d4(1,i)];      
 
    output1 = evalfis(input, MamdaniAllvsAll_WINDOW2);
    if (i >= 1 && i <=20)
        if output1 > 0 && output1 <=1
            TP = TP +1;
        end
    elseif (i >= 21 && i <=40)
        if output1 > 1 && output1 <=2
            TP = TP +1;
        end
    elseif (i >= 41 && i <=60)
         if output1 > 2 && output1 <=3
            TP = TP +1;
        end
    elseif (i >= 61 && i <=80)
           if output1 > 3 && output1 <=4
            TP = TP +1;
        end 
     end
   
    hold on;
 
    plot(i, output1, 'gx')
 
 end
 
 TPR_Mamdani_All_vs_All_WIN2 = TP / 80
 FNR_Mamdani_All_vs_All_WIN2 = 1 - TPR_Mamdani_All_vs_All_WIN2

%% Mamdani Classifier AlvsAll 
 %  Test Window 2 Sensor 1
 
 TP = 0;
 for i = start:fine
 
    input = [d1(1,i) d2(1,i) d3(1,i) d4(1,i)];       
 
    output1 = evalfis(input,MamdaniA1vsAll_WINDOW2);
    if (i >= 1 && i <=20)
        if output1 > 0 && output1 <=1
            TP = TP +1;
        end
    elseif (i >= 21 && i <=40)
        if output1 > 1 && output1 <=2
            TP = TP +1;
        end
    elseif (i >= 41 && i <=60)
         if output1 > 1 && output1 <=2
            TP = TP +1;
        end
    elseif (i >= 61 && i <=80)
           if output1 > 1 && output1 <=2
            TP = TP +1;
        end 
     end
   
    hold on;
 
    plot(i, output1, 'gx')
 
 end

 TPR_Mamdani_A1_vs_All_WIN3 = TP / 80
 FNR_Mamdani_A1_vs_All_WIN3 = 1 - TPR_Mamdani_A1_vs_All_WIN3
 
 %% Mamdani Classifier A2vsAll
 %  Test Window 2 Sensor 1
 
TP = 0;
 for i = start:fine
 
    input = [d1(1,i) d2(1,i) d3(1,i) d4(1,i)];       
 
    output1 = evalfis(input,MamdaniA2vsAll);
    if (i >= 1 && i <=20)
        if output1 > 0 && output1 <=1
            TP = TP +1;
        end
    elseif (i >= 21 && i <=40)
        if output1 > 1 && output1 <=2
            TP = TP +1;
        end
    elseif (i >= 41 && i <=60)
         if output1 > 0 && output1 <=1
            TP = TP +1;
        end
    elseif (i >= 61 && i <=80)
           if output1 > 0 && output1 <=1
            TP = TP +1;
        end 
     end
   
    hold on;
 
    plot(i, output1, 'gx')
 
 end
 
 TPR_Mamdani_A2_vs_All_WIN2 = TP / 80
 FNR_Mamdani_A2_vs_All_WIN2 = 1 - TPR_Mamdani_A2_vs_All_WIN2

 %% Mamdani Classifier A3vsAll
 %  Test Window 2 Sensor 1
 
 TP = 0;
 for i = start:fine
 
    input = [d1(1,i) d2(1,i) d3(1,i) d4(1,i)];       
 
    output1 = evalfis(input, MamdaniA3vsAll_WINDOW2);
    if (i >= 1 && i <=20)
        if output1 > 0 && output1 <=1
            TP = TP +1;
        end
    elseif (i >= 21 && i <=40)
        if output1 > 0 && output1 <=1
            TP = TP +1;
        end
    elseif (i >= 41 && i <=60)
         if output1 > 2 && output1 <=3
            TP = TP +1;
        end
    elseif (i >= 61 && i <=80)
           if output1 > 0 && output1 <=1
            TP = TP +1;
        end 
     end
   
    hold on;
 
    plot(i, output1, 'gx')
 
 end
 
 TPR_Mamdani_A3_vs_All_WIN2 = TP / 80
 FNR_Mamdani_A3_vs_All_WIN2 = 1 - TPR_Mamdani_A3_vs_All_WIN2
 
 
 %% Mamdani Classifier A4vsAll
 %  Test Window 2 Sensor 1
 
TP = 0;
 for i = start:fine
 
    input = [d1(1,i) d2(1,i) d3(1,i) d4(1,i)];       
 
    output1 = evalfis(input,MamdaniA4vsAll);
    if (i >= 1 && i <=20)
        if output1 > 0 && output1 <=1
            TP = TP +1;
        end
    elseif (i >= 21 && i <=40)
        if output1 > 0 && output1 <=1
            TP = TP +1;
        end
    elseif (i >= 41 && i <=60)
         if output1 > 0 && output1 <=1
            TP = TP +1;
        end
    elseif (i >= 61 && i <=80)
           if output1 > 3 && output1 <=4
            TP = TP +1;
        end 
     end
   
    hold on;
 
    plot(i, output1, 'gx')
 
 end
 
 TPR_Mamdani_A4_vs_All_WIN2 = TP / 80
 FNR_Mamdani_A4_vs_All_WIN2 = 1 - TPR_Mamdani_A4_vs_All_WIN2
 