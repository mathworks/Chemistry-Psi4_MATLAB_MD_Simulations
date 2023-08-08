function [AtomicNums,AtomSymbols] = Get_Atomic_Numbers(psi4_output,numatoms)

A = regexp(fileread(psi4_output),'\n','split');
whichlineGeom = find(contains(A,'Geometry (in Angstrom),'));
whichlineEng = find(contains(A,'@DF-RHF Final Energy'));

% This Part stores the Atomic Numbers (from atomic Symbols) 
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
        AtomSymbols(i,1) = Geomchar{1};
        fseek(fid,0,'bof');
    end
        AtomicNums = Symbols_to_AtomicNms(AtomSymbols,numatoms);
        AtomicNums(1,:) = [];
        AtomicNums(1,:) = [];
        AtomSymbols(1,:) = [];
        AtomSymbols(1,:) = [];

    fclose(fid);


 end
