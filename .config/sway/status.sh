while :
do
    echo "$(date +'%Y-%m-%d %X') | Vol: $(pamixer --get-volume)%"
    sleep 0.1
done
