function [GeomMat] = Get_Atomic_Geometries(psi4_output,numatoms)

A = regexp(fileread(psi4_output),'\n','split');
whichlineGeom = find(contains(A,'Geometry (in Angstrom),'));
whichlineEng = find(contains(A,'@DF-RHF Final Energy'));

% This Part stores the Atomic Geometries (xyz coordinates) 

fid=fopen(psi4_output,'rt');

clear icount;
clear step;

        step = whichlineGeom(1);
    for i = 3:numatoms+2
        icount = step+i; 
        Geoms = textscan(fid,'%s',1,'delimiter','\n', 'headerlines',icount);
        Geomcellvect = [Geoms{:}];
        Geomchar = cell2mat(Geomcellvect);
        Geomchar = strsplit(Geomchar);
        for j=2:4
           GeomMat(i,j) = str2double(Geomchar{j});
        end   
        fseek(fid,0,'bof');
    end
        GeomMat(1,:) = [];
        GeomMat(1,:) = [];
        GeomMat(:,1) = [];

       
    fclose(fid);


 end
