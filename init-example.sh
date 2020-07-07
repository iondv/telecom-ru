node bin/import --src ./applications/telecom-ru --ns telecom-ru
node bin/setup telecom-ru --reset
node bin/import-data --src ./applications/telecom-ru/data --ns telecom-ru
node bin/adduser --name demo --pwd ion-demo
node bin/acl --u demo@local --role admin --p full
#node bin/adduser --name anonymous
node bin/acl.js --u anonymous --role anonymous --p read --res geolayer:::naselenniyPunkt@telecom-ru geolayer:::connect@telecom-ru geolayer:::pochtamt@telecom-ru geolayer:::ops@telecom-ru geolayer:::pops@telecom-ru geolayer:::municipalnieObrazovaniya@telecom-ru
node bin/acl.js --u anonymous --role anonymous --p read --res geolayer:::tvAnalog@telecom-ru geolayer:::taksofon@telecom-ru geolayer:::tv@telecom-ru geolayer:::statsionar@telecom-ru geolayer:::radio@telecom-ru geolayer:::internet@telecom-ru geolayer:::infomat@telecom-ru geolayer:::wifi@telecom-ru geolayer:::univer@telecom-ru geolayer:::tvOperSky@telecom-ru geolayer:::tvOperCom@telecom-ru
node bin/acl.js --u anonymous --role anonymous --p read --res geolayer:::allMobileKray@telecom-ru geolayer:::ComTv@telecom-ru geolayer:::2gMobileKray@telecom-ru geolayer:::3gMobileKray@telecom-ru geolayer:::4gMobileKray@telecom-ru geolayer:::wireless@telecom-ru geolayer:::cetc@telecom-ru geolayer:::zdrav@telecom-ru geolayer:::medicalOrg@telecom-ru
node bin/acl.js --u anonymous --role anonymous --p read --res n:::khv-svyaz-info@shpd n:::khv-svyaz-info@statsion n:::khv-svyaz-info@cetv n:::khv-svyaz-info@comerTv
node bin/acl.js --u anonymous --role anonymous --p read --res c:::tvOperCom@telecom-ru c:::cetc@telecom-ru c:::statsionar@telecom-ru c:::internet@telecom-ru c:::svyaz@telecom-ru c:::naselenniyPunkt@telecom-ru c:::operators@telecom-ru c:::tvComer@telecom-ru c:::tv@telecom-ru c:::mult@telecom-ru

export WORKER_COUNT=2
node bin/cluster
