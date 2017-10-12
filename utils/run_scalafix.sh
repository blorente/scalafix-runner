if [ "$1" == "-h" ]; then
  echo "Usage: `./utils/$0` - Run scalafix in a given directory"
  exit 0
fi

time sbt -mem 2048 "scalafix https://raw.githubusercontent.com/PRL-PRG/scalafix-rule-workshop/implicit-context/rules/src/main/scala/implicits/ImplicitContext.scala"
