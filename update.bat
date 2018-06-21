@echo OFF
IF [%1] == [] GOTO no-com
IF %1==csv GOTO csv-parser
IF %1==svg GOTO svg
IF %1==sqlite GOTO sqlite

:no-com
echo Enter a command please
goto :eof

:csv-parser
rmdir csv-parser /S /Q
git clone https://github.com/vincentlaucsb/csv-parser.git
move /Y csv-parser/docs csv-parser-temp
rmdir csv-parser /S /Q
move /Y csv-parser-temp csv-parser
goto :eof

:svg
rmdir svg /S /Q
git clone https://github.com/vincentlaucsb/svg.git
move /Y svg/docs svg-temp
rmdir svg /S /Q
move /Y svg-temp svg
goto :eof

:sqlite
rmdir sqlite-cpp /S /Q
git clone https://github.com/vincentlaucsb/sqlite-cpp.git
move /Y sqlite-cpp/docs sqlite-cpp-temp
rmdir sqlite-cpp /S /Q
move /Y sqlite-cpp-temp sqlite-cpp
goto :eof