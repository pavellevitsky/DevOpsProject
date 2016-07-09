# DevOpsProject

1. Create in Azure four instances of CentOS Based 7.0:
   - control node
   - jenkins server
   - build node
   - webserver (for deployment)
2. Install Puppet Master on control node
3. Install Puppet Agent on rest nodes and register them in the Puppet Master
4. Write manifest to install following:
   - [jenkins server] : ntp, jenkins (with all requirements)
   - [build node] : ntp, git, java, maven
   - [webserver] : ntp, tomcat, python
5. On Jenkins server define a job that will build on build node a project https://github.com/antweiss/courseProject.git
6. On webserver write python script that copies WAR file of above build to a local tomcat folder /var/lib/tomcat/webapps
7. On Jenkins server define additional two jobs while first one (execute the script) will trigger the second one (restart tomcat)
8. 
