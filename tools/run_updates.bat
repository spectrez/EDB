@echo off
:: UPDATES PATH SHOULD NOT BE EDITED!
set updatesPath=%~dp0..\updates
echo REMINDER: Updates aren't required for a fresh DB import!

:: MYSQL INFORMATION
:: Path to your Mysql folder
set mysqlpath=mysql
:: Hostname
set host=127.0.0.1
:: Username
set user=root
:: Password
set pass=root
:: Port
set port=3306
:: World Database
set world_db=edb_world

for %%C in ("%updatesPath%\*.sql") do (
	echo import: %%~nxC
	%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
)
pause
exit