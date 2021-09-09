{ config, lib, ... }:

let
  wgSecrets = "/home/rain/.secrets/wireguard";
  privKeyP = "${wgSecrets}/privatekey";
  preKeyP  = "${wgSecrets}/presharedkey";
  pubKeyP  = "${wgSecrets}/publickey";

  ip = "${wgSecrets}/ip";
in
{
  networking.wg-quick.interfaces = {
    wg0 = {
      address = [ "10.66.66.3/32" "fd42:42:42::3/128"];
      dns = [ "1.1.1.1" ];
      privateKeyFile = privKeyP;

      peers = [
        {
          publicKey = (lib.strings.fileContents pubKeyP);
          presharedKeyFile = preKeyP;
          allowedIPs = [ "0.0.0.0/0" "::/0" ];
          endpoint = (lib.strings.fileContents ip);
          persistentKeepalive = 25;
        }
      ];
    };
  };
}
