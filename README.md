# Project Title

API Automation through Karate on Employee 


### Dependency required


```
1.Karate
  -karate-apache
  -karate-junit4
2.cucumber reporting

```

Folder Structure Conventions
============================

> Folder structure options and naming conventions for software projects

### A typical top-level directory layout

    .
    ├── test                               # Automated tests (alternatively `spec` or `tests`)
         └── resources                     #Feature File & configuration file
                    └── Feature Files
                    └── karate-config.js
        └── java                          #Runner files & Payload
                    └── payload file
                    └── runner file  
    ├── surefire-reports                  # log files & html reports
         └── *.html                       
         └── *.log                                         
    ├── pom.xml                           #pom.xml
    └── README.md
