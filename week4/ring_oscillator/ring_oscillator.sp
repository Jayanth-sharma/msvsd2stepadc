.subckt ring_oscillator_stage vi vo vssx vccx vctl
mp0 vo vi vctl vccx sky130_fd_pr__pfet_01v8 L=150e-9 W=420e-9 nf=2
mn0 vo vi vssx vssx sky130_fd_pr__nfet_01v8 L=150e-9 W=420e-9 nf=2
.ends

.subckt ring_oscillator vctl vo vccx vssx
xi0 vo n1 vssx vccx vctl ring_oscillator_stage
xi1 n1 n2 vssx vccx vctl ring_oscillator_stage
xi2 n2 n3 vssx vccx vctl ring_oscillator_stage
xi3 n3 n4 vssx vccx vctl ring_oscillator_stage
xi4 n4 vo vssx vccx vctl ring_oscillator_stage
.ends
