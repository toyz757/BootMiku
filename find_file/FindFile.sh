INPUT_DIR="InputSound.py"
result_file_path="./result.txt"

#カレントディレクトリを自身のファイルへ
cd `dirname $0`

say "どのファイルを検索しますか"
file_name=`python ${INPUT_DIR}`
if [ "失敗しました" != "${file_name}" ]; then
	find /Users/takimototatsumi/Documents -name "*${file_name}*" > $result_file_path
	say "検索完了しました"
	open $result_file_path
else
	say "すいません、上手く聞き取れませんでした。"
fi