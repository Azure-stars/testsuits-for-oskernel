
./busybox echo "#### OS COMP TEST GROUP START cyclictest ####"

run_cyclictest() {
    echo "====== cyclictest $1 begin ======"
    ./cyclictest $2
    if [ $? -eq 0 ]; then
	    ans="success"
    else
	    ans="fail"
    fi
  echo "====== cyclictest $1 end: $ans ======"
}

run_cyclictest NO_STRESS_P1 "-a -i 1000 -t1  -p99 -D 1s -q"
run_cyclictest NO_STRESS_P8 "-a -i 1000 -t8  -p99 -D 1s -q"

echo "====== start hackbench ======"
./hackbench -l 100000000 &
hackbench_pid=$!

sleep 1

run_cyclictest STRESS_P1 "-a -i 1000 -t1  -p99 -D 1s -q"
run_cyclictest STRESS_P8 "-a -i 1000 -t8  -p99 -D 1s -q"

# Kill children in the parent process's interrupt processing, 
# so SIGINT is used instead of SIGKILL
kill -2 $hackbench_pid
if [ $? -eq 0 ]; then
    ans="success"
else
    ans="fail, ignore STRESS result"
fi
sleep 1
echo "====== kill hackbench: $ans ======"


./busybox echo "#### OS COMP TEST GROUP END cyclictest ####"