

%tempField=[FitMFieldA(:)*1.03;zeros(51,1);-FitFinalMField(:)*22];


%ZeroFieldPosition=transpose(55:0.1:60);
%tempFitMPosition=[FitMPositionA(:);ZeroFieldPosition(:);FitMPosition(:)+62.0];
%figure(4)

%plot(tempFitMPosition,tempField)


%-FitFinalMField*22;
%FitFinalMField*20.6
%FitMField1*33;

%zz=FitMPosition;
%coilB=31.5;

%temppositionB=positionB-60.7;

%Correction B

%tempField=tempField+bfield1(FitMPosition, -1*8, tube_OD, temppositionB-TurnsB(1)*wire_thickness-wire_thickness*(2*WeakTurnsB(1)+4), 2, -wire_thickness)
%tempField=tempField+bfield1(FitMPosition, +1*8, tube_OD +2*wire_thickness, temppositionB-TurnsB(1)*wire_thickness-wire_thickness*(2*WeakTurnsB(1)-1.5), 2, -wire_thickness)

%tempField=tempField+bfield1(FitMPosition, +1*4, tube_OD +2*wire_thickness, temppositionB-TurnsB(1)*wire_thickness-wire_thickness*(2*WeakTurnsB(1)-4), 2, -wire_thickness)
%tempField=tempField+bfield1(FitMPosition, -1*6, tube_OD +2*wire_thickness, temppositionB-TurnsB(1)*wire_thickness-wire_thickness*(2*WeakTurnsB(1)-8), 2, -wire_thickness)

%tempField=tempField+bfield1(FitMPosition, -1*12, tube_OD +2*wire_thickness, temppositionB-(TurnsB(1)+3)*wire_thickness, 2, -wire_thickness)
%tempField=tempField+bfield1(FitMPosition, +1*5, tube_OD +2*wire_thickness, temppositionB-(TurnsB(1)-3)*wire_thickness, 2, -wire_thickness)


%tempField=tempField+bfield1(FitMPosition, -1*8, tube_OD +2*wire_thickness, temppositionB-TurnsB(2)*wire_thickness-wire_thickness*(2*WeakTurnsB(2)+4), 2, -wire_thickness)
%tempField=tempField+bfield1(FitMPosition, 1*14, tube_OD +4*wire_thickness, temppositionB-TurnsB(2)*wire_thickness-wire_thickness*(2*WeakTurnsB(2)), 2, -wire_thickness)


%tempField=tempField+bfield1(FitMPosition, -1*2, tube_OD +4*wire_thickness, temppositionB-(TurnsB(2)+3)*wire_thickness, 2, -wire_thickness)
%tempField=tempField+bfield1(FitMPosition, +1*8, tube_OD +4*wire_thickness, temppositionB-(TurnsB(2)-2)*wire_thickness, 2, -wire_thickness)



%tempField=tempField+bfield1(FitMPosition, -1*15, tube_OD +4*wire_thickness, temppositionB-(TurnsB(3)+5)*wire_thickness, 2, -wire_thickness)
%tempField=tempField+bfield1(FitMPosition, +1*24, tube_OD +6*wire_thickness, temppositionB-(TurnsB(3)-3)*wire_thickness, 2, -wire_thickness)

%tempField=tempField+bfield1(FitMPosition, -1*0, tube_OD +6*wire_thickness, temppositionB-(TurnsB(4)+2)*wire_thickness, 2, -wire_thickness)


%Correction A

%tempField=tempField+bfield1(FitMPosition, -1*4, tube_OD+2*wire_thickness,
%wire_thickness*(TurnsA(1)-3), 3, wire_thickness)

%tempField=tempField+bfield1(FitMPosition, 1*4, tube_OD+2*wire_thickness, wire_thickness*(TurnsA(2)+0), 2, wire_thickness)
%tempField=tempField+bfield1(FitMPosition, -1*12, tube_OD+4*wire_thickness, wire_thickness*(TurnsA(2)-4), 4, wire_thickness)

%tempField=tempField+bfield1(FitMPosition, 1*14, tube_OD+4*wire_thickness, wire_thickness*(TurnsA(3)+0), 3, wire_thickness)
%tempField=tempField+bfield1(FitMPosition, -1*2, tube_OD+6*wire_thickness, wire_thickness*(TurnsA(3)-2), 1, wire_thickness)

%tempField=tempField+bfield1(FitMPosition, 1*14, tube_OD+6*wire_thickness, wire_thickness*(TurnsA(4)+0), 3, wire_thickness)
%tempField=tempField+bfield1(FitMPosition, -1*6, tube_OD+8*wire_thickness, wire_thickness*(TurnsA(4)-4), 4, wire_thickness)


%tempField=tempField+bfield1(FitMPosition, 1*10, tube_OD+8*wire_thickness, wire_thickness*(TurnsA(5)+0), 3, wire_thickness)
%tempField=tempField+bfield1(FitMPosition, -1*6, tube_OD+10*wire_thickness, wire_thickness*(TurnsA(5)-3), 2, wire_thickness)

%tempField=tempField+bfield1(FitMPosition, 1*4, tube_OD+10*wire_thickness, wire_thickness*(TurnsA(6)+0), 3, wire_thickness)
%tempField=tempField+bfield1(FitMPosition, -1*6, tube_OD+12*wire_thickness, wire_thickness*(TurnsA(6)-3), 2, wire_thickness)


%tempField=tempField+bfield1(FitMPosition, -1*16, tube_OD+16*wire_thickness, wire_thickness*(TurnsA(10)+1), 4, wire_thickness)
%tempField=tempField+bfield1(FitMPosition, -1*14, tube_OD+20*wire_thickness, wire_thickness*(TurnsA(10)-4), 4, wire_thickness)

%tempField=tempField+bfield1(FitMPosition, 1*8, tube_OD+16*wire_thickness, wire_thickness*(TurnsA(10)+1), 2, wire_thickness)
%tempField=tempField+bfield1(FitMPosition, 1*7, tube_OD+20*wire_thickness,wire_thickness*(TurnsA(10)-4), 2, wire_thickness)


%figure(5)

%plot(FitMPosition,tempField)


%tempField=FitFinalFieldTotal-[zeros(n,1);FitComMField(1:1041-n)*75];
%tempPosition=FitFinalFieldPosition;


tempField=FinalMFieldIdeal+bfield1(FinalMPosition, 1*80, tube_OD+6*wire_thickness, wire_thickness*(TurnsA(4)+0), 3, wire_thickness);
%StimulationField+bfield1(StimulationPosition, 1*40, tube_OD+6*wire_thickness, wire_thickness*(TurnsA(4)+0), 3, wire_thickness)
%bfield1(StimulationPosition, 1*30, tube_OD+16*wire_thickness, wire_thickness*(TurnsA(10)+1), 2, wire_thickness);
tempPosition=FinalMPosition;

figure(2); hold on;
sizee=1201;

Bfinal=tempField(1130); % for Ideal
%Bfinal=tempSField(1099); % for AC     FinalMFieldAC
    
tempMAccelaratoinSectionA=0;

for i=2:1:sizee-1; 
    tempDecreasingFieldDeriv(i)=(tempField(i+1)-tempField(i-1))/(tempPosition(i+1)-tempPosition(i-1)); % in 1/cm
    tempMAccelaratoinSectionA(i)=(-Bfinal+tempField(i))*tempDecreasingFieldDeriv(i)*(Mu*Lambda)^2;
end

tempDecreasingFieldDeriv(sizee)=(tempField(sizee)-tempField(sizee-1))/0.1;



tempMAccelaratoinSectionA(sizee)=(-Bfinal+tempField(sizee))*tempDecreasingFieldDeriv(sizee)*(Mu*Lambda)^2;

tempMAccelaratoinSectionA(1)=0;

plot(tempPosition,-tempMAccelaratoinSectionA/amax*100,'red');
