fishlength = f3a();
apost_barsch = f3c3_apost_barsch(fishlength)
apost_lachs = f3c3_apost_lachs(fishlength)
%%
likelihood_barsch = f3c1_likelihood_barsch(fishlength);
likelihood_lachs = f3c1_likelihood_lachs(fishlength);
evidence = f3c2(cat(2, likelihood_barsch, likelihood_lachs));
apost_barsch = f3c3_apost_barsch(fishlength);
