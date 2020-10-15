clear;

files=@(filename) ['<td><a onclick="this.firstChild.play()"><audio><source src="./PDSFM_files/webfiles/' filename '"></audio><img width="30" alt="" src="./PDSFM_files/audio.gif" height="30"></a></td>'];

fid=fopen('textfile','w');

list=dir('./ORG/*.wav');

for i=1:10
    fprintf(fid,'<tr>\n');
    fprintf(fid,'<td>%d</td>\n',i);
    fprintf(fid,'%s\n',files(['ORG/' list(i).name]));
    fprintf(fid,'%s\n',files(['WORLD/' list(i).name]));
    fprintf(fid,'%s\n',files(['WORLD_LP/' list(i).name]));
    fprintf(fid,'%s\n',files(['PSFM/' list(i).name]));
    fprintf(fid,'%s\n',files(['PSFM_wAP/' list(i).name]));
    fprintf(fid,'</tr>\n');
end

