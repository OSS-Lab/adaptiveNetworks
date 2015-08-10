% File generated by Facile version 0.53a
%
function dydt = G028_I00_odes(t, y)

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
G080200 = y(5);
G080200_TG00001i00 = y(6);
G0000_G0401i00 = y(7);
G0000_G0401_TG00000i00 = y(8);
G0000_G080200i00 = y(9);
G0000_G080200_TG00001i00 = y(10);
G0000_G080200i01 = y(11);
G0000_G080200_TG00001i01 = y(12);
G0000 = y(13);
G0000_G080200i02 = y(14);
LG0000 = y(15);
G0000_LG0000i00 = y(16);
G0000_G0000_G080200i00 = y(17);
G0000_G0000_G080200i01 = y(18);
G0000_G0000_G080200i02 = y(19);
G0000_G0401_LG0000i00 = y(20);
G0000_G080200_LG0000i00 = y(21);
G0000_G080200_LG0000i01 = y(22);
G0000_G080200_LG0000i02 = y(23);

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
fb03 = ode_rate_constants(9);
bb03 = ode_rate_constants(10);
fb04 = ode_rate_constants(11);
bb04 = ode_rate_constants(12);
fb05 = ode_rate_constants(13);
bb05 = ode_rate_constants(14);
fb06 = ode_rate_constants(15);
bb06 = ode_rate_constants(16);
clamp_sink_LG0000 = ode_rate_constants(17);



% dynamic rate expressions
%clamp_source_LG0000 = (+(event_flags(1) && ~event_flags(5))*min((t-event_times(1))/1, 1)*(0.642517731173914)*4.0+event_flags(5)*max(1-(t-event_times(5))/1, 0)*(-395.519817410537)*4.0+(event_flags(2) && ~event_flags(6))*min((t-event_times(2))/1, 1)*(5.19079299957468)*4.0+event_flags(6)*max(1-(t-event_times(6))/1, 0)*(0)*4.0+(event_flags(3) && ~event_flags(7))*min((t-event_times(3))/1, 1)*(73.1184497311783)*4.0+event_flags(7)*max(1-(t-event_times(7))/1, 0)*(0)*4.0+(event_flags(4) && ~event_flags(8))*min((t-event_times(4))/1, 1)*(316.56795694861)*4.0+event_flags(8)*max(1-(t-event_times(8))/1, 0)*(0)*4.0);

clamp_source_LG0000 = (0.1*4.0+(event_flags(1) && ~event_flags(2))*min((t-event_times(1))/1, 1)*(1)*4.0...
    +event_flags(2)*max(1-(t-event_times(2))/1, 0)*(1)*4.0...
    +(event_flags(3) && ~event_flags(4))*min((t-event_times(3))/1, 1)*(10)*4.0...
    +event_flags(4)*max(1-(t-event_times(4))/1, 0)*(10)*4.0...
    +(event_flags(5) && ~event_flags(6))*min((t-event_times(5))/1, 1)*(100)*4.0...
    +event_flags(6)*max(1-(t-event_times(6))/1, 0)*(100)*4.0...
    +(event_flags(7) && ~event_flags(8))*min((t-event_times(7))/1, 1)*(1000)*4.0...
    +event_flags(8)*max(1-(t-event_times(8))/1, 0)*(1000)*4.0);

% differential equations for independent species
dydt(size(y,1),1) = 0;
dydt(1)= + bb00*G0401_TG00000i00 + kp00*G0401_TG00000i00 + bb02*G0000_G0401i00 + bb02*G0000_G0401_LG0000i00 - fb00*G0401*TG00000 - fb02*G0000*G0401 - fb02*G0401*G0000_LG0000i00 ;
dydt(2)= + bb00*G0401_TG00000i00 + kp01*G080200_TG00001i00 + bb00*G0000_G0401_TG00000i00 + kp01*G0000_G080200_TG00001i00 + kp01*G0000_G080200_TG00001i01 - fb00*G0401*TG00000 - fb00*G0000_G0401i00*TG00000 ;
dydt(3)= + fb00*G0401*TG00000 + bb02*G0000_G0401_TG00000i00 - bb00*G0401_TG00000i00 - kp00*G0401_TG00000i00 - fb02*G0000*G0401_TG00000i00 ;
dydt(4)= + kp00*G0401_TG00000i00 + bb01*G080200_TG00001i00 + kp00*G0000_G0401_TG00000i00 + bb01*G0000_G080200_TG00001i00 + bb01*G0000_G080200_TG00001i01 - fb01*G080200*TG00001 - fb01*G0000_G080200i00*TG00001 - fb01*G0000_G080200i01*TG00001 ;
dydt(5)= + bb01*G080200_TG00001i00 + kp01*G080200_TG00001i00 + bb03*G0000_G080200i00 + bb04*G0000_G080200i01 + bb05*G0000_G080200i02 + bb03*G0000_G080200_LG0000i00 + bb04*G0000_G080200_LG0000i01 + bb05*G0000_G080200_LG0000i02 - fb01*G080200*TG00001 - fb03*G0000*G080200 - fb04*G0000*G080200 - fb05*G0000*G080200 - fb03*G080200*G0000_LG0000i00 - fb04*G080200*G0000_LG0000i00 - fb05*G080200*G0000_LG0000i00 ;
dydt(6)= + fb01*G080200*TG00001 + bb03*G0000_G080200_TG00001i00 + bb04*G0000_G080200_TG00001i01 - bb01*G080200_TG00001i00 - kp01*G080200_TG00001i00 - fb03*G0000*G080200_TG00001i00 - fb04*G0000*G080200_TG00001i00 ;
dydt(7)= + bb00*G0000_G0401_TG00000i00 + kp00*G0000_G0401_TG00000i00 + fb02*G0000*G0401 + bb06*G0000_G0401_LG0000i00 - fb00*G0000_G0401i00*TG00000 - bb02*G0000_G0401i00 - fb06*LG0000*G0000_G0401i00 ;
dydt(8)= + fb00*G0000_G0401i00*TG00000 + fb02*G0000*G0401_TG00000i00 - bb00*G0000_G0401_TG00000i00 - kp00*G0000_G0401_TG00000i00 - bb02*G0000_G0401_TG00000i00 ;
dydt(9)= + bb01*G0000_G080200_TG00001i00 + kp01*G0000_G080200_TG00001i00 + fb03*G0000*G080200 + bb04*G0000_G0000_G080200i00 + bb05*G0000_G0000_G080200i01 + bb06*G0000_G080200_LG0000i00 - fb01*G0000_G080200i00*TG00001 - bb03*G0000_G080200i00 - fb04*G0000*G0000_G080200i00 - fb05*G0000*G0000_G080200i00 - fb06*LG0000*G0000_G080200i00 ;
dydt(10)= + fb01*G0000_G080200i00*TG00001 + fb03*G0000*G080200_TG00001i00 - bb01*G0000_G080200_TG00001i00 - kp01*G0000_G080200_TG00001i00 - bb03*G0000_G080200_TG00001i00 ;
dydt(11)= + bb01*G0000_G080200_TG00001i01 + kp01*G0000_G080200_TG00001i01 + fb04*G0000*G080200 + bb03*G0000_G0000_G080200i00 + bb05*G0000_G0000_G080200i02 + bb06*G0000_G080200_LG0000i01 - fb01*G0000_G080200i01*TG00001 - bb04*G0000_G080200i01 - fb03*G0000*G0000_G080200i01 - fb05*G0000*G0000_G080200i01 - fb06*LG0000*G0000_G080200i01 ;
dydt(12)= + fb01*G0000_G080200i01*TG00001 + fb04*G0000*G080200_TG00001i00 - bb01*G0000_G080200_TG00001i01 - kp01*G0000_G080200_TG00001i01 - bb04*G0000_G080200_TG00001i01 ;
dydt(13)= + bb02*G0000_G0401i00 + bb03*G0000_G080200i00 + bb04*G0000_G080200i01 + bb05*G0000_G080200i02 + bb06*G0000_LG0000i00 + bb04*G0000_G0000_G080200i00 + bb05*G0000_G0000_G080200i01 + bb03*G0000_G0000_G080200i00 + bb05*G0000_G0000_G080200i02 + bb03*G0000_G0000_G080200i01 + bb04*G0000_G0000_G080200i02 + bb02*G0000_G0401_TG00000i00 + bb03*G0000_G080200_TG00001i00 + bb04*G0000_G080200_TG00001i01 - fb02*G0000*G0401 - fb03*G0000*G080200 - fb04*G0000*G080200 - fb05*G0000*G080200 - fb06*G0000*LG0000 - fb04*G0000*G0000_G080200i00 - fb05*G0000*G0000_G080200i00 - fb03*G0000*G0000_G080200i01 - fb05*G0000*G0000_G080200i01 - fb03*G0000*G0000_G080200i02 - fb04*G0000*G0000_G080200i02 - fb02*G0000*G0401_TG00000i00 - fb03*G0000*G080200_TG00001i00 - fb04*G0000*G080200_TG00001i00 ;
dydt(14)= + fb05*G0000*G080200 + bb03*G0000_G0000_G080200i01 + bb04*G0000_G0000_G080200i02 + bb06*G0000_G080200_LG0000i02 - bb05*G0000_G080200i02 - fb03*G0000*G0000_G080200i02 - fb04*G0000*G0000_G080200i02 - fb06*LG0000*G0000_G080200i02 ;
dydt(15)= + bb06*G0000_LG0000i00 + bb06*G0000_G0401_LG0000i00 + bb06*G0000_G080200_LG0000i00 + bb06*G0000_G080200_LG0000i01 + bb06*G0000_G080200_LG0000i02 + clamp_source_LG0000 - fb06*G0000*LG0000 - fb06*LG0000*G0000_G0401i00 - fb06*LG0000*G0000_G080200i00 - fb06*LG0000*G0000_G080200i01 - fb06*LG0000*G0000_G080200i02 - clamp_sink_LG0000*LG0000 ;
dydt(16)= + fb06*G0000*LG0000 + bb02*G0000_G0401_LG0000i00 + bb03*G0000_G080200_LG0000i00 + bb04*G0000_G080200_LG0000i01 + bb05*G0000_G080200_LG0000i02 - bb06*G0000_LG0000i00 - fb02*G0401*G0000_LG0000i00 - fb03*G080200*G0000_LG0000i00 - fb04*G080200*G0000_LG0000i00 - fb05*G080200*G0000_LG0000i00 ;
dydt(17)= + fb04*G0000*G0000_G080200i00 + fb03*G0000*G0000_G080200i01 - bb04*G0000_G0000_G080200i00 - bb03*G0000_G0000_G080200i00 ;
dydt(18)= + fb05*G0000*G0000_G080200i00 + fb03*G0000*G0000_G080200i02 - bb05*G0000_G0000_G080200i01 - bb03*G0000_G0000_G080200i01 ;
dydt(19)= + fb05*G0000*G0000_G080200i01 + fb04*G0000*G0000_G080200i02 - bb05*G0000_G0000_G080200i02 - bb04*G0000_G0000_G080200i02 ;
dydt(20)= + fb02*G0401*G0000_LG0000i00 + fb06*LG0000*G0000_G0401i00 - bb02*G0000_G0401_LG0000i00 - bb06*G0000_G0401_LG0000i00 ;
dydt(21)= + fb03*G080200*G0000_LG0000i00 + fb06*LG0000*G0000_G080200i00 - bb03*G0000_G080200_LG0000i00 - bb06*G0000_G080200_LG0000i00 ;
dydt(22)= + fb04*G080200*G0000_LG0000i00 + fb06*LG0000*G0000_G080200i01 - bb04*G0000_G080200_LG0000i01 - bb06*G0000_G080200_LG0000i01 ;
dydt(23)= + fb05*G080200*G0000_LG0000i00 + fb06*LG0000*G0000_G080200i02 - bb05*G0000_G080200_LG0000i02 - bb06*G0000_G080200_LG0000i02 ;


ode_end_time = cputime;
ode_tot_cputime = ode_tot_cputime + (ode_end_time - ode_start_time);
