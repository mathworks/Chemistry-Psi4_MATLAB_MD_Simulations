
function [Geom_mat] = Atomic_Coordinates(filename,numatoms)

% This Part stores the Atomic Geometries (xyz coordinates) 
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
        for j=2:4
           Geom_mat(icount,j) = str2double(Geomchar{j});
        end   
        fseek(fid,0,'bof');
    end
        Geom_mat(1,:) = [];
        Geom_mat(:,1) = [];


    fclose(fid);

end