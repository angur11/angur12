@echo off
color 0A
:start
cls

time /T
date /T
echo


#create folder
md   "Model_O_Firmware"

#build file
cd C:\Keil_v5\UV4
UV4 -b "C:\Users\Uma\Desktop\DFU(PIDB00E)\project\mdk5\firmware.uvprojx"
exit 0

#copy files
echo d |  copy "C:\Users\Uma\Desktop\DFU(PIDB00E)\project\mdk5\Objects\firmware.bin" "Model_O_Firmware"

#Rename a file
rename "firmware.bin" "Model_O_firmware.bin"

REN "C:\Users\Uma\Desktop\Model_O_Firmware\firmware (20220420).bin" "Model_O_firmware  (%_year%%_month%%_day%).bin"


set CURRENT_DATE=%date:~10,4%%date:~4,2%%date:~7,2%
ren somefile.txt  somefile_2%%time:~3,2%-%DATE:/=%.txt

for /F "tokens=2" %%i in ('date /t') do set mydate=%%i


set binfileDir=C:\Users\Uma\Desktop\Model_O_Firmware\
set binfile=%binfileDir%Model_O_firmware_%today%.bin

REN "C:\Users\Uma\Desktop\123\firmware.bin" "Model_O_firmware%date:-6,4%%date:-3,2%%date:-0,2%.bin"

REN "C:\Users\Uma\Desktop\123\firmware.bin" "Model_O_firmware_'date +'%Y-%m-%d''.bin"
