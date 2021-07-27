@echo off
set run=true
if %1 == "--ver" (
	echo Maybe bat Version 1.0.0
) else if %1 == "--help" (
	echo Maybe bat Usage :
	echo --ver - print version
	echo --run - compile and run code
	echo --help - Compiler Usage
	echo --compile - compile code
) else if %1 == "--run" (
	set run=true
) else if %1 == "--compile" (
	set run=false
)

echo @echo off>%2.bat
FOR /F "delims=; tokens=1,2,3,4,5,6,7,8" %%a in (%2.maybebat) do (
	if %%a == print[maybe] (
		echo echo %%b>>%2.bat
	) else if %%a == wait[button] (
		echo pause>>%2.bat
	) else if %%a == labels[label] (
		echo :%%b>>%2.bat
	) else if %%a == labels[goto] (
		echo goto %%b>>%2.bat
	) else if %%a == variable[set] (
		echo set %%b=%%c>>%2.bat
	) else if %%a == variable[math] (
		echo set /a %%b=%%c>>%2.bat
	) else if %%a == if[goto] (
		echo if %%b==%%c goto %%d>>%2..bat
	) else if %%a == if[batch] (
		echo if %%b %%c %%d>>%2.bat
	)

)
if %run% == true (
	%2.bat
) else if %run% == false (
	exit /b
)