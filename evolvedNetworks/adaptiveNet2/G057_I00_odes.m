% File generated by Facile version 0.53a
%
function dydt = G057_I00_odes(t, y)

global event_flags;
global event_times

global ode_tot_cputime;
global ode_num_calls;
ode_start_time = cputime;
ode_num_calls = ode_num_calls + 1;
% state vector to node mapping
G0401 = y(1);
TG00000 = y(2);
G0401_TG00000i00 = y(3);
TG00001 = y(4);
G0976R = y(5);
G0976R_TG00001i01 = y(6);
G0976R_TG00000i00 = y(7);
G0976T = y(8);
G0976T_TG00001i01 = y(9);
G0976T_TG00000i00 = y(10);
G0000_G0401i00 = y(11);
G0000_G0401_TG00000i00 = y(12);
G0000_G0976Ri00 = y(13);
G0000_G0976R_TG00000i00 = y(14);
G0000_G0976Ti00 = y(15);
G0000_G0976T_TG00000i00 = y(16);
G0000 = y(17);
LG0000 = y(18);
G0000_LG0000i00 = y(19);
G0000_G0401_LG0000i00 = y(20);
G0000_G0976R_LG0000i00 = y(21);
G0000_G0976T_LG0000i00 = y(22);

% constants and constant expressions
global ode_rate_constants;
fb00 = ode_rate_constants(1);
bb00 = ode_rate_constants(2);
kp00 = ode_rate_constants(3);
fb01 = ode_rate_constants(4);
bb01 = ode_rate_constants(5);
kp01 = ode_rate_constants(6);
fb02 = ode_rate_constants(7);
bb02 = ode_rate_constants(8);
kp02 = ode_rate_constants(9);
fb03 = ode_rate_constants(10);
bb03 = ode_rate_constants(11);
kp03 = ode_rate_constants(12);
fb04 = ode_rate_constants(13);
bb04 = ode_rate_constants(14);
fb05 = ode_rate_constants(15);
bb05 = ode_rate_constants(16);
fb06 = ode_rate_constants(17);
bb06 = ode_rate_constants(18);
fu00 = ode_rate_constants(19);
bu00 = ode_rate_constants(20);
fu01 = ode_rate_constants(21);
bu01 = ode_rate_constants(22);
clamp_sink_LG0000 = ode_rate_constants(23);



% dynamic rate expressions
clamp_source_LG0000 = (+(event_flags(1) && ~event_flags(5))*min((t-event_times(1))/1, 1)*(0.759770129010352)*4.0+event_flags(5)*max(1-(t-event_times(5))/1, 0)*(-57.2376423984521)*4.0+(event_flags(2) && ~event_flags(6))*min((t-event_times(2))/1, 1)*(0.027259127957393)*4.0+event_flags(6)*max(1-(t-event_times(6))/1, 0)*(0)*4.0+(event_flags(3) && ~event_flags(7))*min((t-event_times(3))/1, 1)*(23.068741709984)*4.0+event_flags(7)*max(1-(t-event_times(7))/1, 0)*(0)*4.0+(event_flags(4) && ~event_flags(8))*min((t-event_times(4))/1, 1)*(33.3817714315003)*4.0+event_flags(8)*max(1-(t-event_times(8))/1, 0)*(0)*4.0);

% differential equations for independent species
dydt(size(y,1),1) = 0;
dydt(1)= + bb00*G0401_TG00000i00 + kp00*G0401_TG00000i00 + bb04*G0000_G0401i00 + bb04*G0000_G0401_LG0000i00 - fb00*G0401*TG00000 - fb04*G0000*G0401 - fb04*G0401*G0000_LG0000i00 ;
dydt(2)= + bb00*G0401_TG00000i00 + kp01*G0976R_TG00001i01 + bb02*G0976R_TG00000i00 + kp01*G0976T_TG00001i01 + bb03*G0976T_TG00000i00 + bb00*G0000_G0401_TG00000i00 + bb02*G0000_G0976R_TG00000i00 + bb03*G0000_G0976T_TG00000i00 - fb00*G0401*TG00000 - fb02*G0976R*TG00000 - fb03*G0976T*TG00000 - fb00*G0000_G0401i00*TG00000 - fb02*G0000_G0976Ri00*TG00000 - fb03*G0000_G0976Ti00*TG00000 ;
dydt(3)= + fb00*G0401*TG00000 + bb04*G0000_G0401_TG00000i00 - bb00*G0401_TG00000i00 - kp00*G0401_TG00000i00 - fb04*G0000*G0401_TG00000i00 ;
dydt(4)= + kp00*G0401_TG00000i00 + bb01*G0976R_TG00001i01 + kp02*G0976R_TG00000i00 + bb01*G0976T_TG00001i01 + kp03*G0976T_TG00000i00 + kp00*G0000_G0401_TG00000i00 + kp02*G0000_G0976R_TG00000i00 + kp03*G0000_G0976T_TG00000i00 - fb01*G0976R*TG00001 - fb01*G0976T*TG00001 ;
dydt(5)= + bb01*G0976R_TG00001i01 + kp01*G0976R_TG00001i01 + bb02*G0976R_TG00000i00 + kp02*G0976R_TG00000i00 + bb05*G0000_G0976Ri00 + bb05*G0000_G0976R_LG0000i00 + bu00*G0976T - fb01*G0976R*TG00001 - fb02*G0976R*TG00000 - fb05*G0000*G0976R - fb05*G0976R*G0000_LG0000i00 - fu00*G0976R ;
dydt(6)= + fb01*G0976R*TG00001 + bu00*G0976T_TG00001i01 - bb01*G0976R_TG00001i01 - kp01*G0976R_TG00001i01 - fu00*G0976R_TG00001i01 ;
dydt(7)= + fb02*G0976R*TG00000 + bb05*G0000_G0976R_TG00000i00 + bu01*G0976T_TG00000i00 - bb02*G0976R_TG00000i00 - kp02*G0976R_TG00000i00 - fb05*G0000*G0976R_TG00000i00 - fu01*G0976R_TG00000i00 ;
dydt(8)= + bb01*G0976T_TG00001i01 + kp01*G0976T_TG00001i01 + bb03*G0976T_TG00000i00 + kp03*G0976T_TG00000i00 + bb05*G0000_G0976Ti00 + bb05*G0000_G0976T_LG0000i00 + fu00*G0976R - fb01*G0976T*TG00001 - fb03*G0976T*TG00000 - fb05*G0000*G0976T - fb05*G0976T*G0000_LG0000i00 - bu00*G0976T ;
dydt(9)= + fb01*G0976T*TG00001 + fu00*G0976R_TG00001i01 - bb01*G0976T_TG00001i01 - kp01*G0976T_TG00001i01 - bu00*G0976T_TG00001i01 ;
dydt(10)= + fb03*G0976T*TG00000 + bb05*G0000_G0976T_TG00000i00 + fu01*G0976R_TG00000i00 - bb03*G0976T_TG00000i00 - kp03*G0976T_TG00000i00 - fb05*G0000*G0976T_TG00000i00 - bu01*G0976T_TG00000i00 ;
dydt(11)= + bb00*G0000_G0401_TG00000i00 + kp00*G0000_G0401_TG00000i00 + fb04*G0000*G0401 + bb06*G0000_G0401_LG0000i00 - fb00*G0000_G0401i00*TG00000 - bb04*G0000_G0401i00 - fb06*LG0000*G0000_G0401i00 ;
dydt(12)= + fb00*G0000_G0401i00*TG00000 + fb04*G0000*G0401_TG00000i00 - bb00*G0000_G0401_TG00000i00 - kp00*G0000_G0401_TG00000i00 - bb04*G0000_G0401_TG00000i00 ;
dydt(13)= + bb02*G0000_G0976R_TG00000i00 + kp02*G0000_G0976R_TG00000i00 + fb05*G0000*G0976R + bb06*G0000_G0976R_LG0000i00 + bu00*G0000_G0976Ti00 - fb02*G0000_G0976Ri00*TG00000 - bb05*G0000_G0976Ri00 - fb06*LG0000*G0000_G0976Ri00 - fu00*G0000_G0976Ri00 ;
dydt(14)= + fb02*G0000_G0976Ri00*TG00000 + fb05*G0000*G0976R_TG00000i00 + bu01*G0000_G0976T_TG00000i00 - bb02*G0000_G0976R_TG00000i00 - kp02*G0000_G0976R_TG00000i00 - bb05*G0000_G0976R_TG00000i00 - fu01*G0000_G0976R_TG00000i00 ;
dydt(15)= + bb03*G0000_G0976T_TG00000i00 + kp03*G0000_G0976T_TG00000i00 + fb05*G0000*G0976T + bb06*G0000_G0976T_LG0000i00 + fu00*G0000_G0976Ri00 - fb03*G0000_G0976Ti00*TG00000 - bb05*G0000_G0976Ti00 - fb06*LG0000*G0000_G0976Ti00 - bu00*G0000_G0976Ti00 ;
dydt(16)= + fb03*G0000_G0976Ti00*TG00000 + fb05*G0000*G0976T_TG00000i00 + fu01*G0000_G0976R_TG00000i00 - bb03*G0000_G0976T_TG00000i00 - kp03*G0000_G0976T_TG00000i00 - bb05*G0000_G0976T_TG00000i00 - bu01*G0000_G0976T_TG00000i00 ;
dydt(17)= + bb04*G0000_G0401i00 + bb05*G0000_G0976Ri00 + bb05*G0000_G0976Ti00 + bb06*G0000_LG0000i00 + bb04*G0000_G0401_TG00000i00 + bb05*G0000_G0976R_TG00000i00 + bb05*G0000_G0976T_TG00000i00 - fb04*G0000*G0401 - fb05*G0000*G0976R - fb05*G0000*G0976T - fb06*G0000*LG0000 - fb04*G0000*G0401_TG00000i00 - fb05*G0000*G0976R_TG00000i00 - fb05*G0000*G0976T_TG00000i00 ;
dydt(18)= + bb06*G0000_LG0000i00 + bb06*G0000_G0401_LG0000i00 + bb06*G0000_G0976R_LG0000i00 + bb06*G0000_G0976T_LG0000i00 + clamp_source_LG0000 - fb06*G0000*LG0000 - fb06*LG0000*G0000_G0401i00 - fb06*LG0000*G0000_G0976Ri00 - fb06*LG0000*G0000_G0976Ti00 - clamp_sink_LG0000*LG0000 ;
dydt(19)= + fb06*G0000*LG0000 + bb04*G0000_G0401_LG0000i00 + bb05*G0000_G0976R_LG0000i00 + bb05*G0000_G0976T_LG0000i00 - bb06*G0000_LG0000i00 - fb04*G0401*G0000_LG0000i00 - fb05*G0976R*G0000_LG0000i00 - fb05*G0976T*G0000_LG0000i00 ;
dydt(20)= + fb04*G0401*G0000_LG0000i00 + fb06*LG0000*G0000_G0401i00 - bb04*G0000_G0401_LG0000i00 - bb06*G0000_G0401_LG0000i00 ;
dydt(21)= + fb05*G0976R*G0000_LG0000i00 + fb06*LG0000*G0000_G0976Ri00 + bu00*G0000_G0976T_LG0000i00 - bb05*G0000_G0976R_LG0000i00 - bb06*G0000_G0976R_LG0000i00 - fu00*G0000_G0976R_LG0000i00 ;
dydt(22)= + fb05*G0976T*G0000_LG0000i00 + fb06*LG0000*G0000_G0976Ti00 + fu00*G0000_G0976R_LG0000i00 - bb05*G0000_G0976T_LG0000i00 - bb06*G0000_G0976T_LG0000i00 - bu00*G0000_G0976T_LG0000i00 ;


ode_end_time = cputime;
ode_tot_cputime = ode_tot_cputime + (ode_end_time - ode_start_time);
