for i in $(ls utenza/);
do
	for j in $(cat utenza/$i);
	do
		ut=${j%-*}
		ps=${j#*-}
		echo "  utente: $j"
		echo "password: $j"
	done
done
