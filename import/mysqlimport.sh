#------for nohup mysql dump------
#step 1: change the file name, database name, database user, database password
#step 2: run 'chmod +x mysqlimport.sh'
#step 3: run 'nohup sh mysqlimport.sh'


FILENAME=blink_bos.sql.gz
DATABASE=test
USER=root
PASS=q1122

# paths
DUMP_LOCATION=${PWD}/
SCRIPT_TO_RUN=${PWD}/mysqlimport.sh
RUNLOG=${PWD}/mysqlimport.log
echo ${DATABASE}' Start at : ' > ${RUNLOG}
date >> ${RUNLOG}
zcat ${DUMP_LOCATION}${FILENAME} | mysql -u ${USER} -p${PASS} ${DATABASE}
echo 'End at : ' >> ${RUNLOG}
date >> ${RUNLOG}
echo 'Import is complete :)' >> ${RUNLOG}

chmod -x ${SCRIPT_TO_RUN}
