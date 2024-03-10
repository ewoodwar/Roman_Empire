function pdot=twopatchf(t,p)
%This is the ODE for the two patch sir model
pi_1=100;
pi_2=100;
beta_1=0.5;
beta_2=0.5;
alpha_12=0.2;
alpha_21=0.2;
omega=0.2;
gamma_12=0.3;
gamma_21=0.3;
sigma=0.4;
mu=75;

%p(1)= S1
%p(2)= S2
%p(3)= I1
%p(4)= I2
%p(5)= R1
%p(6)= R2

pdot(1,:)=pi_1-(beta_1.*p(1).*p(3))-alpha_12.*p(1)+omega.*p(5);
pdot(2,:)=pi_2 - ((beta_2.*p(2).*p(3))/(p(4)+p(2)+p(6)))+ alpha_12.*p(1) - alpha_21.*p(2)+ omega*p(6);
pdot(3,:)= beta_1.*p(2)+ gamma_21.*p(4)-gamma_12.*p(3)-sigma.*p(3)-mu.*p(3);
pdot(4,:)=beta_2.*p(2)-gamma_21.*p(4)+ gamma_12.*p(3) - sigma.*p(4)-mu.*p(4);
pdot(5,:)=mu.*p(3)-alpha_12.*p(5)+alpha_21.*p(6)-omega.*p(5);
pdot(6,:)=mu.*p(4)+alpha_12.*p(5)-alpha_21.*p(6)-omega.*p(6);
