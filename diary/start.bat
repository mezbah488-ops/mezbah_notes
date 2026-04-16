@echo off
for %%f in (*.tex) do set T=%%f
if "%T%"=="" (echo [error] No .tex file found. & pause & exit /b)
echo [fig] Watching: %T%
start /min "Inkscape-Opener" cmd /c py "C:\Users\Mezbah\inkscape-figures\inkscape_figures.py" watch "%T%"
start /min "SVG-Exporter"    cmd /c py "C:\Users\Mezbah\inkscape-figures\watch_figures.py" figures
