OBSERVER_DIR="Observer.sh"

#カレントディレクトリを自身のファイルへ
cd `dirname $0`

sh ${OBSERVER_DIR} &
echo "起動完了しました"