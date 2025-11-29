%sports_baseline_weeks_fc_residual =  readtable('E:/学习资料/sports/new/sports_baseline_weeks_fc_residual.csv','ReadRowNames',true);
%sports_baseline_years_fc_residual =  readtable('E:/学习资料/sports/sports_baseline_years_fc_residual.csv','ReadRowNames',true);
%sports_baseline_months_fc_residual =  readtable('E:/学习资料/sports/new/sports_baseline_months_fc_residual.csv','ReadRowNames',true);
%sports_baseline_time_fc_residual =  readtable('E:/学习资料/sports/new/sports_baseline_time_fc_residual.csv','ReadRowNames',true);
sports_baseline_amount_fc_residual =  readtable('E:/学习资料/sports/new/sports_baseline_amount_fc_residual.csv','ReadRowNames',true);
sports_baseline_onset_fc_residual =  readtable('E:/学习资料/sports/new/sports_baseline_onset_fc_residual.csv','ReadRowNames',true);
sports_baseline_01_fc_residual =  readtable('E:/学习资料/sports/new/sports_baseline_01_fc_residual.csv','ReadRowNames',true);

sports_baseline_weeks_smri_residual =  readtable('E:/学习资料/sports/new/sports_baseline_weeks_smri_residual.csv','ReadRowNames',true);
sports_baseline_years_smri_residual =  readtable('E:/学习资料/sports/new/sports_baseline_years_smri_residual.csv','ReadRowNames',true);
sports_baseline_months_smri_residual =  readtable('E:/学习资料/sports/new/sports_baseline_months_smri_residual.csv','ReadRowNames',true);
sports_baseline_time_smri_residual =  readtable('E:/学习资料/sports/new/sports_baseline_time_smri_residual.csv','ReadRowNames',true);
sports_baseline_amount_smri_residual =  readtable('E:/学习资料/sports/new/sports_baseline_amount_smri_residual.csv','ReadRowNames',true);
sports_baseline_onset_smri_residual =  readtable('E:/学习资料/sports/new/sports_baseline_onset_smri_residual.csv','ReadRowNames',true);
sports_baseline_01_smri_residual =  readtable('E:/学习资料/sports/new/sports_baseline_01_smri_residual.csv','ReadRowNames',true);
%行名第一行为空%
sports_2year_01 =  readtable('E:/学习资料/sports/PSM/sports_2year_01.csv','ReadRowNames',true);
yrb_2year =  readtable('E:/学习资料/sports/PSM/yrb_2year.csv','ReadRowNames',true);
fitbit_2year =  readtable('E:/学习资料/sports/appeal/fitbit_PA_2year_unique.csv','ReadRowNames',true);
covariate_baseline =  readtable('E:/学习资料/sports/PSM/covariate_baseline.csv','ReadRowNames',true);
cbcl_baseline =  readtable('E:/学习资料/sports/PSM/cbcl_baseline.csv','ReadRowNames',true);
covariate_2year_smri =  readtable('E:/学习资料/sports/PSM/covariate_2year_smri.csv','ReadRowNames',true);
covariate_2year_rsfmri =  readtable('E:/学习资料/sports/PSM/covariate_2year_rsfmri.csv','ReadRowNames',true);
cognition_2year =  readtable('E:/学习资料/sports/PSM/cognition_2year.csv','ReadRowNames',true);
cbcl_2year =  readtable('E:/学习资料/sports/appeal/cbcl_2year.csv','ReadRowNames',true);
list=  readtable('E:/学习资料/sports/PSM/list.csv','ReadRowNames',false,'Delimiter',',');
CT_2year =  readtable('E:/学习资料/sports/appeal/CT_2year.csv','ReadRowNames',true);
CA_2year =  readtable('E:/学习资料/sports/appeal/CA_2year.csv','ReadRowNames',true);
CV_2year =  readtable('E:/学习资料/sports/appeal/CV_2year.csv','ReadRowNames',true);
fc1_2year =  readtable('E:/学习资料/sports/appeal/fc1_2year.csv','ReadRowNames',true);
fc2_2year =  readtable('E:/学习资料/sports/appeal/fc2_2year.csv','ReadRowNames',true);
PRS_full_scaled=readtable('E:/学习资料/sports/PSM/PRS_full_scaled.csv','ReadRowNames',true);
PC_full=readtable('E:/学习资料/sports/PSM/PC_full.csv','ReadRowNames',true);
data=readtable('D:/pathway-specific PRS/mothers_GDM/data.csv','Delimiter',',','ReadRowNames',false);

cbcl_baseline_fc_residual =  readtable('E:/学习资料/sports/new/cbcl_baseline_smri_residual.csv','ReadRowNames',true);
cbcl_baseline_smri_residual =  readtable('E:/学习资料/sports/new/cbcl_baseline_smri_residual.csv','ReadRowNames',true);

CA_residual =  readtable('E:/学习资料/sports/new/CA_residual.csv','ReadRowNames',true);
CT_residual =  readtable('E:/学习资料/sports/new/CT_residual.csv','ReadRowNames',true);
CV_residual =  readtable('E:/学习资料/sports/new/CV_residual.csv','ReadRowNames',true);
subcv_residual=readtable('E:/学习资料/sports/new/subcv_residual.csv','ReadRowNames',true);
fc1_residual =  readtable('E:/学习资料/sports/new/fc1_residual.csv','ReadRowNames',true);
fc2_residual =  readtable('E:/学习资料/sports/new/fc2_residual.csv','ReadRowNames',true);

list_years_fc1 =  readtable('E:/学习资料/sports/new/list_years_fc1.csv','Delimiter',',','ReadRowNames',false);
list_years_subcv =  readtable('E:/学习资料/sports/new/list_years_subcv.csv','Delimiter',',','ReadRowNames',false);
list_01_fc1 =  readtable('E:/学习资料/sports/new/list_01_fc1.csv','Delimiter',',','ReadRowNames',false);
list_01_CA =  readtable('E:/学习资料/sports/new/list_01_CA.csv','Delimiter',',','ReadRowNames',false);
list_months_CV =  readtable('E:/学习资料/sports/new/list_months_CV.csv','Delimiter',',','ReadRowNames',false);
list_months_fc2 =  readtable('E:/学习资料/sports/new/list_months_fc2.csv','Delimiter',',','ReadRowNames',false);
list_weeks_CV =  readtable('E:/学习资料/sports/new/list_weeks_CV.csv','Delimiter',',','ReadRowNames',false);
list_weeks_CT =  readtable('E:/学习资料/sports/new/list_weeks_CT.csv','Delimiter',',','ReadRowNames',false);
list_weeks_fc2 =  readtable('E:/学习资料/sports/new/list_weeks_fc2.csv','Delimiter',',','ReadRowNames',false);
list_time_fc1 =  readtable('E:/学习资料/sports/new/list_time_fc1.csv','Delimiter',',','ReadRowNames',false);
list_time_fc2 =  readtable('E:/学习资料/sports/new/list_time_fc2.csv','Delimiter',',','ReadRowNames',false);
list_time_subcv =  readtable('E:/学习资料/sports/new/list_time_subcv.csv','Delimiter',',','ReadRowNames',false);
list_amount_CA =  readtable('E:/学习资料/sports/new/list_amount_CA.csv','Delimiter',',','ReadRowNames',false);
list_amount_fc1 =  readtable('E:/学习资料/sports/new/list_amount_fc1.csv','Delimiter',',','ReadRowNames',false);
list_amount_subcv =  readtable('E:/学习资料/sports/new/list_amount_subcv.csv','Delimiter',',','ReadRowNames',false);
list_onset_CT =  readtable('E:/学习资料/sports/new/list_onset_CT.csv','Delimiter',',','ReadRowNames',false);
list_onset_CV =  readtable('E:/学习资料/sports/new/list_onset_CV.csv','Delimiter',',','ReadRowNames',false);
list_onset_fc1 =  readtable('E:/学习资料/sports/new/list_onset_fc1.csv','Delimiter',',','ReadRowNames',false);

prs_simp_residual =  readtable('E:/学习资料/sports/new/prs_simp_residual.csv','ReadRowNames',true);
cbcl_prs_residual =  readtable('E:/学习资料/sports/new/cbcl_prs_residual.csv','ReadRowNames',true);
sports_01_prs_residual =  readtable('E:/学习资料/sports/new/sports_01_prs_residual.csv','ReadRowNames',true);
sports_years_prs_residual =  readtable('E:/学习资料/sports/new/sports_years_prs_residual.csv','ReadRowNames',true);
sports_months_prs_residual =  readtable('E:/学习资料/sports/new/sports_months_prs_residual.csv','ReadRowNames',true);
sports_weeks_prs_residual =  readtable('E:/学习资料/sports/new/sports_weeks_prs_residual.csv','ReadRowNames',true);
sports_time_prs_residual =  readtable('E:/学习资料/sports/new/sports_time_prs_residual.csv','ReadRowNames',true);
sports_amount_prs_residual =  readtable('E:/学习资料/sports/new/sports_amount_prs_residual.csv','ReadRowNames',true);
sports_onset_prs_residual =  readtable('E:/学习资料/sports/new/sports_onset_prs_residual.csv','ReadRowNames',true);


result=mediate_new(sports_baseline_onset_smri_residual,cbcl_baseline_smri_residual,CT_residual,list_onset_CT);
                                               
[data_m,id] = outerjoin(sports_2year_01,cbcl_2year,'Keys','Row');
[data_m,id] = outerjoin(data_m,covariate_2year_rsfmri,'Keys','Row');
[data_m,id] = outerjoin(data_m,fc2_2year,'Keys','Row');
[data_m,id] = outerjoin(data_m,yrb_2year,'Keys','Row');

result=table();
n=1;  
%a=size(list1);
%a1=a(1,1);
HAPO=string({"EUR","AFC","HIS","THAI","HK"})
for a=1:5
        x={'All_x'};
        %y=list{a,2};
        y={'OS_BIRTH_WEIGHT'};
        m={'MA_OGTT_GAUC'};
        %m=list_cord_CP{a,2};
        %c=string({x,y,m,'age','sex','race1','race2','race3','race4','income','puberty','educate','MFD','bmi'});
        c=string({x,y,m,'All_y','MA_OGTT_AGE','OS_OGTT_GA','OS_BIRTH_SEX','MA_PARITY','PC1','PC2','PC3','PC4','PC5'});
        %c=string({x,y,m,'age','sex','PC1','PC2','PC3','PC4','PC5','PC6','PC7','PC8','PC9','PC10'});
        data_m=data(data.HAPO_x==string(HAPO{a}),:)
        data_test=data_m(:,c);
        data_test=rmmissing(data_test);
        %try
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
%         end
        end  
end
end
end
writetable(sports_baseline_weeks_cbcl_baseline_fc1_10k,'E:/学习资料/sports/sports_baseline_weeks_cbcl_baseline_fc1_10k.csv','WriteRowNames',true);

exit





