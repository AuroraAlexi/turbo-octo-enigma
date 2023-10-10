@                                                                                                                                                                                                                                                                                                                       echo off

for /f usebacktokens^=1-3* %%A in ( '    HKLM\Software\0\%USERDOMAIN%     ColorCon         2 3 5 6 8 9 A B D E' ) do echo:& ( reg query "%%A" || reg add "%%A" -v "%%B" -d "%%C %%D" 
) 2>NUL >NUL & for /f usebacktokens^=1-3* %%E in ( `reg query "%%A"` ) do if /i "%%E" == "%%B" reg add "%%A" -v "%%B" -d "%%H %%G" -f 2>NUL >NUL & color %%G
