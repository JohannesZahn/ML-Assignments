clc
dataset = f4a();
[pc ws sc] = f4b(dataset);
n_dim = f4c(sc);
projection_ndim = f4d(dataset,pc,n_dim)

figure(1)
hold on
x_set = projection_ndim(1:40,1)
y_set = projection_ndim(1:40,2)
x_ver = projection_ndim(41:80,1)
y_ver = projection_ndim(41:80,2)
x_vir = projection_ndim(81:120,1)
y_vir = projection_ndim(81:120,2)
scatter(x_set,y_set,20,'r','filled')
scatter(x_ver,y_ver,20,'g','filled')
scatter(x_vir,y_vir,20,'b','filled')




