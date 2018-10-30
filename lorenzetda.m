%% imports
javaaddpath('./lib/javaplex.jar');
import edu.stanford.math.plex4.*;

javaaddpath('./lib/plex-viewer.jar');
import edu.stanford.math.plex_viewer.*;

%% 
% Create tranjectory point cloud in phase space
addpath('/Users/naheed/Desktop/TDA/matlab_examples/dynsys/Chaotic Systems Toolbox');
T = get_trajectory_in_phasespace("lorentz");
plot3(T(:,1),T(:,2),T(:,3));
dimension_T = size(T,2)
distmat = squareform(pdist(T)); % compute euclidean distance
max_T = max(max(distmat))
% clear distmat;
% 
% %% run rips complex
% runrips(T,dimension_T,max_T);
name = 'lorentz';
%% save distmat as csv
csvwrite(strcat(name,'_dist.csv'),distmat);
