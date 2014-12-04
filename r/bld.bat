@rem This is relative apparently
set TMPDIR=.

@rem The path where the Rtools installed the R stuff. Should be a directory
@rem with a Tcl directory in it.
set RTOOLS=C:\R

xcopy /S /E "%RTOOLS%\Tcl" "%SRC_DIR%\Tcl\"
if errorlevel 1 exit 1


cd src\gnuwin32
make

if errorlevel 1 exit 1

make install

if errorlevel 1 exit 1
