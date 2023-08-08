
function [numatoms] = numatoms_from_xyz(filename)

fid=fopen(filename,'rt');

        icount = 0;
        Grads = textscan(fid,'%s',1,'delimiter','\n', 'headerlines',icount);
        Gradcellvect = [Grads{:}];
        Gradchar = cell2mat(Gradcellvect);
        Gradchar = strsplit(Gradchar);
        numatoms = str2double(Gradchar{1});
end