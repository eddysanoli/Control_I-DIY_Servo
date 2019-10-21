%% IE3006 - Sistemas de Control 1 - Proyecto final
% Gabriela Iriarte - 16009
% Eduardo Santizo  - 16089
%% Captura de datos

figure(1);
% toma1.csv
subplot(2,2,1)
plot(t_1,CH1_1)
hold on;
plot(t_1,CH2_1)
% Determinación del período de muestreo:
dt1 = t_1(1000)-t_1(999); % Es el mismo para todas las tomas.

% toma4.csv
subplot(2,2,2)
plot(t_2,CH1_2)
hold on;
plot(t_2,CH2_2)
dt2 = t_2(1000)-t_2(999);

% toma3.csv
subplot(2,2,3)
plot(t_3,CH1_3)
hold on;
plot(t_3,CH2_3)
dt3 = t_3(1000)-t_3(999);

% toma2.csv
subplot(2,2,4)
plot(t_4,CH1_4)
hold on;
plot(t_4,CH2_4)
dt4 = t_4(1000)-t_4(999);

%% Recorte de datos

%figure(2);
%toma1.csv
t_1cut = t_1(670:1600);
CH1_1cut = CH1_1(670:1600);
CH2_1cut = CH2_1(670:1600)+0.08;
subplot(2,2,1)
plot(t_1cut,CH2_1cut)
hold on;
plot(t_1cut,CH1_1cut)

% toma4.csv
t_2cut = t_2(670:1050);
CH1_2cut = CH1_2(670:1050);
CH2_2cut = CH2_2(670:1050)+0.16;
subplot(2,2,2)
plot(t_2cut,CH2_2cut)
hold on;
plot(t_2cut,CH1_2cut)

% toma3.csv
t_3cut = t_3(670:980);
CH1_3cut = CH1_3(670:980);
CH2_3cut = CH2_3(670:980)+0.16;
subplot(2,2,3)
plot(t_3cut,CH2_3cut)
hold on;
plot(t_3cut,CH1_3cut)

% toma2.csv
t_4cut = t_4(670:1150);
CH1_4cut = CH1_4(670:1150);
CH2_4cut = CH2_4(670:1150)+0.16;
subplot(2,2,4)
plot(t_4cut,CH2_4cut)
hold on;
plot(t_4cut,CH1_4cut)

%% System Identification Toolbox

% tfprueba1 - 58.65% fit
% tfprueba2 - 53.88% fit
% tfprueba3 - 97.27% fit
% tfprueba4 - 91.22% fit

