{ pkgs, config, ... }:

{
  user.programs.ncmpcpp = {
    enable = true;
    package = (pkgs.ncmpcpp.override { visualizerSupport = true; });
    mpdMusicDir = "/media/music";

    settings = {
      mpd_port = 23498;

      # Startup
      execute_on_song_change="~/dev/dotfiles/bin/mpd-notify";

      # General Apperance

      progressbar_look = "━━━";
      # user_interface = "alternative";
      titles_visibility = "no";
      playlist_display_mode = "classic";
      
      # Colors

      main_window_color = "cyan";

      # Formatting 
      
      song_status_format = "{{$6%a$(end) - }{$7%t$(end) at} {$3%b$(end)}}|{%f}";
      song_list_format = "$6%a$(end) - $7%t$(end) $3$R[%l]$(end)";

      current_item_prefix = "$b~> $(end)";
      current_item_suffix = "$/b";
      current_item_inactive_column_prefix = "$b$3~ $(end)";
      current_item_inactive_column_suffix = "$/b";
      
      now_playing_prefix = "$b";
      now_playing_suffix = "$/b";

      # Album Art hack

      # visualizer_look = "\"  \"";
      # startup_screen = "visualizer";
      # startup_slave_screen = "playlist";
      # startup_slave_screen_focus = true;
      # locked_screen_width_part = 32;

      # Misc

      autocenter_mode = true;
      centered_cursor = true;
      media_library_hide_album_dates = true;
      display_volume_level = false;
      header_visibility = false;
      connected_message_on_startup = false;
    };
  };
}
