[train_dataset,test_dataset] = f5a();
f5b(train_dataset);
[train_mu, train_var] = f5c(train_dataset);
[likelihood, class_independent] = f5d(train_dataset, train_mu, train_var);
eval_summary = f5e(test_dataset, class_independent);
f5f(train_dataset)
class_multivariate = f5g(train_dataset, train_mu, test_dataset);
f5gplot(test_dataset, class_independent, class_multivariate);