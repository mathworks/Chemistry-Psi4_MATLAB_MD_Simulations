function Trajectory(xyzpath)

%    theta_label = abs(theta);
%    pyfilename = sprintf('input_%d.py',theta_label);

files=dir(fullfile(xyzpath, '*.xyz'));
fileout='trajectory.xyz';
fout=fopen(fileout,'w');
for cntfiles=1:length(files)
    fin = fullfile(xyzpath, sprintf('input_%d.xyz', cntfiles));
    Str  = fileread(fin);
    CStr = strsplit(Str, '\n');
    fprintf(fout, '%s\n', CStr{:});
end
fclose(fout);


filetemp = fileout;
%read the file _and_ do the work of deleting extra empty lines.
new_text = regexprep( fileread(filetemp), '(\r?\n)(\r?\n)+', '$1');
%write the result to a new file
fid1 = fopen('trajectory.xyz', 'w');
fwrite(fid1, new_text);
fclose(fid1);

end