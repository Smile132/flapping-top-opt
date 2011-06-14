path('./mapLS',path);                      % path to the MLS library
path('./MATLAB/etc/',path);

%% GA settings
nGenera = 500;
EliteCount = 10;
PopSize = 500;

%% number of variables
Gvars.Nh = 20;
Gvars.Nletters = 20;
Gvars.NLetterperRule = 8;
Gvars.Ncodes = 9;
Gvars.NinitEdges = 4;
Gvars.Nlevels = 4;
% fraction of the tip with shell
Gvars.nB = 1;

%% Number of variables
Nvariables = (Gvars.Nletters*Gvars.NLetterperRule)*Gvars.Ncodes+Gvars.NinitEdges+Gvars.nB;

%% Restart file
restartFromFile = [];
