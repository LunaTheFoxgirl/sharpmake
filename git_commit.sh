git add --all
exec 3>&1
git commit -m "$(dialog --inputbox "Enter commit message:" 6 70 "" 2>&1 1>&3)"
git push
