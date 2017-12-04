%Inclass 22


%GB comments
1 50 Final graphs are all the same graph but just different sections. Please see this script to directly address the problem. 
figure; hold on; 
ku = 0; 
for kb = 0:0.05:5
    polycoeff = [1, 1-kb, ku] 
    rts = roots(polycoeff); 
    rts = rts(imag(rts)==0); 
    plot(kb*ones(length(rts),1),rts,'r.');
end 
title('n =1')
 
figure; hold on;  
ku = 0; 
for kb = 0:0.05:5
    polycoeff = [1, -kb,0,0,1, ku] 
    rts = roots(polycoeff); 
    rts = rts(imag(rts)==0); 
    plot(kb*ones(length(rts),1),rts,'r.');
end 
title('n =4')
hold off 
 
figure; hold on;  
ku = 0; 
for kb = 0:0.05:5
    polycoeff = [1, -kb,0,0,0,0,0,0,1, ku] 
    rts = roots(polycoeff); 
    rts = rts(imag(rts)==0); 
    plot(kb*ones(length(rts),1),rts,'r.');
end 
title('n =8')
hold off 

2 80. A bit closer but still incorrect. Please see below
figure; hold on; 
kb = 0; 
for ku = 0:0.05:5
    polycoeff = [1, -ku, +1, -kb] 
    rts = roots(polycoeff); 
    rts = rts(imag(rts)==0); 
    plot(ku*ones(length(rts),1),rts,'r.');
end 
title('n =2')

overall 65

%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results. 

%x^3-Kb(x^2)+x-Ku=0


figure (3); hold on;
kb=4;
for ku=-4:0.05:16
    polycoeff=[1 -kb 1 -ku];
    rts=roots(polycoeff);
    rts=rts(imag(rts)==0);
    plot(ku*ones(length(rts),1),rts,'r.');
end
hold off;

figure (4); hold on;
kb=4;
for ku=0:0.05:16
    polycoeff=[1 -kb 1 -ku];
    rts=roots(polycoeff);
    rts=rts(imag(rts)==0);
    plot(ku*ones(length(rts),1),rts,'r.');
end
hold off;


figure (5); hold on;
kb=8;
for ku=0:0.05:16
    polycoeff=[1 -kb 1 -ku];
    rts=roots(polycoeff);
    rts=rts(imag(rts)==0);
    plot(ku*ones(length(rts),1),rts,'r.');
end
hold off;

% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene. 


figure (6); hold on;
ku=2;
for kb=-4:0.05:16
    polycoeff=[1 -kb 1 -ku];
    rts=roots(polycoeff);
    rts=rts(imag(rts)==0);
    plot(kb*ones(length(rts),1),rts,'r.');
end
hold off;
