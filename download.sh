function start_shell_or_venv() {
    echo "Download mp3, Download format?"
    select option in "Download mp3" "Download Format" "Exit"; do
        case $option in
            "Download mp3" ) read -p "Please enter a link: " link
            yt-dlp -x --audio-format mp3 $link; break;;
            "Download Format" ) read -p "Please enter a link: " link
            yt-dlp --list-formats $link
            read -p "Please Enter a format: " form
            yt-dlp -f $form $link; break;;
            "Exit" ) break;;
        esac
    done
}

start_shell_or_venv
