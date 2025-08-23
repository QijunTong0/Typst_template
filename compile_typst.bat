@echo off
FOR %%F IN (%*) DO (
    typst compile "%%F" "%%~nF.pdf"
)
