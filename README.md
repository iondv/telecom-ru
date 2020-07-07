# IONDV. Telecom

IONDV. Telecom - is a web application based on [IONDV. Framework](https://iondv.com). It is used as a registry to account, store, and present the data on the 
availability of communication services (Internet, mobile communications, television, mail, etc.) in populated areas of the region. 
It also includes information on communications availability in the "Healthcare" and "Education" sectors. The key entity is a "Locality" 
that contains links to each industry listed in the system. 
The app is free for everyone but available only in Russian.

<h1 align="center"> <img src="/images/telecom.png" alt="IONDV. Telecom" align="center"></h1>  

## Описание  

**IONDV. Telecom** - это программное решение на основе [IONDV. Framework](https://iondv.com), реализованное для организации учета, хранения и отображения данных о наличии услуг связи 
(интернет, сотовая связь, телевидение, почта и др.) в населенных пукнтах региона, в том числе наличие связи по отраслям "Здравоохранение", "Образование". 
Ключевой сущность является Населенный пункт, который содержит в себе информацию описательного характера и ссылки на каждую отрасль, указанную в системе. 

Главное преимущество использования системы - анализ текущего состояния развития сферы телекоммукации в регионе, что позволяет своевремено принять меры по улучшению качества средств связи. 
К тому же применение системы обеспечивает ведение и данным о видах связи одновременно по разным отраслям и районам, а также позволяет выводить необходимые данных в открытом виде, не требующим авторизации.

### Демо

Демо доступ в систему для ознакомления, без регистрации: https://telecom-ru.iondv.com

Открытые данные без авторизации https://telecom-ru.iondv.com/geomap

Учетная запись для [бек-офиса](https://telecom-ru.iondv.com/registry): пользователь **demo**, пароль **ion-demo**. 

### Дополнительные преимущества:
 
* Открытый исходный код всех компонентов Системы - https://github.com/iondv/telecom-ru;
* Открытое программное обеспечение используемое для СУБД и серверных ОС (работет под linux и windows);
* Возможна любая адаптация и модернизация системы, в том числе структур данных без программирования в [визуальном редакторе](https://studio.iondv.com).
* Запуск собственной версии в течении нескольких минут - см. [Как получить](#как-получить)

### Модули

Основу реестра данных составляет [модуль Регистри](https://github.com/iondv/registry). 
Также используются: 

* [модуль Геоданных](https://github.com/iondv/geomap) - позволяет отобразить на карте населенные пункты с данными об отраслях, зведенных в системе, с возможностью указания индивидуальной информации по каждому из них, 
* [Административный модуль](https://github.com/iondv/ionadmin) - позволяет управлять пользователями и ролями для доступа к системе и другими функциями, неоходимыми администартору, 
* [модуль Дашборда](https://github.com/iondv/dashboard) - отображение контрольной панели, с указанием наглядной информации в виде графиков о степени нагрузки системы,
* [модуль Аналитики](https://github.com/iondv/report) - построение аналитических отчетов на основе данных, заведенных в системе.  

## Как получить?  

### Git

Быстрый старт с использованием репозитория IONDV. Telecom на GitHub — [подробная инструкция](https://github.com/iondv/framework/blob/master/docs/ru/readme.md#быстрый-старт-с-использованием-репозитория).  

1. Установите системное окружение и глобальные зависимости.
2. Клонируйте ядро, модуль и приложение.
3. Соберите и разверните приложение.
4. Запустите.

Или установка и запуск в одну строку под Linux с использованием установщика [iondv-app](https://github.com/iondv/iondv-app) (требуется локально node.js, MongoDB и Git):
```
curl -L -s https://github.com/iondv/iondv-app/archive/master.zip > iondv-app.zip &&\
  unzip -p iondv-app.zip iondv-app-master/iondv-app > iondv-app &&\
  bash iondv-app -q -i -m localhost:27017 telecom-ru
```
Где вместо `localhost:27017` нужно указать адрес MongoDb. После запуска открыть ссылку 'http://localhost:8888', учетная запись бек офиса **demo**, пароль **ion-demo**.

### Docker

Запуск приложения с использованием докер контейнера - [подробная инструкция](https://hub.docker.com/r/iondv/telecom-ru).

1. Запустите СУБД mongodb: `docker run --name mongodb -v mongodb_data:/data/db -p 27017:27017 -d mongo`
2. Запустите IONDV. Telecom `docker run -d -p 80:8888 --link mongodb iondv/telecom-ru`.
3. Откройте ссылку `http://localhost` в браузере через минуту (время требуется для инициализации данных). Для бек офиса логин: **demo**, пароль: **ion-demo** 

## Ссылки

Для дополнительной информации смотрите следующие ресурсы:

* [Руководство пользователя IONDV. Telecom](manuals/RP_telecom.docx)
* [Руководство администратора IONDV. Telecom](manuals/RA_telecom.docx)
* [IONDV. Framework](https://iondv.com/) 
* [Facebook](https://www.facebook.com/iondv/)

--------------------------------------------------------------------------  


#### [Licence](/LICENSE) &ensp; [Contact us](https://iondv.com/contacts) &ensp; [Stack Overflow](https://stackoverflow.com/questions/tagged/iondv) &ensp; [FAQs](/faqs.md)          
<div><img src="https://mc.iondv.com/watch/github/docs/telecom-ru" style="position:absolute; left:-9999px;" height=1 width=1 alt="iondv metrics"></div>


--------------------------------------------------------------------------  

Copyright (c) 2018 **LLC "ION DV".**  
All rights reserved.

