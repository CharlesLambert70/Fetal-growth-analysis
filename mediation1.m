list_T2DGGI_binary =  readtable('D:/pathway-specific PRS/mothers_GDM/list_T2DGGI_binary.csv','Delimiter',',','ReadRowNames',false);
list_T2DGGI_continuous =  readtable('D:/pathway-specific PRS/mothers_GDM/list_T2DGGI_continuous.csv','Delimiter',',','ReadRowNames',false);
data =  readtable('D:/pathway-specific PRS/mothers_GDM/mediation_data.csv','Delimiter',',','ReadRowNames',true);
list_Udler2024_binary =  readtable('D:/pathway-specific PRS/mothers_GDM/list_Udler2024_binary.csv','Delimiter',',','ReadRowNames',false);
list_Udler2024_continuous =  readtable('D:/pathway-specific PRS/mothers_GDM/list_Udler2024_continuous.csv','Delimiter',',','ReadRowNames',false);
data =  readtable('D:/pathway-specific PRS/mothers_GDM/data.csv','Delimiter',',','ReadRowNames',true);
data1 =  readtable('D:/pathway-specific PRS/mothers_GDM/data1.csv','Delimiter',',','ReadRowNames',true);
list_cord_CP =  readtable('D:/pathway-specific PRS/mothers_GDM/list_cord_CP.csv','Delimiter',',','ReadRowNames',false);

result=table();
n=1; 
cov=string({'MA_DELIVERY_AGE','OS_DELIVERY_GA','OS_BIRTH_SEX','MA_PARITY','OS_CENTRE_E','OS_CENTRE_P','AFC','HIS','EUR','PC1','PC2','PC3','PC4','PC5'})
%c=string({'OS_BIRTH_WEIGHT','MA_OGTT_GLU60','MA_OGTT_GAUC','MA_OGTT_GLU120','MA_OGTT_GLU0','MA_DELIVERY_AGE','OS_DELIVERY_GA','OS_BIRTH_SEX','MA_PARITY','OS_CENTRE_E','OS_CENTRE_P','AFC','HIS','EUR','PC1','PC2','PC3','PC4','PC5'});
%[paths, stats] = mediation(table2array(data_test(:,1)), table2array(data_test(:,2)), table2array(data_test(:,3)),'M',table2array(data_test(:,4)),'M',table2array(data_test(:,5)),'M',table2array(data_test(:,6)),'covs',table2array(data_test(:,7:20)),'boot', 'bootsamples', 10000,'doCIs');
%FG=string({'OS_BIRTH_LENGTH','OS_BIRTH_WEIGHT','OS_BIRTH_PI','OS_BIRTH_HEAD','OS_BIRTH_FLANK_SKIN','OS_BIRTH_SUB_SKIN','OS_BIRTH_TRI_SKIN','OS_BIRTH_SKIN_SUM','LGA','SGA','obe'})

for a=1:1
        x=list_cord_CP{a,1};
        y=list_cord_CP{a,2};
        %y=FG{b};
        m=list_cord_CP{a,3};
        %m=list_cord_CP{a,2};
        c=string({x,y,m,'Obesity_y','MA_DELIVERY_AGE','OS_DELIVERY_GA','OS_BIRTH_SEX','AFC','HIS','EUR','OS_CENTRE_E','OS_CENTRE_P','PC1','PC2','PC3','PC4','PC5'});
        data_test=data(:,c);
        data_test=rmmissing(data_test);
        try
        [paths, stats] = mediation(table2array(data_test(:,1)), table2array(data_test(:,2)), table2array(data_test(:,3)),'covs',table2array(data_test(:,4:12)),'boot', 'bootsamples', 10000,'doCIs');
        result(n,'X')={x};
        result(n,'Y')={y};
        result(n,'M')={m};
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
%end

data4 =  readtable('D:/pathway-specific PRS/mothers_GDM/data4.csv','Delimiter',',','ReadRowNames',true);
[A,B,r,U,V] = canoncorr(table2array(data4(:,1:13)),table2array(data4(:,14:33)));