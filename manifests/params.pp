# Class: alfresco::params
#
#
class alfresco::params {
	$alfresco_base_dir	= "/opt/alfresco"
	$tomcat_home		= "/opt/alfresco/tomcat"

	$alfresco_version 	= "4.2.f"

	$download_path		= "/opt/downloads"

	$db_user		= "alfresco"
	$db_pass		= "alfresco"
	$db_name		= "alfresco"
	$db_host		= "localhost"
}