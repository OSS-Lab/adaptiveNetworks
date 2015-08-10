##########################################################################
# Allosteric Network Compiler (ANC) model file
# Created by BioJazz version ALPHA-02 released on 2012/06/15
# 2015年 5月29日 星期五 17时07分23秒 BST
##########################################################################

##########################################################################
# PARAMETERS
##########################################################################
$max_external_iterations = -1
$max_internal_iterations = -1
$max_complex_size = 3
$max_species = 512
$max_csite_bound_to_msite_number = 1
$default_steric_factor = 1000
$export_graphviz = "network,collapse_states,collapse_complexes"
        

##########################################################################
# OBJECTS:
##########################################################################
#-------------------------
MODEL:  # G0000
#-------------------------
ReactionSite : {
    name => "PD0057",
    type => "csite",
    Keq_ratio => 0.0368943549608464,
}

ReactionSite : {
    name => "PD0227",
    type => "bsite",
    Keq_ratio => 3.41762446707405,
}
AllostericStructure : {
    name => "D0022",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.0255062796122623,1.43998434710856],
    Phi => 0.965786901270772,
    elements => [PD0057,PD0227],
}
Structure : {  # IC of G0000 = 14.9952281952981
    name => "G0000",
    elements => [D0022],
    max_count => 2,
}


ReactionSite : {
    name => "PD0458",
    type => "csite",
    Keq_ratio => 5.12480587696093,
}

ReactionSite : {
    name => "PD0628",
    type => "csite",
    Keq_ratio => 5.12480587696093,
}

ReactionSite : {
    name => "PD0798",
    type => "csite",
    Keq_ratio => 3.18012208413074,
}
AllostericStructure : {
    name => "D0423",
    allosteric_flag => 0,
    allosteric_transition_rates => [2.49385928681132,3.18012208413074],
    Phi => 0.989247311827957,
    elements => [PD0458,PD0628,PD0798],
}
Structure : {  # IC of G0401 = 32.8192787251147
    name => "G0401",
    elements => [D0423],
    max_count => 2,
}


ReactionSite : {
    name => "PD1033",
    type => "csite",
    Keq_ratio => 0.0116538966746477,
}
AllostericStructure : {
    name => "D0998",
    allosteric_flag => 1,
    allosteric_transition_rates => [0.353498110503011,2.13993598573474],
    Phi => 0.814271749755621,
    elements => [PD1033],
}

ReactionSite : {
    name => "PD1238",
    type => "csite",
    Keq_ratio => 0.0110410595610039,
}
AllostericStructure : {
    name => "D1203",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.0785969457073916,59.3220337033057],
    Phi => 0.00391006842619746,
    elements => [PD1238],
}
Structure : {  # IC of G0976 = 1.02046391942289
    name => "G0976",
    elements => [D0998,D1203],
    max_count => 2,
}


# Initial concentrations
Init : {
	structure => G0000,
	IC => 14.9952281952981,
}
Init : {
	structure => G0401,
	IC => 32.8192787251147,
}
Init : {
	structure => G0976,
	IC => 1.02046391942289,
}

#-------------------------
MODEL:  # LG0000
#-------------------------
ReactionSite : {
    name => "LPD0057",
    type => "bsite",
    Keq_ratio => 0.01,
}
AllostericStructure : {
    name => "LD0022",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.01,0.01],
    Phi => 0,
    elements => [LPD0057],
}
Structure : {  # IC of LG0000 = 0.001
    name => "LG0000",
    elements => [LD0022],
    max_count => 2,
}


# Initial concentrations
Init : {
	structure => LG0000,
	IC => 0.001,
}

#-------------------------
MODEL:  # TG0000
#-------------------------
ReactionSite : {
    name => "TPD0057",
    type => "msite",
    Keq_ratio => 0.01,
}
AllostericStructure : {
    name => "TD0022",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.01,0.01],
    Phi => 0,
    elements => [TPD0057],
}
Structure : {  # IC of TG0000 = 1000
    name => "TG0000",
    elements => [TD0022],
    max_count => 2,
}


# Initial concentrations
Init : {
	structure => TG0000,
	IC => 1000,
}

        

##########################################################################
# RULES:
##########################################################################
MODEL:

CanBindRule : {
  name => "PD0057 LPD0057 (0 . 0 .)",
  ligand_names => ["PD0057", "LPD0057"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 0.501187233627272,
  kb => 3.98107170553497,
}

CanBindRule : {
  name => "PD0628 PD0227 (0 . 0 .)",
  ligand_names => ["PD0628", "PD0227"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 3.98107170553497,
  kb => 0.0630957344480193,
}

CanBindRule : {
  name => "PD1238 PD0227 (0 . 0 .)",
  ligand_names => ["PD1238", "PD0227"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 1.99526231496888,
  kb => 0.0158489319246111,
}

CanBindRule : {
  name => "PD0798 TPD0057 (0 . 0 .)",
  ligand_names => ["PD0798", "TPD0057"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 3.98107170553497,
  kb => 0.251188643150958,
  kp => 0.0685136533658775,
}

CanBindRule : {
  name => "PD1033 TPD0057 (0 R 0 .)",
  ligand_names => ["PD1033", "TPD0057"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => ["R", "."],
  kf => 1,
  kb => 0.251188643150958,
  kp => 530.078483359935,
}

CanBindRule : {
  name => "PD1033 TPD0057 (0 T 0 .)",
  ligand_names => ["PD1033", "TPD0057"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => ["T", "."],
  kf => 0.501187233627272,
  kb => 0.0630957344480193,
  kp => 226.380340952145,
}

CanBindRule : {
  name => "PD1238 TPD0057 (0 . 1 .)",
  ligand_names => ["PD1238", "TPD0057"],
  ligand_msite_states => ["0", "1"],
  ligand_allosteric_labels => [".", "."],
  kf => 1.99526231496888,
  kb => 0.0158489319246111,
  kp => 107.710505603677,
}
        

##########################################################################
# EQUATIONS:
##########################################################################
EQN:

null -> LG0000; clamp_source_LG0000="(+(event_flags(1) && ~event_flags(5))*min((t-event_times(1))/1, 1)*(0.759770129010352)*4.0+event_flags(5)*max(1-(t-event_times(5))/1, 0)*(-57.2376423984521)*4.0+(event_flags(2) && ~event_flags(6))*min((t-event_times(2))/1, 1)*(0.027259127957393)*4.0+event_flags(6)*max(1-(t-event_times(6))/1, 0)*(0)*4.0+(event_flags(3) && ~event_flags(7))*min((t-event_times(3))/1, 1)*(23.068741709984)*4.0+event_flags(7)*max(1-(t-event_times(7))/1, 0)*(0)*4.0+(event_flags(4) && ~event_flags(8))*min((t-event_times(4))/1, 1)*(33.3817714315003)*4.0+event_flags(8)*max(1-(t-event_times(8))/1, 0)*(0)*4.0)"
LG0000 -> null; clamp_sink_LG0000=4.0        

##########################################################################
# CONFIG:
##########################################################################
CONFIG:

ode_event_times = ~ ~ ~ ~ ~ ~ ~ ~ ~;
SS_timescale = 500.0;
t_final = 20000;
t_vector = [t0:1.0:tf];
matlab_ode_solver = ode23s;
matlab_solver_options{InitialStep} = 1e-8;
matlab_solver_options{AbsTol} = 1e-9;
matlab_solver_options{RelTol} = 1e-3;
matlab_solver_options{MaxStep} = 500.0;
