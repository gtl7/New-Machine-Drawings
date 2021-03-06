Intensity=1.5;  % /Isat
Delta=125;  % MHz
T=620; % K

tempSField=FinalMFieldIdeal+bfield1(FinalMPosition, 1*0, tube_OD+6*wire_thickness, wire_thickness*(TurnsA(4)+0), 3, wire_thickness);
Bfinal=tempSField(1130); % for Ideal
%Bfinal=tempSField(1101); % for BC
%Bfinal=tempSField(1099); % for AC     FinalMFieldAC

%bfield1(FinalMPosition, 1*60, tube_OD+6*wire_thickness, wire_thickness*(TurnsA(4)+0), 3, wire_thickness);
%bfield1(FinalMPosition, 1*30, tube_OD+16*wire_thickness, wire_thickness*(TurnsA(10)+1), 2, wire_thickness);
tempsize=1201;
    
efactor=mass/1.38/10^(-23)/2/T;

a=zeros(1,1);
FinalV=zeros(1,1);
v=zeros(1,1);
TotalWeight=0;
MOTTrap=100;
TotalTrap=0;

FinalV=0;
FinalWeightV=0;
InitialWeightV=0;
WeightV=0;
Neg=0;

InitialV=1:1:2000;

for k=1:length(InitialV)
    WeightV(k)=(InitialV(k)/2000)^3*exp(-efactor*InitialV(k)^2);
    v(1,k)=InitialV(k);
    
    d(k)=0;
    vd=0;
    

    
    for i=1:1:tempsize;

    a(i,k)=Intensity/(1+Intensity+((Mu/Gamma*(tempSField(i)-Bfinal)-v(i,k)/(Gamma*Lambda)+Delta*10^6/Gamma)^2*4));

    
    if (v(i,k)^2-2*0.001*a(i,k)*amax>0)&(v(i,k)>0)
       v(i+1,k)=sqrt(v(i,k)^2-2*0.001*a(i,k)*amax);
       
       %vd2=sqrt(vd^2+amax^2*(2/Gamma*a(i,k)*0.002/(v(i,k)+v(i+1,k))));
       %d(k)=d(k)+1/2*(vd+vd2)*0.002/(v(i,k)+v(i+1,k));
       %vd=vd2;
    else
       v(i+1,k)=-800;
       %d(k)=3;
    end
    
    end
    
    FinalV(k)=v(tempsize,k);

    if (k>1)
    FinalWeightV(k)=WeightV(k)/(FinalV(k)-FinalV(k-1));
    end

    TotalWeight=TotalWeight+WeightV(k);

    if (FinalV(k)>0)&(FinalV(k)<MOTTrap);%&(d<1.27);
    TotalTrap=TotalTrap+WeightV(k);
    end
    
    if (FinalV(k)<0)
        Neg=Neg+WeightV(k);
    end
    
end

FinalWeightV(1)=0;
TrapPortion=TotalTrap/TotalWeight
InitialWeightV=WeightV/TotalWeight;
FinalWeightV=FinalWeightV/TotalWeight;
figure(3);
%plot(InitialV,InitialWeightV);hold on;
Neg/TotalWeight
plot(FinalV,FinalWeightV);hold on;


