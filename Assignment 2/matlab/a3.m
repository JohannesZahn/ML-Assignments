%% 3a 
fishlength = f3a();
%% 3b
histo = f3b(fishlength);
%% 3c
x = 0.4:.01:2;
apost_barsch = f3c3_apost_barsch(x);
apost_lachs = f3c3_apost_lachs(x);
%% 3d
linestyle_barsch = '-b';
linestyle_lachs = '-r';
% Barsch
figure(2);
subplot(1,2,1)
plot(x,apost_barsch,linestyle_barsch);
title('a-Posteriori Wahrscheinlichkeit für Klasse Barsch')
xlabel('x') 
ylabel('P(w_1|x)') 

% Lachs
subplot(1,2,2)
plot(x,apost_lachs,linestyle_lachs);
title('a-Posteriori Wahrscheinlichkeit für Klasse Lachs')
xlabel('x') 
ylabel('P(w_2|x)')


%{
% Beide
figure(3)
hold on;
apost_barsch_plot = plot(x,apost_barsch,linestyle_barsch);
apost_lachs_plot = plot(x,apost_lachs,linestyle_lachs);
title('a-Posteriori Wahrscheinlichkeiten für beide Klassen')
xlabel('x') 
ylabel('P(w_j|x)')
legend([apost_barsch_plot,apost_lachs_plot], ["w_1", "w_2"]);
hold off
%}

%% 3e
fishclass = f3e(fishlength);

%% 3f
[prob_barsch, prob_lachs] = f3f(fishclass);



