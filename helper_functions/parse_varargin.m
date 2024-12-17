function parse_varargin(arg_str, varargin)
% A helper function that makes it much easier to handle the feature
% "variable number of input arguments" of Matlab
% The caller function just needs to tell this function the names of the
% optional arguments, their default values, and the argument list that is
% given directly by Matlab's varargin function.
% This function will create variables with default values and adjust them
% based on whatever users further given and send them back into the scope
% of the caller function.
% Usage: parse_varargin(the_varargin_string_from_the_caller_function,
% default_values...)
% default values come in pairs: name, value, name, value...
% For example, the function below uses this feature
% function test(a,b,varargin)
% parse_varargin(varargin, 'v1', 1, 'v2', 'c')
% keyboard
% return
%
% WW/PM&R/Pitt   04/22/2008
% Last Update    05/07/2008

% First, set the variables to the default values provided by the calling
% function
for i = 1:2:(length(varargin)-1)
    cmd = ['assignin(''caller'', ''' varargin{i} ''', varargin{i+1})'];
    eval(cmd);
end

% Now, check what need to be further customized based on the user input
for i = 1:2:(length(arg_str)-1)
    found_parameters = 0;
    for j = 1:2:(length(varargin)-1)
        if strcmp(arg_str{i}, varargin{j})==1
            found_parameters = 1;
            cmd = ['assignin(''caller'', ''' arg_str{i} ''', arg_str{i+1})'];
            eval(cmd);
            break;
        end
    end
    if found_parameters==0
        disp(sprintf('ERR: input parameter "%s" is not recognized.  Below is a list of valid parameter names', arg_str{i}))
        for index= 1:2:(length(varargin)-1)
            disp(varargin{index});
        end
        error('Error from parse_varargin.m')
    end
end
return
