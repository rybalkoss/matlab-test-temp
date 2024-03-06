function [ver] = semvar()
%SEMVAR Returns app version
% Application version based on Semantic Version scheme
% The `ver` variable should be updated for each tagged realease
% For beta/dev releases, this func returls git describe --tag  string

ver = '1.3.0';
[status, command_out] = system('git describe --tag');
if ~status
    ver = command_out;
end
end