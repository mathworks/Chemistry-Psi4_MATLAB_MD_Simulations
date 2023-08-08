function [Eng_Total] = Get_Total_Energy(psi4_output)

A = regexp(fileread(psi4_output),'\n','split');
whichlineGeom = find(contains(A,'Geometry (in Angstrom),'));
whichlineEng = find(contains(A,'@DF-RHF Final Energy'));

% This Part stores the Total Energies in Each Time Step 

fid=fopen(psi4_output,'rt');

clear icount;
clear step;

        step = whichlineEng(1);
        icount = step-1; 
        Engs = textscan(fid,'%s',1,'delimiter','\n', 'headerlines',icount);
        Engcellvect = [Engs{:}];
        Engchar = cell2mat(Engcellvect);
        Engchar = strsplit(Engchar,':  ');
        Eng_Total = str2double(Engchar(2));

    fclose(fid);

 end
