#------for nohup mysql dump-----
#step 1: change the database name, database user, database password
#step 2: run 'chmod +x mysqldump.sh'
#step 3: run 'nohup sh mysqldump.sh'

DBNAME=blink_bos
USER=root
PASS=q1122

#paths
DUMP_LOCATION=${PWD}/
SCRIPT_TO_RUN=${PWD}/mysqldump.sh
RUNLOG=${PWD}/mysqldump.log
echo ${DBNAME}' Start at : ' > ${RUNLOG}
date >> ${RUNLOG}
mysqldump -u ${USER} -p${PASS}  ${DBNAME} | gzip > ${DUMP_LOCATION}${DBNAME}.sql.gz
echo 'End at : ' >> ${RUNLOG}
date >> ${RUNLOG}
echo 'Dump is complete :)' >> ${RUNLOG}

chmod -x ${SCRIPT_TO_RUN}
