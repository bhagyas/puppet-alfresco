class urls {

  $v50x = '5.0.d'
  $lx_version = "LX81"

  $nightly = 'http://dev.alfresco.com/downloads/nightly/dist/alfresco-community-5.1-SNAPSHOT.zip'
  $nightly_name = 'alfresco-community-5.1-SNAPSHOT'
  $nightly_filename = 'alfresco-community-5.1-SNAPSHOT.zip'



  # v4 wars
	$alfresco_ce_filename = 'alfresco-community-4.2.f.zip'
	$alfresco_ce_url = "http://dl.alfresco.com/release/community/4.2.f-build-00012/${alfresco_ce_filename}"

  $alfresco_war_50x = "https://artifacts.alfresco.com/nexus/service/local/repo_groups/public/content/org/alfresco/alfresco/${v50x}/alfresco-${v50x}.war"
  $share_war_50x = "https://artifacts.alfresco.com/nexus/service/local/repo_groups/public/content/org/alfresco/share/${v50x}/share-${v50x}.war"


  $alfresco_war_lx = "http://artifacts.loftux.net/nexus/service/local/repositories/releases/content/se/loftux/alfresco/alfresco/${$lx_version}/alfresco-${$lx_version}.war"
  $share_war_lx = "http://artifacts.loftux.net/nexus/service/local/repositories/releases/content/se/loftux/alfresco/share/${$lx_version}/share-${$lx_version}.war"
  $spp_amp_lx ="http://artifacts.loftux.net/nexus/service/local/repositories/releases/content/se/loftux/alfresco/alfresco-spp/${lx_version}/alfresco-spp-${lx_version}.amp"
  $spp_amp_lx_name = "alfresco-spp-${lx_version}.amp"

  $solr_war_file_lx = "alfresco-solr-${$lx_version}.war"
  $solr_war_dl_lx = "http://artifacts.loftux.net/nexus/service/local/repositories/releases/content/se/loftux/alfresco/alfresco-solr/${$lx_version}/${solr_war_file_lx}.war"

  $solr_war_file = "alfresco-solr4-${v50x}-ssl.war"
	$solr_war_dl = "https://artifacts.alfresco.com/nexus/service/local/repo_groups/public/content/org/alfresco/alfresco-solr4/${v50x}/$solr_war_file"
	
	$solr_cfg_file = "alfresco-solr4-${v50x}-config-ssl.zip"
	$solr_cfg_dl = "https://artifacts.alfresco.com/nexus/service/local/repo_groups/public/content/org/alfresco/alfresco-solr4/${v50x}/$solr_cfg_file"


  $spp_v4 = "http://dl.alfresco.com/release/community/4.2.f-build-00012/alfresco-community-spp-4.2.f.zip"
  $spp_v4_zipname = "alfresco-community-spp-4.2.f.zip"
  $spp_v4_name = "alfresco-community-spp-4.2.f.amp"


  $spp_amp_v5 = "https://artifacts.alfresco.com/nexus/service/local/repo_groups/public/content/org/alfresco/alfresco-spp/${v50x}/alfresco-spp-${v50x}.amp"
  $spp_amp_v5_name = "alfresco-spp-${v50x}.amp"


	$loffice_name_deb = 'LibreOffice_4.2.7.2_Linux_x86-64_deb'
  $loffice_dl_deb = "http://downloadarchive.documentfoundation.org/libreoffice/old/4.2.7.2/deb/x86_64/${loffice_name_deb}.tar.gz"

	$loffice_name_red = 'LibreOffice_4.2.7.2_Linux_x86-64_rpm'
	$loffice_dl_red = "http://downloadarchive.documentfoundation.org/libreoffice/old/4.2.7.2/rpm/x86_64/${loffice_name_red}.tar.gz"




	$swftools_src_name = 'swftools-2013-04-09-1007'
	$swftools_src_url = "http://www.swftools.org/${swftools_src_name}.tar.gz"


	$name_tomcat = 'apache-tomcat-7.0.55'
  $filename_tomcat = "${name_tomcat}.tar.gz"
  $url_tomcat = "http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.55/bin/${filename_tomcat}"

  $mysql_connector_version='5.1.36'
  $mysql_connector_filename="mysql-connector-java-${mysql_connector_version}.jar"
  $mysql_connector_maven_central_url = "http://central.maven.org/maven2/mysql/mysql-connector-java/${$mysql_connector_version}/${mysql_connector_filename}"

  $solr_dl_file = 'alfresco-community-solr-4.2.f.zip'
  $solr_dl = "http://dl.alfresco.com/release/community/4.2.f-build-00012/${solr_dl_file}"



}
