data=readtable('./data.csv','Delimiter',',','ReadRowNames',false);

result=table();
n=1;  
HAPO=string({"EUR","AFC","HIS","THAI","HK"})
for a=1:5
        x={'All_x'};
        y={'OS_BIRTH_WEIGHT'};
        m={'MA_OGTT_GAUC'};
        c=string({x,y,m,'All_y','MA_OGTT_AGE','OS_OGTT_GA','OS_BIRTH_SEX','MA_PARITY','OS_CENTRE_ID','PC1','PC2','PC3','PC4','PC5'});
        data_m=data(data.HAPO_x==string(HAPO{a}),:)
        data_test=data_m(:,c);
        data_test=rmmissing(data_test);
        [paths, stats] = mediation(table2array(data_test(:,1)), table2array(data_test(:,2)), table2array(data_test(:,3)),'covs',table2array(data_test(:,4:13)),'boot', 'bootsamples', 10000,'doCIs');
        result(n,'X')=x;
        result(n,'Y')=y;
        result(n,'M')=m;
        result(n,'HAPO')={HAPO{a}};
        result(n,'a_coeff')={stats.paths(1)};
        result(n,'a_ste')={stats.ste(1)};
        result(n,'a_z')={stats.z(1)};
        result(n,'a_p')={stats.p(1)};
        result(n,'a_ci_low')={stats.ci(1,1,1)};
        result(n,'a_ci_up')={stats.ci(1,1,2)};
        result(n,'b_coeff')={stats.paths(2)};
        result(n,'b_ste')={stats.ste(2)};
        result(n,'b_z')={stats.z(2)};
        result(n,'b_p')={stats.p(2)};
        result(n,'b_ci_low')={stats.ci(1,2,1)};
        result(n,'b_ci_up')={stats.ci(1,2,2)};
        result(n,'cp_coeff')={stats.paths(3)};
        result(n,'cp_ste')={stats.ste(3)};
        result(n,'cp_z')={stats.z(3)};
        result(n,'cp_p')={stats.p(3)};
        result(n,'cp_ci_low')={stats.ci(1,3,1)};
        result(n,'cp_ci_up')={stats.ci(1,3,2)};
        result(n,'c_coeff')={stats.paths(4)};
        result(n,'c_ste')={stats.ste(4)};
        result(n,'c_z')={stats.z(4)};
        result(n,'c_p')={stats.p(4)};
        result(n,'c_ci_low')={stats.ci(1,4,1)};
        result(n,'c_ci_up')={stats.ci(1,4,2)};
        result(n,'ab_coeff')={stats.paths(5)};
        result(n,'ab_ste')={stats.ste(5)};
        result(n,'ab_z')={stats.z(5)};
        result(n,'ab_p')={stats.p(5)};
        result(n,'ab_ci_low')={stats.ci(1,5,1)};
        result(n,'ab_ci_up')={stats.ci(1,5,2)};
        n=n+1
        end  
end
end
end





