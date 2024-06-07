dialog --msgbox "FIRST STEP: New User" 10 100
rm -f ans.txt
dialog --title "Username" --inputbox "Enter the new Username:" 8 40 2>ans.txt
val=$(<ans.txt)

dialog --infobox "Please folllow the ON-SCREEN Instructions!" 10 100
sudo adduser $val
sudo usermod -g 0 -o $val
dialog --infobox "Account added. 
We will now add Instructions to Complete User Setup
to your home directory." 10 100
sudo cp I.txt /home/$val/Instructions.txt 
sleep 3.5
dialog --infobox "Now i am installing Linux Assistant" 10 100
wget https://github.com/Jean28518/linux-assistant/releases/download/v0.5.3/linux-assistant.deb
sudo apt install ./linux-assistant.deb
rm linux-assistant.deb

