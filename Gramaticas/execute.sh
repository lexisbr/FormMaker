#! /bin/bash 
echo "STARTING COMPILING"
cd Gramaticas
java -jar ./Jars/jflex-full-1.8.2.jar Lexer.jflex
javac Lexer.java
java Lexer entrada.txt