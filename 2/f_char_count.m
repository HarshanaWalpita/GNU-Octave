function cresult = f_char_count(fname,cquery)
  fid=fopen(fname,'rt');
  if fid<0
    cresult=-1
  endif  
  if ~ischar(cquery)
    cresult = -2
    return
  endif
  
  if fid>0
    cresult=zeros(1,length(cquery));
    do
      txt_line=fgets(fid);
      if ischar(txt_line)
        for i=1:length(cquery)
          for j=1:length(txt_line)
            if txt_line(j)==cquery(i)
              cresult(i)=cresult(i)+1;
            endif
          endfor
        endfor
      endif
    until ~ischar(txt_line)
  endif  
endfunction