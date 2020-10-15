clear;

list=dir('*');
list=list(3:end);
for j=1:length(list)
    if(list(j).isdir())
       ll=dir(['./'  list(j).name '/*.wav']);
       for m=1:length(ll)
          [x,fs]=audioread(['./'  list(j).name '/' ll(m).name]); 
          x=x*0.95./max(abs(x));
          audiowrite(['./'  list(j).name '/' ll(m).name],x,fs);
       end
        
    end
    disp(j);
end