# API Automation

API Automation through Karate on Employee 


### Dependency required


```
1.Karate
  -karate-apache
  -karate-junit4
2.cucumber reporting

```

Folder Structure
============================

> Folder structure options and naming conventions


    .
    ├── test                               # Automated tests (alternatively `spec` or `tests`)
         └── resources                     #Feature File & configuration file
                    └── Feature Files
                    └── karate-config.js  #
         └── java                          #Runner files & Json Payload
              └── payload file      
              └── runner file  
    ├── surefire-reports                  # log files & html reports
         └── *.html                       
         └── *.log                                         
    ├── pom.xml                           #pom.xml
    └── README.md
    
###### karate-config.js
>This is where you can create variables which have a global scope. Karate reads this file before executing any scenario. 

###### Resources
>Baseurl
http://dummy.restapiexample.com/api/v1/

>Endpoints References 
http://dummy.restapiexample.com/
