default[:elasticsearch][:version]    = "0.90.5"
default[:elasticsearch][:checksum]   = "f14ff217039b5c398a9256b68f46a90093e0a1e54e89f94ee6a2ee7de557bd6d"
default[:elasticsearch][:dir]        = "elasticsearch-#{elasticsearch[:version]}"
default[:elasticsearch][:source]     = "https://download.elasticsearch.org/elasticsearch/elasticsearch/#{elasticsearch[:dir]}.tar.gz"

# The src will be downloaded here
default[:elasticsearch][:basedir] = "/usr/local/src"
#
# elasticsearch will be unarchived here
default[:elasticsearch][:homedir] = "#{elasticsearch[:basedir]}/#{elasticsearch[:dir]}"
#
# All configs will be stored here
default[:elasticsearch][:configs] = "/etc/elasticsearch"
#
# Path to log files:
default[:elasticsearch][:logs] = "/var/log/elasticsearch"
#
# Path to directory where to store index data allocated for this node.
default[:elasticsearch][:data] = "/var/lib/elasticsearch"
#
# Path to temporary files:
default[:elasticsearch][:work] = "/tmp"
#
# The minimum memory allocation for the JVM.
# Default is 256m.
default[:elasticsearch][:min_mem] = "64m"
#
# The maximum memory allocation for the JVM.
# Default is 1g.
default[:elasticsearch][:max_mem] = "256m"

# Number of open files for the elasticsearch user.
# Recommended by the official guide. 655536
# USE THE BOOTSTRAP COOKBOOK FOR THIS
# https://github.com/gchef/bootstrap-cookbook
# default[:elasticsearch][:nofile] = 2**16
#
# Upstart-related, wait this long between SIGTERM and SIGKILL
default[:elasticsearch][:timeout] = 300
#
# ElasticSearch performs poorly when JVM starts swapping: you should ensure that
# it _never_ swaps.
default[:elasticsearch][:mlockall] = true

# Cluster name identifies your cluster for auto-discovery. If you're running
# multiple clusters on the same network, make sure you're using unique names.
default[:elasticsearch][:cluster_name] = 'elasticsearch'
