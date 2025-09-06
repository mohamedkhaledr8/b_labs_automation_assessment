*** Settings ***
Library     libraries/yaml_reader.py

*** Keywords ***
Load Config As Global
    ${config}=    Read All Yaml From Folder    config
          FOR    ${key}    ${value}    IN    &{config}
              Set Global Variable    ${${key}}    ${value}
           END


    Set Global Variable    &{CONFIG}    &{config}
