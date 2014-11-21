rd bin /S /Q
mkdir bin
:: rd testJunit /S /Q
:: mkdir testJunit
:: xcopy javaDemo testJunit /E
javac -cp lib\junit4.11.jar -d bin test\de\fzi\javaDemo\test\*.java
::javac -cp lib\junit4.11.jar -d bin test\de\fzi\javaDemo\test\Function1Test.java
cd bin\de\fzi\javaDemo\test
java -cp .;..\..\..\..\..\lib\junit4.11.jar;..\..\..\..\..\lib\hamcrest1.3.jar;..\..\..\..\..\bin; org.junit.runner.JUnitCore *
::java -cp .;lib\junit4.11.jar;lib\hamcrest1.3.jar;bin; org.junit.runner.JUnitCore de.fzi.javaDemo.test.Function1Test
pause