f3();
%%A4b
figure()
fplot(@(x) f4a_risk_lachs(x),[0.4,2.0]);
legend('Risk Lachs')
title("A4b");

figure()
fplot(@(x) f4a_risk_barsch(x),[0.4,2.0]);
legend('Risk Barsch')
title("A4b");

figure()
risk_grenze = fzero(@(x) f4a_risk_barsch(x)-f4a_risk_lachs(x),1.2) %#ok<NOPTS>
fplot(@(x) f4a_risk_lachs(x),[0.4,2.0]);
hold on;
fplot(@(x) f4a_risk_barsch(x),[0.4,2.0]);
xline(risk_grenze);
legend('Risk Lachs','Risk Barsch',num2str(risk_grenze));
title("A4b");
hold off;

%%A4c
fishclass = arrayfun(@(x) classify(x, risk_grenze), fishlength) %#ok<NOPTS>


%%A4d
figure()
a4d_new_risk_grenze = fzero(@(x) f4d_new_risk_barsch(x)-f4a_risk_lachs(x),1.2) %#ok<NOPTS>
fplot(@(x) f4a_risk_lachs(x),[0.4,2.0]);
hold on;
fplot(@(x) f4d_new_risk_barsch(x),[0.4,2.0]);
xline(a4d_new_risk_grenze);
legend('Risk Lachs','Risk Barsch',num2str(a4d_new_risk_grenze));
title("A4d (andere Loss-Funktion)");
hold off;


function [class] = classify(x,grenze)
if(x <= grenze)
    class = "Barsch";
else
    class = "Lachs";
end
end

function [risk_barsch] = f4d_new_risk_barsch(x)

%% return a function!
loss_if_lachs = 5;
risk_barsch = loss_if_lachs * f3c3_apost_lachs(x); %% +0*apost_barsch
end