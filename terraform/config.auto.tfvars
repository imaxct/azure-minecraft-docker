enable_log_filter = true # Chat privacy

enable_auto_startstop = false
enable_backup         = true

location = "japaneast"


minecraft_config = {
  primary = {
    allow_ops_only      = "false"
    container_image_tag = "java21"
    environment_variables = {
      ALLOW_NETHER                 = true
      ANNOUNCE_PLAYER_ACHIEVEMENTS = "true"
      DIFFICULTY                   = "normal"
      ENABLE_COMMAND_BLOCK         = true
      EULA                         = true
      ICON                         = null # "https://raw.githubusercontent.com/geekzter/azure-minecraft-docker/main/visuals/aci.png"
      MAX_PLAYERS                  = 10
      MODS                         = null
      MODE                         = "survival"
      MOTD                         = "Let's Minecraft!"
      OVERRIDE_SERVER_PROPERTIES   = true # Use these settings over server.roperties every time the container starts
      SNOOPER_ENABLED              = "false"
      TYPE                         = "PAPER"
      VERSION                      = "1.21.4"
      ONLINE_MODE                  = "true"
      ENABLE_WHITELIST             = "true"
      WHITELIST                    = "imaxct,jzZ,xxx"
      SERVER_PORT                  = 23333
    }
    minecraft_server_port = 23333
    #     start_time                 = "12:00"
    #     stop_time                  = "00:01"
    #     vanity_hostname_prefix     = "minecraft116"
  }
}
provisoner_email_address = "nobody@no.no"

minecraft_ops = ["imaxct"]
minecraft_users = [
  "jzZ",
  "xxx"
]
subscription_id = "1b18e49d-c4c5-4dfb-a839-c091b4c2705d"
tenant_id       = "c0985e67-29a5-4885-ac0b-2bd3414dfebc"
# vanity_dns_zone_id             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mySharedRG/providers/Microsoft.Network/dnszones/mydomain.com"
