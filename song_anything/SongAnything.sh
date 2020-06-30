INPUT_DIR="InputSound.py"

#カレントディレクトリを自身のファイルへ
cd `dirname $0`


say "何を歌いますか"

result=`python ${INPUT_DIR}`

if [ "失敗しました" != "${result}" ]; then
	say "${result}ですね"
	open "https://www.youtube.com/results?search_query=${result} 初音ミク"
fi

say "歌って欲しい時はもう一度言ってくださいね"