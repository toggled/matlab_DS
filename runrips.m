function [] = runrips(point_cloud, max_dimension, max_filtration_value)
    
    import edu.stanford.math.plex4.*;

    %% set rips parameter
    num_divisions = 1000;
    max_filtration_value = max_filtration_value/5;
    % create rips filtration
    stream = api.Plex4.createVietorisRipsStream(point_cloud, max_dimension+1, max_filtration_value, num_divisions);
    stream.finalizeStream();
    
    % persistent homology
    persistence = api.Plex4.getModularSimplicialAlgorithm(max_dimension+1, 2);
    % compute intervals
    intervals = persistence.computeIntervals(stream);

    % create the barcode plots
    plot_barcodes(intervals);

end