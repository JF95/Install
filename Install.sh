echo "Welcome to your fresh Arch installation"

printf "\n---> Installing System Monitor\n"
yaourt -S gnome-system-monitor --noconfirm

printf "\nSelect your favourite text editor:\n"
select texteditor in "Sublime-Text" "Atom"; do
    case $texteditor in
        Sublime-Text ) printf "\n---> Sublime-Text\n\n";	
			yaourt -S sublime-text-dev --noconfirm;
			break;;
        Atom ) printf "\n---> Installing Atom\n\n";
			yaourt -S atom --noconfirm;
			break;;
    esac
done

printf "\nSelect your favourite internet browser:\n\n"

select browser in "Firefox" "Google-Chrome" "Vivaldi"; do
    case $browser in
        Firefox ) printf "\n---> Installing Firefox\n\n";	
			yaourt -S firefox --noconfirm;
			break;;
        Google-Chrome ) printf "\n---> Installing Google Chrome\n\n";
			yaourt -S google-chrome --noconfirm;
			break;;
		Vivaldi ) printf "\n---> Installing Vivaldi\n\n";
			yaourt -S vivaldi --noconfirm;
			break;;
    esac
done

printf "\n---> Installing Clang\n\n"
yaourt -S clang --noconfirm

printf "\n---> Installing LLVM\n\n"
yaourt -S llvm --noconfirm

printf "\n---> Installing Valgrind\n"
yaourt -S valgrind --noconfirm

printf "\n---> Installing GDB\n"
yaourt -S gdb --noconfirm

printf "\n---> Color on GCC and g++\n"
yaourt -S colorgcc --noconfirm
sudo ln -s /usr/bin/colorgcc /usr/local/sbin/g++
sudo ln -s /usr/bin/colorgcc /usr/local/sbin/gcc

printf "\n---> Installing Telegram\n"
yaourt -S telegram-desktop-bin --noconfirm

printf "\n---> Installing EOG Image Viewer"
yaourt -S eog --noconfirm

printf "\n---> Installing Albert"
yaourt -S albert --noconfirm

printf "\n---> Installing Doxygen\n"
yaourt -S doxygen --noconfirm

printf "\n---> Installing Git\n"
yaourt -S git --noconfirm

printf "\n---> Python 3.6 and Pip\n"
yaourt -S python python-pip --noconfirm

printf "\n---> Installing Numpy\n"
yaourt -S python-numpy --noconfirm

printf "\n---> Installing Scipy\n"
yaourt -S python-scipy --noconfirm

printf "\n---> Installing Matplotlib\n"
yaourt -S python-matplotlib

printf "\n---> Installing Scikit-learn\n"
yaourt -S python-scikit-learn --noconfirm

printf "\n--> Installing Nylas-Mail"
yaourt -S nylas-mail-bin --noconfirm

printf "\nWould you like to install Spotify?:\n"

select spotify in "Yes" "No"; do
    case $spotify in
        Yes ) printf "\n---> Installing Spotify\n\n";	
			yaourt -S spotify --noconfirm;
			break;;
        No ) break;;
    esac
done

printf "\nWould you like to install Vimix?It will allow you to customize your grub.\n"

select grub in "Yes" "No"; do
    case $grub in
        Yes ) printf "\n---> Installing Vimix\n\n";	
			yaourt -S grub2-theme-vimix-git --noconfirm;
			sudo sh -c "echo -e '\nGRUB_THEME="/boot/grub/themes/Vimix/theme.txt"' >> /etc/default/grub"
			sudo grub-mkconfig -o /boot/grub/grub.cfg
			break;;
        No ) break;;
    esac
done

echo "It's over"