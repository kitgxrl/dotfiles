{ config, user, ... }:

{
  user.programs.git = {
    enable = true;
    userName = "Rain";
    userEmail = "kitgxrl@protonmail.com";
    signing = {
      key = "A0A80D82FC1867F4";
      signByDefault = true;
    };
  };
}
