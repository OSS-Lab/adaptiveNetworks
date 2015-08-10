##########################################################################
# Allosteric Network Compiler (ANC) model file
# Created by BioJazz version ALPHA-02 released on 2012/06/15
# 2015年 5月29日 星期五 15时14分35秒 BST
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
    type => "bsite",
    Keq_ratio => 1.28093437865255,
}

ReactionSite : {
    name => "PD0227",
    type => "bsite",
    Keq_ratio => 1.00451178020473,
}
AllostericStructure : {
    name => "D0022",
    allosteric_flag => 0,
    allosteric_transition_rates => [1.0602674888485,5.70950214523288],
    Phi => 0.749755620723363,
    elements => [PD0057,PD0227],
}
Structure : {  # IC of G0000 = 9.99999999999999
    name => "G0000",
    elements => [D0022],
    max_count => 2,
}


ReactionSite : {
    name => "PD0458",
    type => "bsite",
    Keq_ratio => 3.29673520972002,
}

ReactionSite : {
    name => "PD0628",
    type => "csite",
    Keq_ratio => 1.00451178020473,
}
AllostericStructure : {
    name => "D0423",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.0115494444624982,0.015685682545882],
    Phi => 0.953079178885631,
    elements => [PD0458,PD0628],
}
Structure : {  # IC of G0401 = 2.20347691230698
    name => "G0401",
    elements => [D0423],
    max_count => 2,
}


ReactionSite : {
    name => "PD0859",
    type => "msite",
    Keq_ratio => 0.0109421001204135,
}
AllostericStructure : {
    name => "D0824",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.0177928033670365,1.8034723234716],
    Phi => 0.567937438905181,
    elements => [PD0859],
}

ReactionSite : {
    name => "PD1064",
    type => "msite",
    Keq_ratio => 0.0319447009599854,
}

ReactionSite : {
    name => "PD1234",
    type => "csite",
    Keq_ratio => 0.0331160935437947,
}
AllostericStructure : {
    name => "D1029",
    allosteric_flag => 0,
    allosteric_transition_rates => [1.33991492253186,1.00451178020473],
    Phi => 0.563049853372434,
    elements => [PD1064,PD1234],
}
Structure : {  # IC of G0802 = 9.99999999999999
    name => "G0802",
    elements => [D0824,D1029],
    max_count => 2,
}


# Initial concentrations
Init : {
	structure => G0000,
	IC => 9.99999999999999,
}
Init : {
	structure => G0401,
	IC => 2.20347691230698,
}
Init : {
	structure => G0802,
	IC => 9.99999999999999,
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
Structure : {  # IC of TG0000 = 9.99999999999999
    name => "TG0000",
    elements => [TD0022],
    max_count => 2,
}


# Initial concentrations
Init : {
	structure => TG0000,
	IC => 9.99999999999999,
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
  kf => 0.0630957344480194,
  kb => 3.98107170553497,
}

CanBindRule : {
  name => "PD0227 PD0458 (0 . 0 .)",
  ligand_names => ["PD0227", "PD0458"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 1,
  kb => 0.0630957344480193,
}

CanBindRule : {
  name => "PD0859 PD0227 (0 . 0 .)",
  ligand_names => ["PD0859", "PD0227"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 1.99526231496888,
  kb => 0.501187233627272,
}

CanBindRule : {
  name => "PD0859 PD0227 (1 . 0 .)",
  ligand_names => ["PD0859", "PD0227"],
  ligand_msite_states => ["1", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 15.8489319246111,
  kb => 0.501187233627272,
}

CanBindRule : {
  name => "PD1064 PD0227 (0 . 0 .)",
  ligand_names => ["PD1064", "PD0227"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 1,
  kb => 0.251188643150958,
}

CanBindRule : {
  name => "PD1064 PD0227 (1 . 0 .)",
  ligand_names => ["PD1064", "PD0227"],
  ligand_msite_states => ["1", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 3.98107170553497,
  kb => 0.125892541179417,
}

CanBindRule : {
  name => "PD1234 PD0227 (0 . 0 .)",
  ligand_names => ["PD1234", "PD0227"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 1.99526231496888,
  kb => 1.99526231496888,
}

CanBindRule : {
  name => "PD0628 TPD0057 (0 . 0 .)",
  ligand_names => ["PD0628", "TPD0057"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 0.125892541179417,
  kb => 0.501187233627272,
  kp => 0.586581613397342,
}

CanBindRule : {
  name => "PD1234 TPD0057 (0 . 1 .)",
  ligand_names => ["PD1234", "TPD0057"],
  ligand_msite_states => ["0", "1"],
  ligand_allosteric_labels => [".", "."],
  kf => 1,
  kb => 1,
  kp => 0.0415688804861519,
}
        

##########################################################################
# EQUATIONS:
##########################################################################
EQN:

null -> LG0000; clamp_source_LG0000="(+(event_flags(1) && ~event_flags(5))*min((t-event_times(1))/1, 1)*(0.642517731173914)*4.0+event_flags(5)*max(1-(t-event_times(5))/1, 0)*(-395.519817410537)*4.0+(event_flags(2) && ~event_flags(6))*min((t-event_times(2))/1, 1)*(5.19079299957468)*4.0+event_flags(6)*max(1-(t-event_times(6))/1, 0)*(0)*4.0+(event_flags(3) && ~event_flags(7))*min((t-event_times(3))/1, 1)*(73.1184497311783)*4.0+event_flags(7)*max(1-(t-event_times(7))/1, 0)*(0)*4.0+(event_flags(4) && ~event_flags(8))*min((t-event_times(4))/1, 1)*(316.56795694861)*4.0+event_flags(8)*max(1-(t-event_times(8))/1, 0)*(0)*4.0)"
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
