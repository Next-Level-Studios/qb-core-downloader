
@echo off
:begining
cls
echo.
echo     [102;1m Hello from Next Level Studio [0m
echo     This applet allows you to download all the latest QB-Core repos.
echo     You need to have GIT installed for this to work https://git-scm.com/
echo.
echo.
echo     Please select from the following
echo     1) Download into the folder this I'm running this from
echo     2) please download to a directory I'll specify.
echo.
echo.


:begin
set "id=fail"
set /P "id=Enter id: "

set CURRENTDIR=%~dp0

goto :download%id%

:download1
echo.
echo.
echo.
echo When ready, press any key to download to the [101;1mCURRENT FOLDER[0m.
echo If this was a mistake, close this window and start again!
echo We've identified the current folder as:
echo [104;1m %CURRENTDIR% [0m
pause
cls
echo [101;1m Downloading in progress![0m
timeout 1 > NUL
echo [1m This may take a minute...[0m
timeout 5 > NUL

goto downloadfiles


goto :end

:download2

echo.
echo.
echo.
echo     Where would you like to download the files?
echo     Please provide the full directory including the trailing slash (\)
echo.
echo    example:
echo    [104;1m c:\fivem\cleanqb\ [0m
echo.
echo.

set "dlpath=fail"
set /P "dlpath=Enter path: "
if not exist "%dlpath%" mkdir %dlpath%

if %ERRORLEVEL% neq 0 goto errorscreen
goto begindownload

:errorscreen
cls
echo [101;1mInvalid Path. [0m
echo.
echo.
echo.
echo lets try again
timeout 2 > NUL
goto begining

:begindownload
cd /D %dlpath%
echo When ready, press any key to download to the [101;1m%dlpath%[0m.
echo If this was a mistake, close this window and start again!

pause
cls
echo [101;1m Downloading in progress![0m
timeout 1 > NUL
echo [1m This may take a minute...[0m
timeout 5 > NUL
goto downloadfiles

:downloadfiles
git clone -b main https://github.com/qbcore-framework/qb-radio ./resources/[voice]/qb-radio
git clone -b main https://github.com/qbcore-framework/qb-core ./resources/[qb]/qb-core
git clone -b main https://github.com/qbcore-framework/qb-scoreboard ./resources/[qb]/qb-scoreboard
git clone -b main https://github.com/qbcore-framework/qb-adminmenu ./resources/[qb]/qb-adminmenu
git clone -b main https://github.com/qbcore-framework/qb-multicharacter ./resources/[qb]/qb-multicharacter
git clone -b main https://github.com/qbcore-framework/qb-target ./resources/[qb]/qb-target
git clone -b main https://github.com/qbcore-framework/qb-customs ./resources/[qb]/qb-customs
git clone -b main https://github.com/qbcore-framework/qb-vehiclesales ./resources/[qb]/qb-vehiclesales
git clone -b main https://github.com/qbcore-framework/qb-vehicleshop ./resources/[qb]/qb-vehicleshop
git clone -b main https://github.com/qbcore-framework/qb-houserobbery ./resources/[qb]/qb-houserobbery
git clone -b main https://github.com/qbcore-framework/qb-prison ./resources/[qb]/qb-prison
git clone -b main https://github.com/qbcore-framework/qb-atms ./resources/[qb]/qb-atms
git clone -b main https://github.com/qbcore-framework/qb-hud ./resources/[qb]/qb-hud
git clone -b main https://github.com/qbcore-framework/qb-management ./resources/[qb]/qb-management
git clone -b main https://github.com/qbcore-framework/qb-weed ./resources/[qb]/qb-weed
git clone -b main https://github.com/qbcore-framework/qb-lapraces ./resources/[qb]/qb-lapraces
git clone -b main https://github.com/qbcore-framework/qb-inventory ./resources/[qb]/qb-inventory
git clone -b main https://github.com/qbcore-framework/qb-houses ./resources/[qb]/qb-houses
echo [1m Cooling down (we dont want to spam github)...[0m
timeout 5 > NUL
git clone -b main https://github.com/qbcore-framework/qb-garages ./resources/[qb]/qb-garages
git clone -b main https://github.com/qbcore-framework/qb-ambulancejob ./resources/[qb]/qb-ambulancejob
git clone -b main https://github.com/qbcore-framework/qb-vehiclefailure ./resources/[qb]/qb-vehiclefailure
git clone -b main https://github.com/qbcore-framework/qb-radialmenu ./resources/[qb]/qb-radialmenu
git clone -b main https://github.com/qbcore-framework/qb-crypto ./resources/[qb]/qb-crypto
git clone -b main https://github.com/qbcore-framework/qb-weathersync ./resources/[qb]/qb-weathersync
git clone -b main https://github.com/qbcore-framework/qb-policejob ./resources/[qb]/qb-policejob
git clone -b main https://github.com/qbcore-framework/qb-traphouse ./resources/[qb]/qb-traphouse
git clone -b main https://github.com/qbcore-framework/qb-apartments ./resources/[qb]/qb-apartments
git clone -b main https://github.com/qbcore-framework/qb-vehiclekeys ./resources/[qb]/qb-vehiclekeys
git clone -b main https://github.com/qbcore-framework/qb-mechanicjob ./resources/[qb]/qb-mechanicjob
git clone -b main https://github.com/qbcore-framework/qb-phone ./resources/[qb]/qb-phone
git clone -b main https://github.com/qbcore-framework/qb-vineyard ./resources/[qb]/qb-vineyard
git clone -b main https://github.com/qbcore-framework/qb-weapons ./resources/[qb]/qb-weapons
git clone -b main https://github.com/qbcore-framework/qb-scrapyard ./resources/[qb]/qb-scrapyard
git clone -b main https://github.com/qbcore-framework/qb-tunerchip ./resources/[qb]/qb-tunerchip
git clone -b main https://github.com/qbcore-framework/qb-towjob ./resources/[qb]/qb-towjob
echo [1m Cooling down again (we dont want to spam github)...[0m
timeout 5 > NUL
git clone -b main https://github.com/qbcore-framework/qb-streetraces ./resources/[qb]/qb-streetraces
git clone -b main https://github.com/qbcore-framework/qb-storerobbery ./resources/[qb]/qb-storerobbery
git clone -b main https://github.com/qbcore-framework/qb-spawn ./resources/[qb]/qb-spawn
git clone -b main https://github.com/qbcore-framework/qb-skillbar ./resources/[qb]/qb-skillbar
git clone -b main https://github.com/qbcore-framework/qb-smallresources ./resources/[qb]/qb-smallresources
git clone -b main https://github.com/qbcore-framework/qb-recyclejob ./resources/[qb]/qb-recyclejob
git clone -b main https://github.com/qbcore-framework/qb-diving ./resources/[qb]/qb-diving
git clone -b main https://github.com/qbcore-framework/qb-cityhall ./resources/[qb]/qb-cityhall
git clone -b main https://github.com/qbcore-framework/qb-truckrobbery ./resources/[qb]/qb-truckrobbery
git clone -b main https://github.com/qbcore-framework/qb-pawnshop ./resources/[qb]/qb-pawnshop
git clone -b main https://github.com/qbcore-framework/qb-taxijob ./resources/[qb]/qb-taxijob
git clone -b main https://github.com/qbcore-framework/qb-busjob ./resources/[qb]/qb-busjob
git clone -b main https://github.com/qbcore-framework/qb-newsjob ./resources/[qb]/qb-newsjob
echo [1m Cooling down again (we dont want to spam github)...[0m
timeout 5 > NUL
git clone -b main https://github.com/qbcore-framework/qb-jewelery ./resources/[qb]/qb-jewelery
git clone -b main https://github.com/qbcore-framework/qb-bankrobbery ./resources/[qb]/qb-bankrobbery
git clone -b main https://github.com/qbcore-framework/qb-truckerjob ./resources/[qb]/qb-truckerjob
git clone -b main https://github.com/qbcore-framework/qb-keyminigame ./resources/[qb]/qb-keyminigame
git clone -b main https://github.com/qbcore-framework/qb-fitbit ./resources/[qb]/qb-fitbit
git clone -b main https://github.com/qbcore-framework/qb-commandbinding ./resources/[qb]/qb-commandbinding
git clone -b main https://github.com/qbcore-framework/qb-banking ./resources/[qb]/qb-banking
git clone -b main https://github.com/qbcore-framework/qb-clothing ./resources/[qb]/qb-clothing
git clone -b main https://github.com/qbcore-framework/qb-hotdogjob ./resources/[qb]/qb-hotdogjob
git clone -b main https://github.com/qbcore-framework/qb-doorlock ./resources/[qb]/qb-doorlock
git clone -b main https://github.com/qbcore-framework/qb-garbagejob ./resources/[qb]/qb-garbagejob
git clone -b main https://github.com/qbcore-framework/qb-drugs ./resources/[qb]/qb-drugs
git clone -b main https://github.com/qbcore-framework/qb-shops ./resources/[qb]/qb-shops
git clone -b main https://github.com/qbcore-framework/qb-lockpick ./resources/[qb]/qb-lockpick
git clone -b main https://github.com/qbcore-framework/qb-interior ./resources/[qb]/qb-interior
echo [1m Cooling down again (we dont want to spam github)...[0m
timeout 5 > NUL
git clone -b main https://github.com/qbcore-framework/qb-menu ./resources/[qb]/qb-menu
git clone -b main https://github.com/qbcore-framework/qb-input ./resources/[qb]/qb-input
git clone -b main https://github.com/qbcore-framework/qb-loading ./resources/[qb]/qb-loading


@RD /S /Q "%CURRENTDIR%\[voice]\qb-radio\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-core\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-scoreboard\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-adminmenu\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-multicharacter\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-target\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-customs\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-vehiclesales\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-vehicleshop\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-houserobbery\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-prison\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-atms\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-hud\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-management\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-weed\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-lapraces\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-inventory\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-houses\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-garages\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-ambulancejob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-vehiclefailure\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-radialmenu\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-crypto\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-weathersync\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-policejob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-traphouse\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-apartments\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-vehiclekeys\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-mechanicjob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-phone\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-vineyard\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-weapons\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-scrapyard\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-tunerchip\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-towjob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-streetraces\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-storerobbery\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-spawn\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-skillbar\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-smallresources\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-recyclejob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-diving\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-cityhall\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-truckrobbery\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-pawnshop\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-taxijob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-busjob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-newsjob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-jewelery\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-bankrobbery\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-truckerjob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-keyminigame\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-fitbit\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-commandbinding\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-banking\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-clothing\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-hotdogjob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-doorlock\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-garbagejob\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-drugs\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-shops\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-lockpick\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-interior\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-menu\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-input\.git"
@RD /S /Q "%CURRENTDIR%\resources\[qb]\qb-loading\.git"

:end
cls
echo [102;97m Updating completed! [0m
echo We're Done, press any key to end!
pause
timeout 2 >nul
exit