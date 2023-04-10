# The Kubernetes cluster name here
cluster_name = "cluster_name"

# list of availability zones available in your OpenStack cluster
#az_list = ["nova"]

# SSH key to use for access to nodes
public_key_path = "~/.ssh/id_rsa.kubespray.pub"

dns_nameservers = "8.8.8.8"

# image to use for bastion, masters, standalone etcd instances, and nodes
image = "Ubuntu22"

# user on the node (ex. core on Container Linux, ubuntu on Ubuntu, etc.)
ssh_user = "ubuntu"

# 0|1 bastion nodes
number_of_bastions = 1

flavor_bastion = "58ae007c-be48-480e-b039-e3c761dc89c7"

# standalone etcds
number_of_etcd = 0

# masters
number_of_k8s_masters = 0

number_of_k8s_masters_no_etcd = 0

number_of_k8s_masters_no_floating_ip = 3

number_of_k8s_masters_no_floating_ip_no_etcd = 0

flavor_k8s_master = "d9ad984e-ac60-425a-9bc2-87412522446f"

k8s_masters = {
  "crane-renu-master-1" = {
     "az"          = "nova"
     "flavor"      = "d9ad984e-ac60-425a-9bc2-87412522446f"
     "floating_ip" = false
     "etcd" = true
   },
   "crane-renu-master-2" = {
     "az"          = "nova"
     "flavor"      = "d9ad984e-ac60-425a-9bc2-87412522446f"
     "floating_ip" = false
     "etcd" = true
   },
   "crane-renu-master-3" = {
     "az"          = "nova"
     "flavor"      = "d9ad984e-ac60-425a-9bc2-87412522446f"
     "floating_ip" = false
     "etcd" = true
   },
}


# nodes
number_of_k8s_nodes = 0

number_of_k8s_nodes_no_floating_ip = 3

flavor_k8s_node = "b3a09d04-8772-48d8-925b-9172f6d2e15c"

# GlusterFS
# either 0 or more than one
#number_of_gfs_nodes_no_floating_ip = 0
#gfs_volume_size_in_gb = 150
# Container Linux does not support GlusterFS
#image_gfs = "<image name>"
# May be different from other nodes
#ssh_user_gfs = "ubuntu"
#flavor_gfs_node = "<UUID>"

# networking
network_name = "network_name"

# Use a existing network with the name of network_name. Set to false to create a network with name of network_name.
use_existing_network = false

external_net = "96cba4a1-2726-47a1-bf9b-b2d5555e9f46"

subnet_cidr = "x.x.x.x/x"

floatingip_pool = "pool_name"

bastion_allowed_remote_ips = ["0.0.0.0/0"]