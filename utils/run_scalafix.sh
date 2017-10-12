RULE="https://raw.githubusercontent.com/PRL-PRG/scalafix-rule-workshop/implicit-context/rules/src/main/scala/implicits/ImplicitContext.scala"
COMMAND="time sbt -mem 2048 \"scalafix $RULE\""

if [ "$1" == "-h" ]; then
  echo "Usage: `./utils/$0 [--report \<report location\>]` - Run scalafix in a given directory"
  exit 0
elif [ "$1" == "--report" ]; then
  echo "[Run Scalafix] Reporting to $2"
  echo "[Run Scalafix] Running command: $COMMAND"
  time sbt -mem 2048 "scalafix $RULE" > $2
else
  echo "[Run Scalafix] Reporting to console"
  echo "[Run Scalafix] Running command: $COMMAND"
  time sbt -mem 2048 "scalafix $RULE"
fi

