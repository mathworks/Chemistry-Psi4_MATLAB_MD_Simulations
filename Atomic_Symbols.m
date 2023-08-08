
function [AtomSymbol] = Atomic_Symbols(filename,numatoms)

% This Part stores the Atomic Symbols 
    [p,f]=fileparts(filename);
    filenameout=fullfile(p,f);
    filexyz = [filenameout,'.xyz'];
    fid=fopen(filexyz,'rt');

clear icount;

    for icount = 2:numatoms+1
        Geoms = textscan(fid,'%s',1,'delimiter','\n', 'headerlines',icount);
        Geomcellvect = [Geoms{:}];
        Geomchar = cell2mat(Geomcellvect);
        Geomchar = strsplit(Geomchar);
        AtomSymbol(icount,1) = Geomchar{1};
        fseek(fid,0,'bof');
    end
       AtomSymbol(1,:) = [];
    fclose(fid);


end