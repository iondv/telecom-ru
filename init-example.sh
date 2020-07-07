node bin/import --src ./applications/telecom-en --ns telecom-en
node bin/setup telecom-en --reset
node bin/import-data --src ./applications/telecom-en/data --ns telecom-en
node bin/adduser --name demo --pwd ion-demo
node bin/acl --u demo@local --role admin --p full
#node bin/adduser --name anonymous
node bin/acl.js --u anonymous --role anonymous --p read --res geolayer:::naselenniyPunkt@telecom-en geolayer:::connect@telecom-en geolayer:::pochtamt@telecom-en geolayer:::ops@telecom-en geolayer:::pops@telecom-en geolayer:::municipalnieObrazovaniya@telecom-en
node bin/acl.js --u anonymous --role anonymous --p read --res geolayer:::tvAnalog@telecom-en geolayer:::taksofon@telecom-en geolayer:::tv@telecom-en geolayer:::statsionar@telecom-en geolayer:::radio@telecom-en geolayer:::internet@telecom-en geolayer:::infomat@telecom-en geolayer:::wifi@telecom-en geolayer:::univer@telecom-en geolayer:::tvOperSky@telecom-en geolayer:::tvOperCom@telecom-en
node bin/acl.js --u anonymous --role anonymous --p read --res geolayer:::allMobileKray@telecom-en geolayer:::ComTv@telecom-en geolayer:::2gMobileKray@telecom-en geolayer:::3gMobileKray@telecom-en geolayer:::4gMobileKray@telecom-en geolayer:::wireless@telecom-en geolayer:::cetc@telecom-en geolayer:::zdrav@telecom-en geolayer:::medicalOrg@telecom-en
node bin/acl.js --u anonymous --role anonymous --p read --res n:::khv-svyaz-info@shpd n:::khv-svyaz-info@statsion n:::khv-svyaz-info@cetv n:::khv-svyaz-info@comerTv
node bin/acl.js --u anonymous --role anonymous --p read --res c:::tvOperCom@telecom-en c:::cetc@telecom-en c:::statsionar@telecom-en c:::internet@telecom-en c:::svyaz@telecom-en c:::naselenniyPunkt@telecom-en c:::operators@telecom-en c:::tvComer@telecom-en c:::tv@telecom-en c:::mult@telecom-en

export WORKER_COUNT=2
node bin/cluster
