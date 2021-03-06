class alfresco::install::mysql inherits alfresco {

  if $db_host == 'localhost'  {
		class { '::mysql::server':
			root_password    => $db_root_password,
 #     remove_default_accounts=> true,
      service_enabled => true,
      override_options => {
        'mysqld' => {
          'max_connections' => 300,
#          'innodb_buffer_pool_size' => '4GB',
#          'innodb_log_buffer_size' => 50331648,
#          'innodb_log_file_size' => '1GB',

#	Barracuda file system is not available in CentOS 6 mysql and we weren't
# using it for anything yet anyway
#						'innodb_file_format' => 'Barracuda',
        }
      }
#		} ->
#    exec { 'remove-initial-logfiles':
#      # have to remove old logfiles so that mysql regenerates them
#      # otherwise it fails on reboot
#      command => '/etc/init.d/mysql stop && /bin/rm /var/lib/mysql/ib_logfile* && /etc/init.d/mysql start && sleep 10 && /usr/bin/touch /var/lib/mysql/reset_logs.ootb.flag',
#      creates => '/var/lib/mysql/reset_logs.ootb.flag',
    }

		mysql::db { "$alfresco_db_name":
			user     => "${alfresco_db_user}",
			password => "${alfresco_db_pass}",
			host     => "${alfresco_db_host}",
			grant    => ['ALL'],
		}
  }

	class { '::mysql::bindings':
		java_enable => 1,
	}

	safe-download { "download-mysql-connector":
		url => "${urls::mysql_connector_maven_central_url}",
		filename => "${urls::mysql_connector_filename}",
		download_path => "${download_path}",
	}

	exec { "create-tomcat_home-lib":
		user => 'tomcat',
		command => "mkdir -p ${download_path}/lib",
		path => "/bin:/usr/bin",
		require => Safe-download["download-mysql-connector"],
		creates => "${tomcat_home}/lib",
	}

	exec { "copy-mysql-connector":
		user => 'tomcat',
		command => "cp ${download_path}/${urls::mysql_connector_filename} ${tomcat_home}/lib/",
		path => "/bin:/usr/bin",
		require => [
			Exec["create-tomcat_home-lib"],
			Safe-download["download-mysql-connector"],
		],
		creates => "${tomcat_home}/lib/${urls::mysql_connector_filename}",
	}

}
