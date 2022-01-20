clear

lco = [35,70,105,140,175];

%% Resultados da otimizacao

data111 = readtable('31 35/horario/resultados.dat');
data121 = readtable('31 70/horario/resultados.dat');
data131 = readtable('31 105/horario/resultados.dat');
data141 = readtable('31 140/horario/resultados.dat');
data151 = readtable('31 175/horario/resultados.dat');
data211 = readtable('60 35/horario/resultados.dat');
data221 = readtable('60 70/horario/resultados.dat');
data231 = readtable('60 105/horario/resultados.dat');
data241 = readtable('60 140/horario/resultados.dat');
data251 = readtable('60 175/horario/resultados.dat');
data311 = readtable('86 35/horario/resultados.dat');
data321 = readtable('86 70/horario/resultados.dat');
data331 = readtable('86 105/horario/resultados.dat');
data341 = readtable('86 140/horario/resultados.dat');
data351 = readtable('86 175/horario/resultados.dat');

data112 = readtable('31 35/antihorario/resultados.dat');
data122 = readtable('31 70/antihorario/resultados.dat');
data132 = readtable('31 105/antihorario/resultados.dat');
data142 = readtable('31 140/antihorario/resultados.dat');
data152 = readtable('31 175/antihorario/resultados.dat');
data212 = readtable('60 35/antihorario/resultados.dat');
data222 = readtable('60 70/antihorario/resultados.dat');
data232 = readtable('60 105/antihorario/resultados.dat');
data242 = readtable('60 140/antihorario/resultados.dat');
data252 = readtable('60 175/antihorario/resultados.dat');
data312 = readtable('86 35/antihorario/resultados.dat');
data322 = readtable('86 70/antihorario/resultados.dat');
data332 = readtable('86 105/antihorario/resultados.dat');
data342 = readtable('86 140/antihorario/resultados.dat');
data352 = readtable('86 175/antihorario/resultados.dat');

% linhas: lpo
% colunas: lco
% (:,:,1) = horario, (:,:,2) = antihorario
lambda1 = [data111{2,3},data121{2,3},data131{2,3},data141{2,3},data151{2,3};
    data211{2,3},data221{2,3},data231{2,3},data241{2,3},data251{2,3};
    data311{2,3},data321{2,3},data331{2,3},data341{2,3},data351{2,3}];
lambda1(:,:,2) = [data112{2,3},data122{2,3},data132{2,3},data142{2,3},data152{2,3};
    data212{2,3},data222{2,3},data232{2,3},data242{2,3},data252{2,3};
    data312{2,3},data322{2,3},data332{2,3},data342{2,3},data352{2,3}];

deltav = [data111{4,3},data121{4,3},data131{4,3},data141{4,3},data151{4,3};
    data211{4,3},data221{4,3},data231{4,3},data241{4,3},data251{4,3};
    data311{4,3},data321{4,3},data331{4,3},data341{4,3},data351{4,3}];
deltav(:,:,2) = [data112{4,3},data122{4,3},data132{4,3},data142{4,3},data152{4,3};
    data212{4,3},data222{4,3},data232{4,3},data242{4,3},data252{4,3};
    data312{4,3},data322{4,3},data332{4,3},data342{4,3},data352{4,3}];

deltav1 = [data111{5,3},data121{5,3},data131{5,3},data141{5,3},data151{5,3};
    data211{5,3},data221{5,3},data231{5,3},data241{5,3},data251{5,3};
    data311{5,3},data321{5,3},data331{5,3},data341{5,3},data351{5,3}];
deltav1(:,:,2) = [data112{5,3},data122{5,3},data132{5,3},data142{5,3},data152{5,3};
    data212{5,3},data222{5,3},data232{5,3},data242{5,3},data252{5,3};
    data312{5,3},data322{5,3},data332{5,3},data342{5,3},data352{5,3}];

deltav2 = [data111{6,3},data121{6,3},data131{6,3},data141{6,3},data151{6,3};
    data211{6,3},data221{6,3},data231{6,3},data241{6,3},data251{6,3};
    data311{6,3},data321{6,3},data331{6,3},data341{6,3},data351{6,3}];
deltav2(:,:,2) = [data112{6,3},data122{6,3},data132{6,3},data142{6,3},data152{6,3};
    data212{6,3},data222{6,3},data232{6,3},data242{6,3},data252{6,3};
    data312{6,3},data322{6,3},data332{6,3},data342{6,3},data352{6,3}];

gamma0 = [data111{3,3},data121{3,3},data131{3,3},data141{3,3},data151{3,3};
    data211{3,3},data221{3,3},data231{3,3},data241{3,3},data251{3,3};
    data311{3,3},data321{3,3},data331{3,3},data341{3,3},data351{3,3}];
gamma0(:,:,2) = [data112{3,3},data122{3,3},data132{3,3},data142{3,3},data152{3,3};
    data212{3,3},data222{3,3},data232{3,3},data242{3,3},data252{3,3};
    data312{3,3},data322{3,3},data332{3,3},data342{3,3},data352{3,3}];

deltat = [data111{7,3},data121{7,3},data131{7,3},data141{7,3},data151{7,3};
    data211{7,3},data221{7,3},data231{7,3},data241{7,3},data251{7,3};
    data311{7,3},data321{7,3},data331{7,3},data341{7,3},data351{7,3}];
deltat(:,:,2) = [data112{7,3},data122{7,3},data132{7,3},data142{7,3},data152{7,3};
    data212{7,3},data222{7,3},data232{7,3},data242{7,3},data252{7,3};
    data312{7,3},data322{7,3},data332{7,3},data342{7,3},data352{7,3}];

energym = [data111{8,3},data121{8,3},data131{8,3},data141{8,3},data151{8,3};
    data211{8,3},data221{8,3},data231{8,3},data241{8,3},data251{8,3};
    data311{8,3},data321{8,3},data331{8,3},data341{8,3},data351{8,3}];
energym(:,:,2) = [data112{8,3},data122{8,3},data132{8,3},data142{8,3},data152{8,3};
    data212{8,3},data222{8,3},data232{8,3},data242{8,3},data252{8,3};
    data312{8,3},data322{8,3},data332{8,3},data342{8,3},data352{8,3}];

em = [data111{9,3},data121{9,3},data131{9,3},data141{9,3},data151{9,3};
    data211{9,3},data221{9,3},data231{9,3},data241{9,3},data251{9,3};
    data311{9,3},data321{9,3},data331{9,3},data341{9,3},data351{9,3}];
em(:,:,2) = [data112{9,3},data122{9,3},data132{9,3},data142{9,3},data152{9,3};
    data212{9,3},data222{9,3},data232{9,3},data242{9,3},data252{9,3};
    data312{9,3},data322{9,3},data332{9,3},data342{9,3},data352{9,3}];

%% lambda1
figure
hold on
colororder({'b','r'})

yyaxis left
plot(NaN,'ko-','markerfacecolor','k','linewidth',3)
plot(NaN,'ks-','markerfacecolor','k','linewidth',3)
plot(NaN,'k^-','markerfacecolor','k','linewidth',3)
plot(NaN,'b-','linewidth',3)
plot(NaN,'r-','linewidth',3)

plot(lco,lambda1(1,:,1),'bo-','markerfacecolor','b','linewidth',3)
plot(lco,lambda1(2,:,1),'bs-','markerfacecolor','b','linewidth',3)
plot(lco,lambda1(3,:,1),'b^-','markerfacecolor','b','linewidth',3)
ylabel('\lambda_1 ótimo [°]','color','k')

yyaxis right
plot(lco,lambda1(1,:,2),'ro-','markerfacecolor','r','linewidth',3)
plot(lco,lambda1(2,:,2),'rs-','markerfacecolor','r','linewidth',3)
plot(lco,lambda1(3,:,2),'r^-','markerfacecolor','r','linewidth',3)

xlabel('h_L_C_O [km]')
xlim([lco(1) lco(end)])
xticks(lco)
hold off
grid on
grid minor
box on
legend('h_L_P_O = 31 km','h_L_P_O = 60 km','h_L_P_O = 86 km','Chegada horária','Chegada anti-horária','location','north')
set(gca,'FontSize',12)
exportgraphics(gca,'lambda1.pdf')

%% deltav
figure
hold on

plot(NaN,'ko-','markerfacecolor','k','linewidth',3)
plot(NaN,'ks-','markerfacecolor','k','linewidth',3)
plot(NaN,'k^-','markerfacecolor','k','linewidth',3)
plot(NaN,'b-','linewidth',3)
plot(NaN,'r-','linewidth',3)

plot(lco,deltav(1,:,1),'bo-','markerfacecolor','b','linewidth',3)
plot(lco,deltav(2,:,1),'bs-','markerfacecolor','b','linewidth',3)
plot(lco,deltav(3,:,1),'b^-','markerfacecolor','b','linewidth',3)

plot(lco,deltav(1,:,2),'ro-','markerfacecolor','r','linewidth',3)
plot(lco,deltav(2,:,2),'rs-','markerfacecolor','r','linewidth',3)
plot(lco,deltav(3,:,2),'r^-','markerfacecolor','r','linewidth',3)

xlabel('h_L_C_O [km]')
ylabel('\Deltav ótimo [km/s]')
xlim([lco(1) lco(end)])
xticks(lco)
hold off
grid on
grid minor
box on
legend('h_L_P_O = 31 km','h_L_P_O = 60 km','h_L_P_O = 86 km','Chegada horária','Chegada anti-horária','location','southwest')
set(gca,'FontSize',12)
exportgraphics(gca,'deltav.pdf')

%% deltav1
figure
hold on

plot(NaN,'ko-','markerfacecolor','k','linewidth',3)
plot(NaN,'ks-','markerfacecolor','k','linewidth',3)
plot(NaN,'k^-','markerfacecolor','k','linewidth',3)
plot(NaN,'b-','linewidth',3)
plot(NaN,'r-','linewidth',3)

plot(lco,deltav1(1,:,1),'bo-','markerfacecolor','b','linewidth',3)
plot(lco,deltav1(2,:,1),'bs-','markerfacecolor','b','linewidth',3)
plot(lco,deltav1(3,:,1),'b^-','markerfacecolor','b','linewidth',3)

plot(lco,deltav1(1,:,2),'ro-','markerfacecolor','r','linewidth',3)
plot(lco,deltav1(2,:,2),'rs-','markerfacecolor','r','linewidth',3)
plot(lco,deltav1(3,:,2),'r^-','markerfacecolor','r','linewidth',3)

xlabel('h_L_C_O [km]')
ylabel('\Deltav_1 ótimo [km/s]')
xlim([lco(1) lco(end)])
xticks(lco)
hold off
grid on
grid minor
box on
legend('h_L_P_O = 31 km','h_L_P_O = 60 km','h_L_P_O = 86 km','Chegada horária','Chegada anti-horária','location','east')
set(gca,'FontSize',12)
exportgraphics(gca,'deltav1.pdf')

%% deltav2
figure
hold on

plot(NaN,'ko-','markerfacecolor','k','linewidth',3)
plot(NaN,'ks-','markerfacecolor','k','linewidth',3)
plot(NaN,'k^-','markerfacecolor','k','linewidth',3)
plot(NaN,'b-','linewidth',3)
plot(NaN,'r-','linewidth',3)

plot(lco,deltav2(1,:,1),'bo-','markerfacecolor','b','linewidth',3)
plot(lco,deltav2(2,:,1),'bs-','markerfacecolor','b','linewidth',3)
plot(lco,deltav2(3,:,1),'b^-','markerfacecolor','b','linewidth',3)

plot(lco,deltav2(1,:,2),'ro-','markerfacecolor','r','linewidth',3)
plot(lco,deltav2(2,:,2),'rs-','markerfacecolor','r','linewidth',3)
plot(lco,deltav2(3,:,2),'r^-','markerfacecolor','r','linewidth',3)

xlabel('h_L_C_O [km]')
ylabel('\Deltav_2 ótimo [km/s]')
xlim([lco(1) lco(end)])
xticks(lco)
hold off
grid on
grid minor
box on
legend('h_L_P_O = 31 km','h_L_P_O = 60 km','h_L_P_O = 86 km','Chegada horária','Chegada anti-horária','location','southwest')
set(gca,'FontSize',12)
exportgraphics(gca,'deltav2.pdf')

%% gamma0
figure
hold on
colororder({'b','r'})

yyaxis left
plot(NaN,'ko-','markerfacecolor','k','linewidth',3)
plot(NaN,'ks-','markerfacecolor','k','linewidth',3)
plot(NaN,'k^-','markerfacecolor','k','linewidth',3)
plot(NaN,'b-','linewidth',3)
plot(NaN,'r-','linewidth',3)

plot(lco,gamma0(1,:,1),'bo-','markerfacecolor','b','linewidth',3)
plot(lco,gamma0(2,:,1),'bs-','markerfacecolor','b','linewidth',3)
plot(lco,gamma0(3,:,1),'b^-','markerfacecolor','b','linewidth',3)
ylabel('\theta_P_p_0 ótimo [°]','color','k')

yyaxis right
plot(lco,gamma0(1,:,2),'ro-','markerfacecolor','r','linewidth',3)
plot(lco,gamma0(2,:,2),'rs-','markerfacecolor','r','linewidth',3)
plot(lco,gamma0(3,:,2),'r^-','markerfacecolor','r','linewidth',3)

xlabel('h_L_C_O [km]')
xlim([lco(1) lco(end)])
xticks(lco)
hold off
grid on
grid minor
box on
legend('h_L_P_O = 31 km','h_L_P_O = 60 km','h_L_P_O = 86 km','Chegada horária','Chegada anti-horária','location','south')
set(gca,'FontSize',12)
exportgraphics(gca,'thetapp0.pdf')

%% deltat
figure
hold on

plot(NaN,'ko-','markerfacecolor','k','linewidth',3)
plot(NaN,'ks-','markerfacecolor','k','linewidth',3)
plot(NaN,'k^-','markerfacecolor','k','linewidth',3)
plot(NaN,'b-','linewidth',3)
plot(NaN,'r-','linewidth',3)

plot(lco,deltat(1,:,1),'bo-','markerfacecolor','b','linewidth',3)
plot(lco,deltat(2,:,1),'bs-','markerfacecolor','b','linewidth',3)
plot(lco,deltat(3,:,1),'b^-','markerfacecolor','b','linewidth',3)

plot(lco,deltat(1,:,2),'ro-','markerfacecolor','r','linewidth',3)
plot(lco,deltat(2,:,2),'rs-','markerfacecolor','r','linewidth',3)
plot(lco,deltat(3,:,2),'r^-','markerfacecolor','r','linewidth',3)

xlabel('h_L_C_O [km]')
ylabel('\Deltat ótimo [dias]')
xlim([lco(1) lco(end)])
xticks(lco)
hold off
grid on
grid minor
box on
legend('h_L_P_O = 31 km','h_L_P_O = 60 km','h_L_P_O = 86 km','Chegada horária','Chegada anti-horária','location','northwest')
set(gca,'FontSize',12)
exportgraphics(gca,'deltat.pdf')

%% energym
figure
hold on

plot(NaN,'ko-','markerfacecolor','k','linewidth',3)
plot(NaN,'ks-','markerfacecolor','k','linewidth',3)
plot(NaN,'k^-','markerfacecolor','k','linewidth',3)
plot(NaN,'b-','linewidth',3)
plot(NaN,'r-','linewidth',3)

plot(lco,energym(1,:,1),'bo-','markerfacecolor','b','linewidth',3)
plot(lco,energym(2,:,1),'bs-','markerfacecolor','b','linewidth',3)
plot(lco,energym(3,:,1),'b^-','markerfacecolor','b','linewidth',3)

plot(lco,energym(1,:,2),'ro-','markerfacecolor','r','linewidth',3)
plot(lco,energym(2,:,2),'rs-','markerfacecolor','r','linewidth',3)
plot(lco,energym(3,:,2),'r^-','markerfacecolor','r','linewidth',3)

xlabel('h_L_C_O [km]')
ylabel('\epsilon_C ótimo [km^2/s^2]')
xlim([lco(1) lco(end)])
xticks(lco)
hold off
grid on
grid minor
box on
legend('h_L_P_O = 31 km','h_L_P_O = 60 km','h_L_P_O = 86 km','Chegada horária','Chegada anti-horária','location','east')
set(gca,'FontSize',12)
exportgraphics(gca,'energyc.pdf')

%% em
figure
hold on

plot(NaN,'ko-','markerfacecolor','k','linewidth',3)
plot(NaN,'ks-','markerfacecolor','k','linewidth',3)
plot(NaN,'k^-','markerfacecolor','k','linewidth',3)
plot(NaN,'b-','linewidth',3)
plot(NaN,'r-','linewidth',3)

plot(lco,em(1,:,1),'bo-','markerfacecolor','b','linewidth',3)
plot(lco,em(2,:,1),'bs-','markerfacecolor','b','linewidth',3)
plot(lco,em(3,:,1),'b^-','markerfacecolor','b','linewidth',3)

plot(lco,em(1,:,2),'ro-','markerfacecolor','r','linewidth',3)
plot(lco,em(2,:,2),'rs-','markerfacecolor','r','linewidth',3)
plot(lco,em(3,:,2),'r^-','markerfacecolor','r','linewidth',3)

xlabel('h_L_C_O [km]')
ylabel('e_C ótimo')
xlim([lco(1) lco(end)])
xticks(lco)
hold off
grid on
grid minor
box on
legend('h_L_P_O = 31 km','h_L_P_O = 60 km','h_L_P_O = 86 km','Chegada horária','Chegada anti-horária','location','east')
set(gca,'FontSize',12)
exportgraphics(gca,'ec.pdf')
