@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Mon Mar 03 15:47:38 +0530 2025
REM SW Build 2700185 on Thu Oct 24 18:46:05 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 09409d49a96e4f25b0c069d4c729b796 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot TB_4_RCA_behav xil_defaultlib.TB_4_RCA -log elaborate.log"
call xelab  -wto 09409d49a96e4f25b0c069d4c729b796 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot TB_4_RCA_behav xil_defaultlib.TB_4_RCA -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
