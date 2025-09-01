{ pkgs, ... }:

#Nothing illegal over here sir!
#Just backing up my "legally obtained" and "drmless" cd's and dvd's 

{
  environment.systemPackages = with pkgs; [
    cdparanoia
    lame
    abcde
    handbrake
    dvdbackup
    makemkv
    libcdio
    libdvdcss
    sg3_utils
    ffmpeg
  ];
}
