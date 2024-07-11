function show_context()


    % Get the caller context
    context = depcharge.get_caller_context(1);

    % Print the results
    fprintf('Package names: %s\n', strjoin(context.packageNames, ', '));
    fprintf('Root path: %s\n', context.rootPath);
    fprintf('Full file path: %s\n', context.callingFile);

    % Verify that the top level package name isn't "depcharge"
    if context.packageNames(1) == "depcharge"
        error('depcharge:configureProject:InvalidPackageName', ...
              'The top level package name cannot be "depcharge" as it would create name conflicts.');
    end


end