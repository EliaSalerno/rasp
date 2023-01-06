for i in $(seq 30);
do
	ut="ut$i"
	echo "  Utente: $ut"
	useradd -m $ut
	lp=`apg -c cl_seed -n 1 -m 8 -x 8 -t -E 0O1Il`
	echo $ut:$lp | chpasswd
	echo "password: $lp"
done
