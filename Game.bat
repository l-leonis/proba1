@echo off

REM #========================================================
REM #             Based on script
REM #      Developed by Raku (rakudayo@gmail.com)
REM #========================================================
REM # Use this batch file as you please.
REM #========================================================

REM #========================================================
REM #  Enter into game directory
REM #========================================================

CD Game_Data

REM #========================================================
REM #  Setup the Paths for the Importer/Exporter
REM #========================================================

REM # The path to the utility scripts relative to the project dir
SET SCRIPTS_DIR="Utility"

REM # The path to the project dir relative to the utility scripts
SET PROJECT_DIR=".."

REM #===============================
REM #  Change to Scripts Directory
REM #===============================

SET PREV_DIR=%CD%
CD %SCRIPTS_DIR%

REM #========================
REM #  RGSS script Importer
REM #========================

rxdatav.exe script_importer %PROJECT_DIR%

REM #======================
REM #  RMXP Data Importer
REM #======================

rxdatav.exe data_importer %PROJECT_DIR%

REM #=======================
REM #  Start Game
REM #=======================

CD %PREV_DIR%

Game.exe

CD ..