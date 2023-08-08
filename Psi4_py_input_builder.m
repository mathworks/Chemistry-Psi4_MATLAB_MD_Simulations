function [pyfilename] = Psi4_py_input_builder(xyzfile,xyzpath,pypath,numatoms,basis,theory_level,theta)

filename = fullfile(xyzpath,xyzfile);
[p,f]=fileparts(filename);
filenameout=fullfile(p,f);

[Geom_mat] = Atomic_Coordinates(filename,numatoms);
[AtomSymbol] = Atomic_Symbols(filename,numatoms);

    Geom_mat = round(Geom_mat,6);
    outputCell = [cellstr(AtomSymbol),num2cell(Geom_mat)];
    writecell(outputCell,'data.dat','Delimiter','tab');

    
line3=['"""' ''];
dlmwrite('data.dat',[line3 13 10 fileread('data.dat')],'delimiter','');

line2=['mol = psi4.geometry' '('];
dlmwrite('data.dat',[line2 13 10 fileread('data.dat')],'delimiter','');

line1=['import psi4' ''];
dlmwrite('data.dat',[line1 13 10 fileread('data.dat')],'delimiter','');


filetemp = 'data.dat';
%read the file _and_ do the work of deleting extra empty lines.
new_text = regexprep( fileread(filetemp), '(\r?\n)(\r?\n)+', '$1');
%write the result to a new file
fid1 = fopen('psi4_input_top.dat', 'w');
fwrite(fid1, new_text);
fclose(fid1);


% End of the INPUT file
 fid2 = fopen('psi4_input_bottom.dat','wt');
 fprintf(fid2, '""")\n');
 fprintf(fid2, '\n');
 fprintf(fid2, 'psi4.core.set_output_file(''Psi4_Output.dat'' , False)');
 fprintf(fid2, '\n');
 fprintf(fid2, ['psi4.energy("' theory_level '/' basis '")\n']);
 fclose(fid2);


system('copy /b psi4_input_top.dat+psi4_input_bottom.dat psi4_input.py');
% for Mac users, replace the above line with the following:
%       system('cat psi4_input_top.dat psi4_input_bottom.dat > psi4_input.py');

pyfilename = 'psi4_input.py'; 

% Use the follwoing steps if you want to save all the .py files in a
% separate folder

%    theta_label = abs(theta);
%    pyfilename = sprintf('input_%d.py',theta_label);
%    thisFileName = 'psi4_input.py';
%    inputFullFileName = fullfile(pwd, thisFileName);
%    outputFullFileName = fullfile(pypath, pyfilename);

%    copyfile(inputFullFileName, outputFullFileName);



delete data.dat;
delete psi4_input_top.dat;
delete psi4_input_bottom.dat;


 % disp(['psi4_input.py ',' is saved successfully.' ]);

end