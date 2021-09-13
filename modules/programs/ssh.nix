{ config, ... }:

{
  user.programs.ssh = {
    enable = true;
    matchBlocks = {
      "kira" = {
        hostname = "167.172.129.8";
        port = 69;
        user = "rain";
        identityFile = "/home/rain/.ssh/id_rsa";
      };
    };
  };
}
