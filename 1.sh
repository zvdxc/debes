dialog --msgbox "FIRST STEP: New User" 10 100
rm -f ans.txt
dialog --title "Username" --inputbox "Enter the new Username:" 8 40 2>ans.txt
val=$(<ans.txt)

dialog --infobox "Please folllow the ON-SCREEN Instructions!" 10 100
sudo adduser $val
dialog --infobox "Account added. 
We will now add Instructions to Complete User Setup
to your home directory." 10 100
#ADD CODE HERE
sleep 1.5

