FIND_FILE_COMMAND="find_file_command.txt"
FIND_FILE="./find_file/FindFile.sh"
#このファイルがあるとSONG_ANYTHINGが実行
SONG_ANYTHING_COMMAND="song_anything_command.txt"
#SONG_ANYTHINGファイル
SONG_ANYTHING="./song_anything/SongAnything.sh"

#カレントディレクトリを自身のファイルへ
cd `dirname $0`

while true
do
	sleep 3

	if [ -f ${SONG_ANYTHING_COMMAND} ]; then
		rm -r ${SONG_ANYTHING_COMMAND}
		sh ${SONG_ANYTHING}
	elif [ -f ${FIND_FILE_COMMAND} ]; then
		rm -r ${FIND_FILE_COMMAND}
		sh ${FIND_FILE}
	fi
done