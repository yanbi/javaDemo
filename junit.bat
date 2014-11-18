mkdir testJunit
cd testJunit
xcopy Z:\EclipseWorkspace\git\javaDemo /e
javac -cp lib\junit4.11.jar -d bin test\de\fzi\javaDemo\test\Function1Test.java
java -cp .;lib\junit4.11.jar;lib\hamcrest1.3.jar;bin\de\fzi\javaDemo\test; org.junit.runner.JUnitCore Function1Test

pause