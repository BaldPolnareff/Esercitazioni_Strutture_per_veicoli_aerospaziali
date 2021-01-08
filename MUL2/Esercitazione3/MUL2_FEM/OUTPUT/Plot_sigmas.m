clc; clear all; close all;

%% Z static

z.static = [-0.299999003E-02
-0.250000003E-02
-0.200000000E-02
-0.149999997E-02
-0.100000997E-02
-0.999990034E-03
-0.500000035E-03
-0.560700739E-19
 0.500000035E-03
 0.999990034E-03
 0.100000997E-02
 0.149999997E-02
 0.200000000E-02
 0.250000003E-02
 0.299999003E-02];

 


%% Sigma Static 

    % Sigma YY 90
    sigma.yy_90_LE = [ 0.863787184E+08
     0.719046799E+08
     0.574963906E+08
     0.431541417E+08
     0.288782192E+08
     0.189184622E+07
     0.945932605E+06
    -0.377685714E-03
    -0.945932606E+06
    -0.189184622E+07
    -0.288782192E+08
    -0.431541417E+08
    -0.574963906E+08
    -0.719046799E+08
    -0.863787184E+08];
    sigma.yy_90_TE_1 = [ 0.863096482E+08
     0.719249468E+08
     0.575399566E+08
     0.431549665E+08
     0.287702650E+08
     0.198052225E+07
     0.990271062E+06
     0.331310582E-08
    -0.990271062E+06
    -0.198052225E+07
    -0.287702650E+08
    -0.431549665E+08
    -0.575399566E+08
    -0.719249468E+08
    -0.863096482E+08];
    sigma.yy_90_TE_2 = [ 0.863158641E+08
     0.719301267E+08
     0.575441006E+08
     0.431580744E+08
     0.287723370E+08
     0.192438402E+07
     0.962201665E+06
    -0.163749772E-06
    -0.962201665E+06
    -0.192438402E+07
    -0.287723370E+08
    -0.431580744E+08
    -0.575441006E+08
    -0.719301267E+08
    -0.863158641E+08];
    sigma.yy_90_TE_3 = [ 0.863146837E+08
     0.719227499E+08
     0.575340144E+08
     0.431480687E+08
     0.287645041E+08
     0.189824196E+07
     0.949102083E+06
     0.538973510E-07
    -0.949102083E+06
    -0.189824196E+07
    -0.287645041E+08
    -0.431480687E+08
    -0.575340144E+08
    -0.719227499E+08
    -0.863146837E+08];
    sigma.yy_90_TE_4 = [ 0.863192442E+08
     0.719235474E+08
     0.575326868E+08
     0.431459265E+08
     0.287625299E+08
     0.189646659E+07
     0.948035643E+06
    -0.391298136E-06
    -0.948035643E+06
    -0.189646659E+07
    -0.287625299E+08
    -0.431459265E+08
    -0.575326868E+08
    -0.719235474E+08
    -0.863192442E+08];
    sigma.yy_90_TE_5 = [ 0.863579186E+08
     0.718938902E+08
     0.575089287E+08
     0.431469778E+08
     0.287789623E+08
     0.189792172E+07
     0.949255980E+06
     0.343894199E-05
    -0.949255980E+06
    -0.189792172E+07
    -0.287789623E+08
    -0.431469778E+08
    -0.575089287E+08
    -0.718938902E+08
    -0.863579186E+08];
    sigma.yy_90_TE_6 = [ 0.863463411E+08
     0.718938974E+08
     0.575090794E+08
     0.431442938E+08
     0.287748120E+08
     0.189501663E+07
     0.946873551E+06
     0.157843049E-04
    -0.946873551E+06
    -0.189501663E+07
    -0.287748120E+08
    -0.431442938E+08
    -0.575090794E+08
    -0.718938974E+08
    -0.863463411E+08];

    % Sigma YZ 90
    sigma.yz_90_LE = [0.229680235E+05
    0.752045610E+05
    0.127393633E+06
    0.179534191E+06
    0.231625189E+06
    0.225502733E+06
    0.225733023E+06
    0.225809788E+06
    0.225733023E+06
    0.225502733E+06
    0.231625189E+06
    0.179534191E+06
    0.127393633E+06
    0.752045610E+05
    0.229680235E+05];
    sigma.yz_90_TE_1 = [0.895104578E+05
    0.895104578E+05
    0.895104578E+05
    0.895104578E+05
    0.895104578E+05
    0.321003021E+06
    0.321003021E+06
    0.321003021E+06
    0.321003021E+06
    0.321003021E+06
    0.895104578E+05
    0.895104578E+05
    0.895104578E+05
    0.895104578E+05
    0.895104578E+05];
    sigma.yz_90_TE_2 = [0.107451876E+06
    0.107781893E+06
    0.108051912E+06
    0.108261928E+06
    0.108411936E+06
    0.388787651E+06
    0.389110425E+06
    0.389218019E+06
    0.389110425E+06
    0.388787651E+06
    0.108411936E+06
    0.108261928E+06
    0.108051912E+06
    0.107781893E+06
    0.107451876E+06];
    sigma.yz_90_TE_3 = [0.972165513E+05
    0.929483091E+05
    0.894560345E+05
    0.867398210E+05
    0.847996998E+05
    0.304109046E+06
    0.299934485E+06
    0.298542927E+06
    0.299934485E+06
    0.304109046E+06
    0.847996998E+05
    0.867398210E+05
    0.894560345E+05
    0.929483091E+05
    0.972165513E+05];
    sigma.yz_90_TE_4 = [0.980805922E+05
    0.938065995E+05
    0.903116929E+05
    0.875947221E+05
    0.856547508E+05
    0.307175436E+06
    0.303002189E+06
    0.301611234E+06
    0.303002189E+06
    0.307175436E+06
    0.856547508E+05
    0.875947221E+05
    0.903116929E+05
    0.938065995E+05
    0.980805922E+05];
    sigma.yz_90_TE_5 = [-0.562678573E+05
     0.110725358E+06
     0.160883037E+06
     0.146086552E+06
     0.106692741E+06
     0.382616365E+06
     0.256502934E+06
     0.207572470E+06
     0.256502934E+06
     0.382616365E+06
     0.106692741E+06
     0.146086552E+06
     0.160883037E+06
     0.110725358E+06
    -0.562678573E+05];
    sigma.yz_90_TE_6 = [-0.564855660E+05
     0.110559645E+06
     0.160731689E+06
     0.145927299E+06
     0.106516980E+06
     0.381986047E+06
     0.255820855E+06
     0.206870363E+06
     0.255820854E+06
     0.381986047E+06
     0.106516980E+06
     0.145927299E+06
     0.160731689E+06
     0.110559645E+06
    -0.564855660E+05];




    % Sigma YY 45
    sigma.yy_45_LE = [ 0.858715858E+08
     0.715051347E+08
     0.571806542E+08
     0.428984329E+08
     0.286587562E+08
     0.592787258E+07
     0.296396603E+07
    -0.173671268E-03
    -0.296396603E+07
    -0.592787258E+07
    -0.286587563E+08
    -0.428984329E+08
    -0.571806542E+08
    -0.715051347E+08
    -0.858715858E+08];
    sigma.yy_45_TE_1 = [ 0.860985837E+08
     0.717490591E+08
     0.573992465E+08
     0.430494339E+08
     0.286999093E+08
     0.380973594E+07
     0.190488708E+07
    -0.119996848E-07
    -0.190488708E+07
    -0.380973594E+07
    -0.286999093E+08
    -0.430494339E+08
    -0.573992465E+08
    -0.717490591E+08
    -0.860985837E+08];
    sigma.yy_45_TE_2 = [ 0.857889063E+08
     0.714909937E+08
     0.571927942E+08
     0.428945947E+08
     0.285966821E+08
     0.649079128E+07
     0.324542821E+07
    -0.265871766E-06
    -0.324542821E+07
    -0.649079128E+07
    -0.285966821E+08
    -0.428945947E+08
    -0.571927942E+08
    -0.714909937E+08
    -0.857889063E+08];
    sigma.yy_45_TE_3 = [ 0.858235242E+08
     0.715115886E+08
     0.572038677E+08
     0.428997484E+08
     0.285986173E+08
     0.592321323E+07
     0.296149582E+07
    -0.402767776E-07
    -0.296149582E+07
    -0.592321323E+07
    -0.285986173E+08
    -0.428997484E+08
    -0.572038677E+08
    -0.715115886E+08
    -0.858235242E+08];
    sigma.yy_45_TE_4 = [ 0.858242607E+08
     0.715105692E+08
     0.572019832E+08
     0.428977114E+08
     0.285969624E+08
     0.593968014E+07
     0.296952864E+07
    -0.453193003E-06
    -0.296952864E+07
    -0.593968014E+07
    -0.285969624E+08
    -0.428977114E+08
    -0.572019832E+08
    -0.715105692E+08
    -0.858242607E+08];
    sigma.yy_45_TE_5 = [ 0.858444008E+08
     0.714884549E+08
     0.571811458E+08
     0.428906620E+08
     0.286000669E+08
     0.593563943E+07
     0.296850745E+07
     0.683071041E-05
    -0.296850745E+07
    -0.593563943E+07
    -0.286000669E+08
    -0.428906620E+08
    -0.571811458E+08
    -0.714884549E+08
    -0.858444008E+08];
    sigma.yy_45_TE_6 = [ 0.858289687E+08
     0.714872133E+08
     0.571811709E+08
     0.428882012E+08
     0.285961478E+08
     0.593952403E+07
     0.296961464E+07
     0.227532977E-04
    -0.296961464E+07
    -0.593952403E+07
    -0.285961478E+08
    -0.428882012E+08
    -0.571811709E+08
    -0.714872133E+08
    -0.858289687E+08];

    % Sigma YZ 45
    sigma.yz_45_LE = [0.241661022E+05
    0.735797436E+05
    0.122954951E+06
    0.172290733E+06
    0.221586099E+06
    0.211547642E+06
    0.211665389E+06
    0.211704639E+06
    0.211665389E+06
    0.211547642E+06
    0.221586099E+06
    0.172290733E+06
    0.122954951E+06
    0.735797436E+05
    0.241661022E+05];
    sigma.yz_45_TE_1 = [0.121503298E+0
    0.121503298E+0
    0.121503298E+0
    0.121503298E+0
    0.121503298E+0
    0.257010435E+0
    0.257010435E+0
    0.257010435E+0
    0.257010435E+0
    0.257010435E+0
    0.121503298E+0
    0.121503298E+0
    0.121503298E+0
    0.121503298E+0
    0.121503298E+0];
    sigma.yz_45_TE_2 = [0.142180693E+06
    0.142508776E+06
    0.142777213E+06
    0.142985997E+06
    0.143135127E+06
    0.306617030E+06
    0.306822209E+06
    0.306890604E+06
    0.306822209E+06
    0.306617030E+06
    0.143135127E+06
    0.142985997E+06
    0.142777213E+06
    0.142508776E+06
    0.142180693E+06];
    sigma.yz_45_TE_3 = [0.510339575E+05
    0.791041790E+05
    0.102071227E+06
    0.119934485E+06
    0.132693751E+06
    0.252826946E+06
    0.261793771E+06
    0.264782793E+06
    0.261793771E+06
    0.252826946E+06
    0.132693751E+06
    0.119934485E+06
    0.102071227E+06
    0.791041790E+05
    0.510339575E+05];
    sigma.yz_45_TE_4 = [0.565178246E+05
    0.845953778E+05
    0.107569917E+06
    0.125439931E+06
    0.138204519E+06
    0.264957777E+06
    0.273926449E+06
    0.276916162E+06
    0.273926449E+06
    0.264957777E+06
    0.138204519E+06
    0.125439931E+06
    0.107569917E+06
    0.845953778E+05
    0.565178246E+05];
    sigma.yz_45_TE_5 = [-0.204659916E+05
     0.102983755E+06
     0.154945451E+06
     0.164842939E+06
     0.155564351E+06
     0.301325979E+06
     0.245625701E+06
     0.223549276E+06
     0.245625701E+06
     0.301325979E+06
     0.155564351E+06
     0.164842939E+06
     0.154945451E+06
     0.102983755E+06
    -0.204659916E+05];
    sigma.yz_45_TE_6 = [-0.205457442E+05
     0.102765233E+06
     0.154661543E+06
     0.164534984E+06
     0.155252268E+06
     0.300620196E+06
     0.244932795E+06
     0.222862669E+06
     0.244932795E+06
     0.300620196E+06
     0.155252268E+06
     0.164534984E+06
     0.154661543E+06
     0.102765233E+06
    -0.205457442E+05];




%% Sigma Thermal 

    % Sigma XX 90
    sigma.xx.thermal_90_LE = [ 0.299032614E+07
     0.276814308E+07
     0.284925904E+07
     0.323368154E+07
     0.392139373E+07
    -0.550426618E+07
    -0.102739814E+08
    -0.118639290E+08
    -0.102739814E+08
    -0.550426618E+07
     0.392139373E+07
     0.323368154E+07
     0.284925904E+07
     0.276814308E+07
     0.299032614E+07];
    sigma.xx.thermal_90_TE_1 = [ 0.307193349E+07
     0.307193349E+07
     0.307193349E+07
     0.307193349E+07
     0.307193349E+07
    -0.614258186E+07
    -0.614258186E+07
    -0.614258186E+07
    -0.614258186E+07
    -0.614258186E+07
     0.307193349E+07
     0.307193349E+07
     0.307193349E+07
     0.307193349E+07
     0.307193349E+07];
    sigma.xx.thermal_90_TE_2 = [ 0.278321721E+0
     0.277586199E+0
     0.276984395E+0
     0.276516326E+0
     0.276181996E+0
    -0.557210770E+0
    -0.557411366E+0
    -0.557478233E+0
    -0.557411366E+0
    -0.557210770E+0
     0.276181996E+0
     0.276516326E+0
     0.276984395E+0
     0.277586199E+0
     0.278321721E+0];
    sigma.xx.thermal_90_TE_3 = [ 0.305400899E+07
     0.292190213E+07
     0.281381233E+07
     0.272974249E+07
     0.266969357E+07
    -0.566259718E+07
    -0.569380240E+07
    -0.570420442E+07
    -0.569380240E+07
    -0.566259718E+07
     0.266969357E+07
     0.272974249E+07
     0.281381233E+07
     0.292190213E+07
     0.305400899E+07];
    sigma.xx.thermal_90_TE_4 = [ 0.249107752E+07
     0.308589782E+07
     0.307328940E+07
     0.275280963E+07
     0.235747091E+07
    -0.596833399E+07
    -0.626686022E+07
    -0.637746688E+07
    -0.626686022E+07
    -0.596833399E+07
     0.235747091E+07
     0.275280963E+07
     0.307328940E+07
     0.308589782E+07
     0.249107752E+07];
    sigma.xx.thermal_90_TE_5 = [ 0.202235996E+07
     0.315314448E+07
     0.328603578E+07
     0.289639296E+07
     0.235397857E+07
    -0.599647665E+07
    -0.642212886E+07
    -0.658110413E+07
    -0.642212886E+07
    -0.599647665E+07
     0.235397857E+07
     0.289639296E+07
     0.328603578E+07
     0.315314448E+07
     0.202235996E+07];
    sigma.xx.thermal_90_TE_6 = [ 0.367884376E+07
     0.254380330E+07
     0.341343267E+07
     0.319925881E+07
     0.173192417E+07
    -0.660713019E+07
    -0.824392710E+07
    -0.894033327E+07
    -0.824392710E+07
    -0.660713019E+07
     0.173192417E+07
     0.319925881E+07
     0.341343267E+07
     0.254380330E+07
     0.367884376E+07];

    % Sigma YY 90
    sigma.yy.thermal_90_LE = [ 0.235759965E+09
     0.228227527E+09
     0.230121634E+09
     0.241442534E+09
     0.262189713E+09
    -0.462449892E+09
    -0.474703605E+09
    -0.478788285E+09
    -0.474703605E+09
    -0.462449892E+09
     0.262189713E+09
     0.241442534E+09
     0.230121634E+09
     0.228227527E+09
     0.235759965E+09];
    sigma.yy.thermal_90_TE_1 = [ 0.236774329E+09
     0.236774329E+09
     0.236774329E+09
     0.236774329E+09
     0.236774329E+09
    -0.473544982E+09
    -0.473544982E+09
    -0.473544982E+09
    -0.473544982E+09
    -0.473544982E+09
     0.236774329E+09
     0.236774329E+09
     0.236774329E+09
     0.236774329E+09
     0.236774329E+09];
    sigma.yy.thermal_90_TE_2 = [ 0.232403821E+09
     0.232174870E+09
     0.231987541E+09
     0.231841841E+09
     0.231737772E+09
    -0.464043217E+09
    -0.464048307E+09
    -0.464050003E+09
    -0.464048307E+09
    -0.464043217E+09
     0.231737772E+09
     0.231841841E+09
     0.231987541E+09
     0.232174870E+09
     0.232403821E+09];
    sigma.yy.thermal_90_TE_3 = [ 0.232642422E+09
     0.232308157E+09
     0.232034661E+09
     0.231821942E+09
     0.231670002E+09
    -0.464134186E+09
    -0.464173274E+09
    -0.464186304E+09
    -0.464173274E+09
    -0.464134186E+09
     0.231670002E+09
     0.231821942E+09
     0.232034661E+09
     0.232308157E+09
     0.232642422E+09];
    sigma.yy.thermal_90_TE_4 = [ 0.212292332E+09
     0.236020691E+09
     0.239893411E+09
     0.233234948E+09
     0.223298429E+09
    -0.464857995E+09
    -0.465556471E+09
    -0.465817454E+09
    -0.465556471E+09
    -0.464857995E+09
     0.223298429E+09
     0.233234948E+09
     0.239893411E+09
     0.236020691E+09
     0.212292332E+09];
    sigma.yy.thermal_90_TE_5 = [ 0.211780067E+09
     0.236088915E+09
     0.240118717E+09
     0.233384637E+09
     0.223288151E+09
    -0.464860582E+09
    -0.465686946E+09
    -0.465997126E+09
    -0.465686946E+09
    -0.464860582E+09
     0.223288151E+09
     0.233384637E+09
     0.240118717E+09
     0.236088915E+09
     0.211780067E+09];
    sigma.yy.thermal_90_TE_6 = [ 0.268410910E+09
     0.217084398E+09
     0.244364873E+09
     0.246136517E+09
     0.210921565E+09
    -0.466082597E+09
    -0.469847066E+09
    -0.471471061E+09
    -0.469847066E+09
    -0.466082597E+09
     0.210921565E+09
     0.246136517E+09
     0.244364873E+09
     0.217084398E+09
     0.268410910E+09];

    % Sigma ZZ 90
    sigma.zz.thermal_90_LE = [ 0.866587993E+05
    -0.106328965E+06
     0.370379256E+04
     0.416763986E+06
     0.113283420E+07
    -0.602241177E+06
    -0.559566405E+07
    -0.726018289E+07
    -0.559566405E+07
    -0.602241177E+06
     0.113283420E+07
     0.416763986E+06
     0.370379256E+04
    -0.106328965E+06
     0.866587993E+05];
    sigma.zz.thermal_90_TE_1 = [-0.286958353E+06
    -0.286958353E+06
    -0.286958353E+06
    -0.286958353E+06
    -0.286958353E+06
     0.576942771E+06
     0.576942771E+06
     0.576942771E+06
     0.576942771E+06
     0.576942771E+06
    -0.286958353E+06
    -0.286958353E+06
    -0.286958353E+06
    -0.286958353E+06
    -0.286958353E+06];
    sigma.zz.thermal_90_TE_2 = [-0.287691321E+06
    -0.295046541E+06
    -0.301064579E+06
    -0.305745276E+06
    -0.309088577E+06
     0.532588490E+06
     0.530513975E+06
     0.529822451E+06
     0.530513975E+06
     0.532588490E+06
    -0.309088577E+06
    -0.305745276E+06
    -0.301064579E+06
    -0.295046541E+06
    -0.287691321E+06];
    sigma.zz.thermal_90_TE_3 = [ 0.385282913E+06
     0.686380778E+05
    -0.190440639E+06
    -0.391946304E+06
    -0.535876607E+06
     0.305821749E+06
     0.219396468E+06
     0.190587270E+06
     0.219396468E+06
     0.305821749E+06
    -0.535876607E+06
    -0.391946304E+06
    -0.190440639E+06
     0.686380778E+05
     0.385282913E+06];
    sigma.zz.thermal_90_TE_4 = [-0.423399100E+05
     0.298797482E+06
     0.786257661E+05
    -0.403292110E+06
    -0.913941909E+06
    -0.814075842E+05
    -0.463141641E+06
    -0.601864177E+06
    -0.463141641E+06
    -0.814075842E+05
    -0.913941909E+06
    -0.403292110E+06
     0.786257661E+05
     0.298797482E+06
    -0.423399100E+05];
    sigma.zz.thermal_90_TE_5 = [-0.120841290E+07
     0.455974748E+06
     0.598719721E+06
    -0.487895944E+05
    -0.917636603E+06
    -0.850966322E+05
    -0.777728818E+06
    -0.103608273E+07
    -0.777728818E+06
    -0.850966322E+05
    -0.917636603E+06
    -0.487895944E+05
     0.598719721E+06
     0.455974748E+06
    -0.120841290E+07];
    sigma.zz.thermal_90_TE_6 = [ 0.203470573E+06
    -0.152103892E+06
     0.711982418E+06
     0.932157277E+05
    -0.187754080E+07
    -0.105839450E+07
    -0.313870306E+07
    -0.400271164E+07
    -0.313870306E+07
    -0.105839450E+07
    -0.187754080E+07
     0.932157277E+05
     0.711982418E+06
    -0.152103892E+06
     0.203470573E+06];





    
    % Sigma XX 45
    sigma.xx.thermal_45_LE = [-0.896046073E+07
    -0.905848677E+07
    -0.900598852E+07
    -0.880296247E+07
    -0.844941726E+07
     0.255878333E+08
     0.143063589E+08
     0.105457668E+08
     0.143063589E+08
     0.255878333E+08
    -0.844941726E+07
    -0.880296247E+07
    -0.900598852E+07
    -0.905848677E+07
    -0.896046073E+07];
    sigma.xx.thermal_45_TE_1 = [-0.778206289E+08
    -0.778206289E+08
    -0.778206289E+08
    -0.778206289E+08
    -0.778206289E+08
     0.155764603E+09
     0.155764603E+09
     0.155764603E+09
     0.155764603E+09
     0.155764603E+09
    -0.778206289E+08
    -0.778206289E+08
    -0.778206289E+08
    -0.778206289E+08
    -0.778206289E+08];
    sigma.xx.thermal_45_TE_2 = [-0.911100182E+07
    -0.911485833E+07
    -0.911801373E+07
    -0.912046792E+07
    -0.912222089E+07
     0.181842922E+08
     0.181763785E+08
     0.181737406E+08
     0.181763785E+08
     0.181842922E+08
    -0.912222089E+07
    -0.912046792E+07
    -0.911801373E+07
    -0.911485833E+07
    -0.911100182E+07];
    sigma.xx.thermal_45_TE_3 = [-0.887454662E+07
    -0.898702069E+07
    -0.907904694E+07
    -0.915062291E+07
    -0.920174779E+07
     0.180963625E+08
     0.180411571E+08
     0.180227548E+08
     0.180411571E+08
     0.180963625E+08
    -0.920174779E+07
    -0.915062291E+07
    -0.907904694E+07
    -0.898702069E+07
    -0.887454662E+07];
    sigma.xx.thermal_45_TE_4 = [-0.920704597E+07
    -0.891096838E+07
    -0.892401646E+07
    -0.909301939E+07
    -0.929883247E+07
     0.183811472E+08
     0.173912695E+08
     0.170177921E+08
     0.173912695E+08
     0.183811472E+08
    -0.929883247E+07
    -0.909301939E+07
    -0.892401646E+07
    -0.891096838E+07
    -0.920704597E+07];
    sigma.xx.thermal_45_TE_5 = [-0.960081703E+07
    -0.890461317E+07
    -0.880163222E+07
    -0.901190119E+07
    -0.931764017E+07
     0.183746625E+08
     0.173248768E+08
     0.169254392E+08
     0.173248768E+08
     0.183746625E+08
    -0.931764017E+07
    -0.901190119E+07
    -0.880163222E+07
    -0.890461317E+07
    -0.960081703E+07];
    sigma.xx.thermal_45_TE_6 = [-0.869978073E+07
    -0.920604646E+07
    -0.886322123E+07
    -0.890318876E+07
    -0.942001099E+07
     0.197038956E+08
     0.161724827E+08
     0.145941487E+08
     0.161724827E+08
     0.197038956E+08
    -0.942001099E+07
    -0.890318876E+07
    -0.886322123E+07
    -0.920604646E+07
    -0.869978073E+07];

    % Sigma YY 45
    sigma.yy.thermal_45_LE = [ 0.210922073E+09
     0.207304760E+09
     0.208418717E+09
     0.214264063E+09
     0.224840539E+09
    -0.410103165E+09
    -0.424803359E+09
    -0.429703555E+09
    -0.424803359E+09
    -0.410103165E+09
     0.224840539E+09
     0.214264063E+09
     0.208418717E+09
     0.207304760E+09
     0.210922073E+09];
    sigma.yy.thermal_45_TE_1 = [ 0.310889652E+09
     0.310889652E+09
     0.310889652E+09
     0.310889652E+09
     0.310889652E+09
    -0.621791865E+09
    -0.621791865E+09
    -0.621791865E+09
    -0.621791865E+09
    -0.621791865E+09
     0.310889652E+09
     0.310889652E+09
     0.310889652E+09
     0.310889652E+09
     0.310889652E+09];
    sigma.yy.thermal_45_TE_2 = [ 0.209582793E+09
     0.209462749E+09
     0.209364528E+09
     0.209288134E+09
     0.209233568E+09
    -0.418632992E+09
    -0.418643329E+09
    -0.418646774E+09
    -0.418643329E+09
    -0.418632992E+09
     0.209233568E+09
     0.209288134E+09
     0.209364528E+09
     0.209462749E+09
     0.209582793E+09];
    sigma.yy.thermal_45_TE_3 = [ 0.209795434E+09
     0.209582191E+09
     0.209407715E+09
     0.209272012E+09
     0.209175083E+09
    -0.418712990E+09
    -0.418769436E+09
    -0.418788252E+09
    -0.418769436E+09
    -0.418712990E+09
     0.209175083E+09
     0.209272012E+09
     0.209407715E+09
     0.209582191E+09
     0.209795434E+09];
    sigma.yy.thermal_45_TE_4 = [ 0.198115431E+09
     0.211104370E+09
     0.213785026E+09
     0.210925188E+09
     0.206233545E+09
    -0.418649424E+09
    -0.419922666E+09
    -0.420403670E+09
    -0.419922666E+09
    -0.418649424E+09
     0.206233545E+09
     0.210925188E+09
     0.213785026E+09
     0.211104370E+09
     0.198115431E+09];
    sigma.yy.thermal_45_TE_5 = [ 0.197736051E+09
     0.211138975E+09
     0.213937199E+09
     0.211031195E+09
     0.206232860E+09
    -0.418654206E+09
    -0.419988402E+09
    -0.420495649E+09
    -0.419988402E+09
    -0.418654206E+09
     0.206232860E+09
     0.211031195E+09
     0.213937199E+09
     0.211138975E+09
     0.197736051E+09];
    sigma.yy.thermal_45_TE_6 = [ 0.227307464E+09
     0.202291592E+09
     0.212823244E+09
     0.216096266E+09
     0.205713243E+09
    -0.417357856E+09
    -0.421929167E+09
    -0.423973291E+09
    -0.421929167E+09
    -0.417357856E+09
     0.205713243E+09
     0.216096266E+09
     0.212823244E+09
     0.202291592E+09
     0.227307464E+09];

    % Sigma ZZ 45
    sigma.zz.thermal_45_LE = [ 0.637450883E+04
    -0.628261548E+05
     0.193806348E+05
     0.252997786E+06
     0.638016052E+06
    -0.128056220E+05
    -0.153891859E+07
    -0.204763652E+07
    -0.153891859E+07
    -0.128056220E+05
     0.638016052E+06
     0.252997786E+06
     0.193806348E+05
    -0.628261548E+05
     0.637450883E+04];
    sigma.zz.thermal_45_TE_1 = [-0.113105663E+06
    -0.113105663E+06
    -0.113105663E+06
    -0.113105663E+06
    -0.113105663E+06
     0.228892116E+06
     0.228892116E+06
     0.228892116E+06
     0.228892116E+06
     0.228892116E+06
    -0.113105663E+06
    -0.113105663E+06
    -0.113105663E+06
    -0.113105663E+06
    -0.113105663E+06];
    sigma.zz.thermal_45_TE_2 = [-0.242311030E+06
    -0.246167539E+06
    -0.249322934E+06
    -0.251777130E+06
    -0.253530099E+06
     0.464360736E+06
     0.463290389E+06
     0.462933597E+06
     0.463290389E+06
     0.464360736E+06
    -0.253530099E+06
    -0.251777130E+06
    -0.249322934E+06
    -0.246167539E+06
    -0.242311030E+06];
    sigma.zz.thermal_45_TE_3 = [ 0.330289719E+06
     0.676118706E+05
    -0.147311073E+06
    -0.314473359E+06
    -0.433873071E+06
     0.284049769E+06
     0.212437979E+06
     0.188566743E+06
     0.212437979E+06
     0.284049769E+06
    -0.433873071E+06
    -0.314473359E+06
    -0.147311073E+06
     0.676118706E+05
     0.330289719E+06];
    sigma.zz.thermal_45_TE_4 = [ 0.529829716E+05
     0.175496809E+06
     0.204389157E+05
    -0.259016087E+06
    -0.543722234E+06
     0.170145296E+06
    -0.368311344E+05
    -0.111596621E+06
    -0.368311344E+05
     0.170145296E+06
    -0.543722234E+06
    -0.259016087E+06
     0.204389157E+05
     0.175496809E+06
     0.529829716E+05];
    sigma.zz.thermal_45_TE_5 = [-0.838645260E+06
     0.225915032E+06
     0.334046170E+06
    -0.565457686E+05
    -0.589830044E+06
     0.124017466E+06
    -0.299856339E+06
    -0.458199889E+06
    -0.299856339E+06
     0.124017466E+06
    -0.589830044E+06
    -0.565457686E+05
     0.334046170E+06
     0.225915032E+06
    -0.838645260E+06];
    sigma.zz.thermal_45_TE_6 = [-0.124158606E+05
    -0.102891597E+06
     0.232078638E+06
    -0.305680214E+05
    -0.822461049E+06
    -0.112511424E+06
    -0.929946365E+06
    -0.126830526E+07
    -0.929946365E+06
    -0.112511424E+06
    -0.822461049E+06
    -0.305680214E+05
     0.232078638E+06
    -0.102891597E+06
    -0.124158606E+05];
  
%% Static plots (8)  

    % LE 90
    figure()
    plot(z.static, sigma.yy_90_LE, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Static Analysis - Sigma YY LE (90°)')
    legend('')

    figure()
    plot(z.static, sigma.yz_90_LE, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Static Analysis - Sigma YZ LE (90°)')
    legend('')

    % LE 45
    figure()
    plot(z.static, sigma.yy_45_LE, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Static Analysis - Sigma YY LE (45°)')
    legend('')

    figure()
    plot(z.static, sigma.yz_45_LE, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Static Analysis - Sigma YZ LE (45°)')
    legend('')

    % LE vs TE 90 (yy)
    figure()
    plot(z.static, sigma.yy_90_LE, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_90_TE_1, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_90_TE_2, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_90_TE_3, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_90_TE_4, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_90_TE_5, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_90_TE_6, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Static Analysis - Sigma YY (90°): LE vs TE')
    legend('')

    % LE vs TE 90 (yz)
    figure()
    plot(z.static, sigma.yz_90_LE, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_90_TE_1, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_90_TE_2, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_90_TE_3, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_90_TE_4, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_90_TE_5, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_90_TE_6, 'linewidth', 2)    
    xlabel('Z')
    ylabel('Sigma')
    title('Static Analysis - Sigma YZ (90°): LE vs TE')
    legend('')


    % LE vs TE 45 (yy)
    figure()
    plot(z.static, sigma.yy_45_LE, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_45_TE_1, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_45_TE_2, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_45_TE_3, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_45_TE_4, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_45_TE_5, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy_45_TE_6, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Static Analysis - Sigma YY (45°): LE vs TE')
    legend('')

    % LE vs TE 45 (yz)
    figure()
    plot(z.static, sigma.yz_45_LE, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_45_TE_1, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_45_TE_2, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_45_TE_3, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_45_TE_4, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_45_TE_5, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yz_45_TE_6, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Static Analysis - Sigma YZ (45°): LE vs TE')
    legend('')


%% Thermal plots (12)  

    % LE 90
    figure()
    plot(z.static, sigma.xx.thermal_90_LE, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma XX LE (90°)')
    legend('')
        
    figure()
    plot(z.static, sigma.yy.thermal_90_LE, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma YY LE (90°)')
    legend('')

    figure()
    plot(z.static, sigma.zz.thermal_90_LE, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma ZZ LE (90°)')
    legend('')

    % LE 45
    figure()
    plot(z.static, sigma.xx.thermal_45_LE, 'linewidth', 2)    
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma XX LE (45°)')
    legend('')
        
    figure()
    plot(z.static, sigma.yy.thermal_45_LE, 'linewidth', 2)    
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma YY LE (45°)')
    legend('')

    figure()
    plot(z.static, sigma.zz.thermal_45_LE, 'linewidth', 2)    
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma ZZ LE (45°)')
    legend('')
   
   
    % LE vs TE 90 (xx)
    figure()
    plot(z.static, sigma.xx.thermal_90_LE, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_90_TE_1, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_90_TE_2, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_90_TE_3, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_90_TE_4, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_90_TE_5, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_90_TE_6, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma XX (90°): LE vs TE')
    legend('')
    

    % LE vs TE 90 (yy)
    figure()
    plot(z.static, sigma.yy.thermal_90_LE, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_90_TE_1, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_90_TE_2, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_90_TE_3, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_90_TE_4, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_90_TE_5, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_90_TE_6, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma YY (90°): LE vs TE')
    legend('')
    
    % LE vs TE 90 (zz)
    figure()
    plot(z.static, sigma.zz.thermal_90_LE, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_90_TE_1, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_90_TE_2, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_90_TE_3, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_90_TE_4, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_90_TE_5, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_90_TE_6, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma ZZ (90°): LE vs TE')
    legend('')


    % LE vs TE 45 (xx)
    figure()
    plot(z.static, sigma.xx.thermal_45_LE, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_45_TE_1, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_45_TE_2, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_45_TE_3, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_45_TE_4, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_45_TE_5, 'linewidth', 2)
    hold on
    plot(z.static, sigma.xx.thermal_45_TE_6, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma XX (45°): LE vs TE')
    legend('')

    % LE vs TE 45 (yy)
    figure()
    plot(z.static, sigma.yy.thermal_45_LE, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_45_TE_1, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_45_TE_2, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_45_TE_3, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_45_TE_4, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_45_TE_5, 'linewidth', 2)
    hold on
    plot(z.static, sigma.yy.thermal_45_TE_6, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma YY (45°): LE vs TE')
    legend('')

    % LE vs TE 45 (zz)
    figure()
    plot(z.static, sigma.zz.thermal_45_LE, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_45_TE_1, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_45_TE_2, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_45_TE_3, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_45_TE_4), 'linewidth', 2
    hold on
    plot(z.static, sigma.zz.thermal_45_TE_5, 'linewidth', 2)
    hold on
    plot(z.static, sigma.zz.thermal_45_TE_6, 'linewidth', 2)
    xlabel('Z')
    ylabel('Sigma')
    title('Thermal Analysis - Sigma ZZ (45°): LE vs TE')
    legend('')
  
  
  

  
  
  
  
  
  
  
  
