export NODEID=$1
export IP=@@xsite.site2.ip@@
export DG_HOME=@@rhq.deploy.dir@@/jboss-datagrid-6.2.0-server

echo ">> Starting JBoss Data Grid Node $i in Site 2"     
screen -d -m $DG_HOME/bin/clustered.sh -c jdg-site-2.xml -P @@rhq.deploy.dir@@/properties/site2-jdg$NODEID.properties -u 239.2.2.2
