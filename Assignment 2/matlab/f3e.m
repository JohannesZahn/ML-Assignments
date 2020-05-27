function [fishclass] = f3e(fishlength)

%% Output format same as input format! 1: Barsch, 2: Lachs
apost_barsch = f3c3_apost_barsch(fishlength);

apost_lachs = f3c3_apost_lachs(fishlength);

% We assume 0-1 loss as no other is given
fishclass = apost_barsch>apost_lachs;
fishclass = string(fishclass);
fishclass(fishclass=='true') = 'Barsch';
fishclass(fishclass=='false') = 'Lachs';

end