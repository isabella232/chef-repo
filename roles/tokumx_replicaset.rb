name "tokumx_replicaset"
description "tokumx replica-set member"

override_attributes(
  "mongodb" => {
    "user" => "tokumx",
    "group" => "tokumx",
    "distro" => "tokumx",
    "package_name" => "tokumx",
    "syslog" => "false"
  },
)

run_list(
  "recipe[apt]",
  "recipe[mongodb::tokutek_repo]",
  "recipe[hipsnip-mongodb::replica_set]"
)