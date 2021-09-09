{ config, ... }:

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
          publicKey = builtins.readFile pubKeyP;
          presharedKeyFile = preKeyP;
          allowedIPs = [ "0.0.0.0/0" "::/0" ];
          endpoint = builtins.readFile ip;
          persistentKeepalive = 25;
        }
      ];
    };
  };
}
