echo Enter Password
sudo apt
clear
echo Installing dependencies
sudo apt install dialog beep sox
play -n synth pl G2 pl B2 pl D3 pl G3 pl D4 pl G4 \
    delay 0 .05 .1 .15 .2 .25 remix - fade 0 4 .1 norm -1
play -n synth 0.1 sine 880 vol 0.5
dialog --msgbox "Welcome to your new Linux Installation!
This (not) magical Wizard will help setting it up" 10 100
dialog --msgbox "You may see some Text floating around the Screen.
Thats normal.
Use the Arrow keys to Navigate Options" 10 100
