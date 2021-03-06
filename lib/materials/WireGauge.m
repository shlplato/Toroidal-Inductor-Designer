function WP = WireGauge(awg)

%  Define AWG diameter
diam=[...
    11.68400 ...
    10.40384 ...
     9.26592 ...
     8.25246 ...
     7.34822 ...
     6.54304 ...
     5.82676 ...
     5.18922 ...
     4.62026 ...
     4.11480 ...
     3.66522 ...
     3.26390 ...
     2.90576 ...
     2.58826 ...
     2.30378 ...
     2.05232 ...
     1.82880 ...
     1.62814 ...
     1.45034 ...
     1.29032 ...
     1.15062 ...
     1.02362 ...
     0.91186 ...
     0.81280 ...
     0.72390 ...
     0.64516 ...
     0.57404 ...
     0.51054 ...
     0.45466 ...
     0.40386 ...
     0.36068 ...
     0.32004 ...
     0.28702 ...
     0.25400 ...
     0.22606 ...
     0.20320 ...
     0.18034 ...
     0.16002 ...
     0.14224 ...
     0.12700 ...
     0.11430 ...
     0.10160 ...
     0.08890 ...
     0.07874]*1e-3;

%  Define AWG gauge
gauge={'4/0';'3/0';'2/0';'1/0';' 1 ';' 2 ';' 3 ';' 4 ';' 5 '; ...
       ' 6 ';' 7 ';' 8 ';' 9 ';' 10';' 11';' 12';' 13';' 14'; ...
       ' 15';' 16';' 17';' 18';' 19';' 20';' 21';' 22';' 23'; ...
       ' 24';' 25';' 26';' 27';' 28';' 29';' 30';' 31';' 32'; ...
       ' 33';' 34';' 35';' 36';' 37';' 38';' 39';' 40'};

idx = find(ismember(gauge,awg));
%  Define outputs
WP.desc=gauge(idx,:);
WP.diam=diam(idx);
WP.rad=WP.diam/2.0;
WP.area=pi*(0.5*WP.diam).^2;
end