%script;
1;
function [cellArray] = f_avgdist(fname)
  [n,t,r]=xlsread(fname);
  dis = mean(n);
  for i=2:8
    cellArray{1,i-1}=t{i,1};
    cellArray{2,i-1}=dis(i-1);
  endfor  
endfunction
f_avgdist('dist_1.xlsx')