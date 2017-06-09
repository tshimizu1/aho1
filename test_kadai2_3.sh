#/bin/sh

tmp=/tmp/$$

ERROR_EXIT () { 
echo "$1" >&2 
rm -f $tmp-* 
exit 1
}

######### 
# TEST1 # 
######### 
echo 5 > $tmp-ans 
./kadai2.sh 5 15 > $tmp-out || ERROR_EXIT "TEST1-1" 
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo "OK" 
rm -f $tmp-* 
exit 0


