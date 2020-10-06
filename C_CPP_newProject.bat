

%CREATE AN INTEGRATION PROJECT Or, create using Klocwork Review%
kwadmin --url http://localhost:8093/ create-project cppcheck
%Capture your build settings%
kwinject --output cppcheck.out --cache-files *.* "C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\Common7\IDE\devenv.exe" cppcheck.sln /Rebuild

%Run an analysis using the build specification%
kwbuildproject --url http://localhost:8093/cppcheck --add-analysis-options=--lef-planner-in-memory  --tables-directory tables -f cppcheck.out 

%Load the database%
kwadmin --url http://localhost:8093/ load cppcheck tables