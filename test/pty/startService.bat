::@echo off
set JAVA_HOME=G:\32\jre
set PTY_HOME=G:\32\project\pty
G:
cd %PTY_HOME%


%JAVA_HOME%\bin\java.exe -server -Xmx900m -Xms256m ^
-XX:+UseG1GC ^
-XX:MaxGCPauseMillis=500 ^
-XX:+HeapDumpOnOutOfMemoryError ^
-XX:HeapDumpPath=%PTY_HOME%\tmp\dump ^
-XX:+PrintGCDateStamps ^
-XX:+PrintGCDetails ^
-Xloggc:%PTY_HOME%\tmp\gc\gc.log ^
-Djava.net.preferIPv4Stack=true ^
-Duser.timezone=GMT+08 ^
 -cp %PTY_HOME%\lib\* com.pty.launch.PtyApp
