#! /bin/bash 
echo "STARTING COMPILING"
cd ./Gramaticas
java -jar ./Jars/jflex-full-1.8.2.jar Lexer.jflex
java -jar ./Jars/java-cup-11b.jar -parser Parser -symbols sym Parser.cup