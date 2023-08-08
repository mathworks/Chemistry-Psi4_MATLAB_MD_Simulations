function [xyzfile] = ZRotate_Molecule(filename,xyzpath,numatoms,theta,idx)

[p,f]=fileparts(filename);
filenameout=fullfile(p,f);
theta_label = abs(theta);

[Geom_mat_original] = Atomic_Coordinates(filename,numatoms);
[AtomSymbol] = Atomic_Symbols(filename,numatoms);
Geom_mat_rotated = Geom_mat_original;
% The following atoms will be rotated

numidx = length(idx);
for i = 1 : numidx
  idxatm = idx(i);
  Geom_mat_rotated(idxatm,:) = rotz(theta)*Geom_mat_original(idxatm,:)';
end
    Geom_mat_rotated = round(Geom_mat_rotated,6);
    outputCell = [cellstr(AtomSymbol),num2cell(Geom_mat_rotated)];
    writecell(outputCell,'data.dat','Delimiter','tab');

  
secondline='';
dlmwrite('data.dat',[secondline 13 10 fileread('data.dat')],'delimiter','');

firstline=int2str(numatoms);
xyzfile = sprintf('input_%d.xyz',theta_label);
%dlmwrite(xyzfile,[firstline 13 10 fileread('data.dat')],'delimiter','');

dlmwrite(fullfile(xyzpath,xyzfile),[firstline 13 10 fileread('data.dat')],'delimiter','');
% Mac users: Replace the above line with the following:
% writematrix([firstline 13 10 fileread('data.dat')], fullfile(xyzpath,xyzfile), "Delimiter",' ', "FileType","text")


%disp([F,' is saved successfully.' ]);

end