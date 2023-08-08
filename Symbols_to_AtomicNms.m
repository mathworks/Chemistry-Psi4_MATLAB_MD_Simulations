function [nodesym] = Symbols_to_AtomicNms(symbs,NumAtm)
%Convert atomic numbers to symbols

nodesym = zeros(NumAtm,1);
 for i = 1:numel(nodesym)+2
     if symbs(i) == 'H'
        nodesym(i) = 1;
     elseif symbs(i) == 'He'
            nodesym(i) = 2;
     elseif symbs(i) == 'Li'
            nodesym(i) = 3;
     elseif symbs(i) == 'Be'
            nodesym(i) = 4;            
     elseif symbs(i) == 'B'
            nodesym(i) = 5;
     elseif symbs(i) == 'C'
            nodesym(i) = 6;
     elseif symbs(i) == 'N'
            nodesym(i) = 7;
     elseif symbs(i) == 'O'
            nodesym(i) = 8;
     elseif symbs(i) == 'F'
            nodesym(i) = 9;
      elseif symbs(i) == 'Ne'
            nodesym(i) = 10;           
     elseif symbs(i) == 'Na'
            nodesym(i) = 11;
     elseif symbs(i) == 'Mg'
            nodesym(i) = 12;
     elseif symbs(i) == 'Al'
            nodesym(i) = 13;
     elseif symbs(i) == 'Si'
            nodesym(i) = 14;
     elseif symbs(i) == 'P'
            nodesym(i) = 15;
     elseif symbs(i) == 'S'
            nodesym(i) = 16;
     elseif symbs(i) == 'Cl'
            nodesym(i) = 17;
     elseif symbs(i) == 'Ar'
            nodesym(i) = 18;
     elseif symbs(i) == 'K'
            nodesym(i) = 19;
     elseif symbs(i) == 'Ca'
            nodesym(i) = 20;
     elseif symbs(i) == 'Sc'
            nodesym(i) = 21;
     elseif symbs(i) == 'Ti'
            nodesym(i) = 22;
     elseif symbs(i) == 'V'
            nodesym(i) = 23;
     elseif symbs(i) == 'Cr'
            nodesym(i) = 24;
     elseif symbs(i) == 'Mn'
            nodesym(i) = 25;
     elseif symbs(i) == 'Fe'
            nodesym(i) = 26;
     elseif symbs(i) == 'Co'
            nodesym(i) = 27;            
     elseif symbs(i) == 'Ni'
            nodesym(i) = 28;
     elseif symbs(i) == 'Cu'
            nodesym(i) = 29;
     elseif symbs(i) == 'Zn'
            nodesym(i) = 30;
     elseif symbs(i) == 'Ga'
            nodesym(i) = 31;
     elseif symbs(i) == 'Ge'
            nodesym(i) = 32;
     elseif symbs(i) == 'As'
            nodesym(i) = 33;
     elseif symbs(i) == 'Se'
            nodesym(i) = 34;
     elseif symbs(i) == 'Br'
            nodesym(i) = 35;      
     elseif symbs(i) == 'Kr'
            nodesym(i) = 36;
     elseif symbs(i) == 'Rb'
            nodesym(i) = 37;
     elseif symbs(i) == 'Sr'
            nodesym(i) = 38;
     elseif symbs(i) == 'Y'
            nodesym(i) = 39;        
     elseif symbs(i) == 'Zr'
            nodesym(i) = 40;            
     elseif symbs(i) == 'Nb'
            nodesym(i) = 41;
     elseif symbs(i) == 'Mo'
            nodesym(i) = 42;
     elseif symbs(i) == 'Tc'
            nodesym(i) = 43;
     elseif symbs(i) == 'Ru'
            nodesym(i) = 44;
     elseif symbs(i) == 'Rh'
            nodesym(i) = 45;
     elseif symbs(i) == 'Pd'
            nodesym(i) = 46;
     elseif symbs(i) == 'Ag'
            nodesym(i) = 47;
     elseif symbs(i) == 'Cd'
            nodesym(i) = 48;
     elseif symbs(i) == 'In'
            nodesym(i) = 49;
     elseif symbs(i) == 'Sn'
            nodesym(i) = 50;
     elseif symbs(i) == 'Sb'
            nodesym(i) = 51;
     elseif symbs(i) == 'Te'
            nodesym(i) = 52;
     elseif symbs(i) == 'I'
            nodesym(i) = 53;           
     elseif symbs(i) == 'Xe'
            nodesym(i) = 54;
     elseif symbs(i) == 'Cs'
            nodesym(i) = 55;
     elseif symbs(i) == 'Ba'
            nodesym(i) = 56;
     elseif symbs(i) == 'La'
            nodesym(i) = 57;
     elseif symbs(i) == 'Ce'
            nodesym(i) = 58;
     elseif symbs(i) == 'Pr'
            nodesym(i) = 59;
     elseif symbs(i) == 'Nd'
            nodesym(i) = 60;
     elseif symbs(i) == 'Pm'
            nodesym(i) = 61;
     elseif symbs(i) == 'Sm'
            nodesym(i) = 62;
     elseif symbs(i) == 'Eu'
            nodesym(i) = 63;
     elseif symbs(i) == 'Gd'
            nodesym(i) = 64;
     elseif symbs(i) == 'Tb'
            nodesym(i) = 65;
     elseif symbs(i) == 'Dy'
            nodesym(i) = 66;
     elseif symbs(i) == 'Ho'
            nodesym(i) = 67;
     elseif symbs(i) == 'Er'
            nodesym(i) = 68;
     elseif symbs(i) == 'Tm'
            nodesym(i) = 69;           
     elseif symbs(i) == 'Yb'
            nodesym(i) = 70;
     elseif symbs(i) == 'Lu'
            nodesym(i) = 71;
     elseif symbs(i) == 'Hf'
            nodesym(i) = 72;
     elseif symbs(i) == 'Ta'
            nodesym(i) = 73;
     elseif symbs(i) == 'W'
            nodesym(i) = 74;
     elseif symbs(i) == 'Re'
            nodesym(i) = 75;
     elseif symbs(i) == 'Os'
            nodesym(i) = 76;           
     elseif symbs(i) == 'Ir'
            nodesym(i) = 77;
     elseif symbs(i) == 'Pt'
            nodesym(i) = 78;
     elseif symbs(i) == 'Au'
            nodesym(i) = 79;
     elseif symbs(i) == 'Hg'
            nodesym(i) = 80;
     elseif symbs(i) == 'Tl'
            nodesym(i) = 81;
     elseif symbs(i) == 'Pb'
            nodesym(i) = 82;            
     elseif symbs(i) == 'Bi'
            nodesym(i) = 83;
     elseif symbs(i) == 'Po'
            nodesym(i) = 84;
     elseif symbs(i) == 'At'
            nodesym(i) = 85;
     elseif symbs(i) == 'Rn'
            nodesym(i) = 86;       
     elseif symbs(i) == 'Fr'
            nodesym(i) = 87;
     elseif symbs(i) == 'Ra'
            nodesym(i) = 88;
     elseif symbs(i) == 'Ac'
            nodesym(i) = 89;
     elseif symbs(i) == 'Th'
            nodesym(i) = 90;
     elseif symbs(i) == 'Pa'
            nodesym(i) = 91;
     elseif symbs(i) == 'U'
            nodesym(i) = 92;
     elseif symbs(i) == 'Np'
            nodesym(i) = 93;
     elseif symbs(i) == 'Pu'
            nodesym(i) = 94;
     elseif symbs(i) == 'Am'
            nodesym(i) = 95;
     elseif symbs(i) == 'Cm'
            nodesym(i) = 96;
     elseif symbs(i) == 'Bk'
            nodesym(i) = 97;
     elseif symbs(i) == 'Cf'
            nodesym(i) = 98;
     elseif symbs(i) == 'Es'
            nodesym(i) = 99;
     elseif symbs(i) == 'Fm'
            nodesym(i) = 100;
     elseif symbs(i) == 'Md'
            nodesym(i) = 101;
     elseif symbs(i) == 'No'
            nodesym(i) = 102;
     elseif symbs(i) == 'Lr'
            nodesym(i) = 103;
     elseif symbs(i) == 'Rf'
            nodesym(i) = 104;
     elseif symbs(i) == 'Db'
            nodesym(i) = 105;
     elseif symbs(i) == 'Sg'
            nodesym(i) = 106;
     elseif symbs(i) == 'Bh'
            nodesym(i) = 107;
     elseif symbs(i) == 'Hs'
            nodesym(i) = 108;
     elseif symbs(i) == 'Mt'
            nodesym(i) = 109;
     elseif symbs(i) == 'Ds'
            nodesym(i) = 110;
     elseif symbs(i) == 'Rg'
            nodesym(i) = 111;
     elseif symbs(i) == 'Cn'
            nodesym(i) = 112;
     elseif symbs(i) == 'Nh'
            nodesym(i) = 113; 
     elseif symbs(i) == 'Fl'
            nodesym(i) = 114;
     elseif symbs(i) == 'Mc'
            nodesym(i) = 115;
     elseif symbs(i) == 'Lv'
            nodesym(i) = 116;
     elseif symbs(i) == 'Ts'
            nodesym(i) = 117;
     elseif symbs(i) == 'Og'
            nodesym(i) = 118;      
     end
 end
%disp(symbols)