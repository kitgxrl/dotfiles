{ config, user, ... }:

{
  user.programs.git = {
    enable = true;
    userName = "Rain";
    userEmail = "kitgxrl@protonmail.com";
    signing = {
      key = "D822CBDB40A2C995";
      signByDefault = true;
    };
  };
}
