# IONDV. Telecom

Эта страница на [русском](/README.md)

<h1 align="center"> <img src="/images/telecom.png" alt="IONDV. Telecom" align="center"></h1>  

## Description  

**IONDV. Telecom** - is a web application based on [IONDV. Framework](https://iondv.com). It is used as a registry to account, store, and present the data on the 
availability of communication services (Internet, mobile communications, television, mail, etc.) in populated areas of the region. 
It also includes information on communications availability in the "Healthcare" and "Education" sectors. The key entity is a "Locality" that contains links to each industry listed in the system. 
The app is free for everyone but available only in Russian.

The main advantage of using the system is an analysis of the current state of the telecommunication sector in the region to take timely measures to improve the quality of communications.
In addition, the application provides maintenance and data on the types of communication at the same time in different industries and regions, and also allows you to display the necessary data in the open form that does not require authorization.

Watch a brief [video](https://www.youtube.com/watch?v=r7NjctIR9bA&feature=youtu.be) about **IONDV. Telecom** (available only in russian yet).

<a href="https://www.youtube.com/watch?v=r7NjctIR9bA&feature=youtu.be" target="_blank"><img src="/images/IONDV.Telecom_video.png" height="250px" alt="" title=""></a>

### Demo

Go to https://telecom-ru.iondv.com to see the demo version - the login for access is - **demo** and the password is – **ion-demo**.

Open geomap data without authorization - https://telecom-ru.iondv.com/geomap.

Account for [back office](https://telecom-ru.iondv.com/registry): login - **demo**, password **ion-demo**. 

### Additional benefits:
 
* Open source system components- https://github.com/iondv/telecom-ru;
* Open source software used for DBMS and server OS (under linux and windows);
* Any adaptation and upgrading of the system is possible, including data structures without programming in the [visual editor](https://studio.iondv.com);
* Run your own version in a few minutes - see [How to get the app](#how-to-get-the-app?).

### Modules

The basis of all data is [Registry module](https://github.com/iondv/registry). **Registry module** – is a central module designed specifically for working with data based on metadata structures - including project management, programs, events, etc.
Also used: 

* [Geomap module](https://github.com/iondv/geomap) - designed to visualize information and data that has geo-referenced. The data is divided into layers, and for each data type, you can provide brief and detailed information; 
* [Admin module](https://github.com/iondv/ionadmin) - is used for assigning rights, managing tasks on a schedule and other administrative tasks; 
* [Dashboard module](https://github.com/iondv/dashboard) - s a module designed to display brief information in the form of blocks;
* [Report module](https://github.com/iondv/report) - is the module intended to form the analytical reports and reference information using the specific metadata.  

## How to get the app?  

### Git

Quick start with the **IONDV. Telecom** repository on GitHub — [detailed instruction](https://github.com/iondv/framework#quick-start-with-the-repository).  

1. Set the system environment and global dependencies.
2. Clone the core, module and application.
3. Build and deploy the app.
4. Run.

Install and run with a single line under Linux using the [iondv-app](https://github.com/iondv/iondv-app) installer (install lоcally node.js, MongoDB и Git):
```
bash <(curl -sL https://raw.githubusercontent.com/iondv/iondv-app/master/iondv-app) -q -i -m localhost:27017 telecom-ru
```
Where insted of `localhost:27017` you need to set the MongoDb adress. After launch, open the link 'http://localhost:8888', account back office is available - 'http://localhost:8888/registry' **demo**, password **ion-demo**.

### Docker

Run application using docker container - [detailed instruction](https://hub.docker.com/r/iondv/telecom-ru).

1. Run MongoDB: `docker run --name mongodb -v mongodb_data:/data/db -p 27017:27017 -d mongo`
2. Run IONDV. Telecom `docker run -d -p 80:8888 --link mongodb iondv/telecom-ru`.
3. Open the `http://localhost` link in a browser in a minute (time required to initialize data). For back office login: **demo**, password: **ion-demo** 

## Useful links

Some handy links to learn more information:

* [User's manual IONDV. Telecom](manuals/RP_telecom.docx)
* [Admin's manual IONDV. Telecom](manuals/RA_telecom.docx)
* [IONDV. Framework](https://iondv.com/) 
* [Facebook](https://www.facebook.com/iondv/)

--------------------------------------------------------------------------  


#### [Licence](/LICENSE) &ensp; [Contact us](https://iondv.com/contacts) &ensp; [Stack Overflow](https://stackoverflow.com/questions/tagged/iondv) &ensp; [FAQs](/faqs.md)          
<div><img src="https://mc.iondv.com/watch/local/docs/telecom-ru" style="position:absolute; left:-9999px;" height=1 width=1 alt="iondv metrics"></div>


--------------------------------------------------------------------------  

Copyright (c) 2018 **LLC "ION DV".**  
All rights reserved.

