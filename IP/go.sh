echo go.sh <name_of_prog> assumed in dir ./progs
export TARGET="out/production/IP"
rm -r -f $TARGET/iProlog
javac -O -d "$TARGET" src/iProlog/*.java
swipl -f pl2nl.pro -g "pl('$1'),halt"
java -cp "$TARGET" iProlog.Main "progs/$1.pl"
ls progs/*.pl