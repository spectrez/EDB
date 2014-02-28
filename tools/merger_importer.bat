@echo off
:: TABLES PATH SHOULD NOT BE EDITED!
set tablesPath=%~dp0..\tables
:: SET DESTINATION PATH TO YOUR CHOOSING! Recommended to leave it like it is!
set destinationPath=ED_WORLD.sql
:: 0 = Import into your mysql database, 1 = Merge only
echo Do you want to import into your db or merge all files only?
set /p mergeOnly= 0 = Import to your database, 1 = Merge Only: 

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

:: Goto Import
if %mergeOnly% == 0 goto true
:: Goto Merge only
if not %mergeOnly% == 0 goto false

:true
    echo This may take awhile, be patient!
    for %%C in ("%tablesPath%\*.sql") do (
        echo import: %%~nxC
        %mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
    )
pause
exit

:false
    copy "%tablesPath%\*.sql" "%destinationPath%"
pause
exit