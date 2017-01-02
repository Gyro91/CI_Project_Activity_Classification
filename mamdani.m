


features_raw = feat_temp;

f1 = 4;
f2 = 5;
f3 = 11;
f4 = 17;

df1 = horzcat(cell2mat(features_raw{f1,1}(1,2)), cell2mat(features_raw{f1,1}(1,3))) 
df2 = horzcat(cell2mat(features_raw{f2,1}(1,2)), cell2mat(features_raw{f2,1}(1,3))) 
df3 = horzcat(cell2mat(features_raw{f3,1}(1,2)), cell2mat(features_raw{f3,1}(1,3))) 
df4 = horzcat(cell2mat(features_raw{f4,1}(1,2)), cell2mat(features_raw{f4,1}(1,3))) 

%% prova
input = [df1;df2;df3;df4]';
 %%
 end_t = 10;
 start_t = 1;
 for i = 1: 4
     for j = start_t : end_t
         output_t(1,j) = i;
     end
     start_t = end_t
     end_t = end_t + 10
 end
 
 
 op1 = horzcat(output_t, output_t) 
 output = [op1;op1;op1;op1]';
 
 
 d1 = cell2mat(features_raw{f1,1}(1,1));
 d2 = cell2mat(features_raw{f2,1}(1,1));
 d3 = cell2mat(features_raw{f3,1}(1,1));
 d4 = cell2mat(features_raw{f4,1}(1,1));
 
start = 31
fine = start + 9
 for i = start:fine
 input = [d1(1,i) d2(1,i) d3(1,i) d4(1,i)]        
 
 output1 = evalfis(input,Mamdani2)
 
 hold on;
 
 plot(i, output1, 'gx')
 
 end
 