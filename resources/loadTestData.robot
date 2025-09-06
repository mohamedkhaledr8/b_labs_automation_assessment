*** Settings ***
Library     ../libraries/yaml_reader.py

*** Keywords ***
Load Test Data As Global
    ${testdata}=    Read All Yaml From Folder    testdata
    FOR    ${key}    ${value}    IN    &{testdata}
        Set Global Variable    ${${key}}    ${value}
    END
    Set Global Variable    &{TESTDATA}    &{testdata}
