word="$(xclip -out -selection primary)"
dunstctl close-all
notify-send -t 60000 "$(curl "https://api.dictionaryapi.dev/api/v2/entries/en/$word" | jq  '.[].meanings[].definitions[].definition')"
