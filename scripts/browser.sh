dir="$HOME/.config/rofi"
theme="browser"

canva="Canva\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/canva.ico"
deviantart="Deviantart\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/deviantart.ico"
drive="One Drive\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/sharepoint.ico"
facebook="Facebook\0icon\x1fweb-facebook"
github="Github\0icon\x1fgithub"
instagram="Instagram\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/instagram.ico"
linkedin="Linkedin\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/linkedin.ico"
mercadolibre="Mercado Libre\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/mercado.ico"
partquest="PartQuest\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/partquest.ico"
paypal="Paypal\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/paypal.ico"
spotify="Spotify\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/spotify.ico"
tinkercad="Tinkercad\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/Tinker.ico"
twitter="Twitter\0icon\x1fweb-twitter"
whatsapp="Whatsapp\0icon\x1fwhatsapp"
youtube="Youtube\0icon\x1fyoutube"

rofi_cmd(){
	rofi -dmenu -p "Browser menu" -theme $dir/"$theme".rasi
}

run_rofi() {
  echo -en "$canva\n$deviantart\n$drive\n$facebook\n$github\n$instagram\n$linkedin\n$mercadolibre\n$partquest\n$paypal\n$spotify\n$tinkercad\n$twitter\n$whatsapp\n$youtube" | rofi_cmd
}

chosen="$(run_rofi)"
case $chosen in
	"Canva")
		google-chrome-stable --app=https://www.canva.com/
		;;
	"Deviantart")
		google-chrome-stable --app=https://www.deviantart.com/
		;;
	"One Drive")
		google-chrome-stable --app=https://onedrive.live.com/
		;;
	"Facebook")
		google-chrome-stable --app=https://www.facebook.com/
		;;
	"Github")
		brave --app=https://github.com
		;;
	"Instagram")
		google-chrome-stable --app=https://www.instagram.com/
		;;
	"Linkedin")
		google-chrome-stable --app=https://www.linkedin.com/feed/
		;;
	"Mercado Libre")
		google-chrome-stable --app=https://www.mercadolibre.com.mx/
		;;
	"PartQuest")
		google-chrome-stable --app=https://us-east-1.app.portal.partquest.com/
		;;
	"Paypal")
		google-chrome-stable --app=https://www.paypal.com/mx/home
		;;
	"Spotify")
		brave --app=https://open.spotify.com/
		;;
	"Tinkercad")
		google-chrome-stable --app=https://www.tinkercad.com/
		;;
	"Twitter")
		google-chrome-stable --app=https://twitter.com/
		;;
	"Whatsapp")
		google-chrome-stable --app=https://web.whatsapp.com/
		;;
	"Youtube")
		brave --app=https://www.youtube.com/
		;;
esac
