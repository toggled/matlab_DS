function [X] = get_trajectory_in_phasespace(option)
    if option == 'lorentz'
        %% 
        % n is the number of the simulated points.
        % level is the noise standard deviation divided by the standard deviation of the
        %   noise-free time series. We assume Gaussian noise with zero mean.
        % s, r, b, and s are the parameters
        % x0 is the initial value for x.
        % y0 is the initial value for y.
        % z0 is the initial value for z.
        % h is the step size.
        % n, level,s,r,b,x0,y0,z0,h
        %%
        [x,y,z] = ilorentz(500,0.0,16,45.92,4,0.1,0.1,0.1,0.01);
        X = [x,y,z];
    end
end