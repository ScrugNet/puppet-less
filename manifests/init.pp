# /etc/puppet/modules/less/manifests/init.pp

class less {

	package { less:
		ensure	=> latest,
	}

	exec {"update-alternatives --set pager /usr/bin/less":
		unless	=> "test /etc/alternatives/pager -ef /usr/bin/less",
	}
}
