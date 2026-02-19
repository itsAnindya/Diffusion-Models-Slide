@echo off
setlocal

cd /d "%~dp0"

echo [1/4] Running pdflatex...
pdflatex -interaction=nonstopmode -halt-on-error diffusion_models_slide.tex
if errorlevel 1 goto :error

echo [2/4] Running biber...
biber diffusion_models_slide
if errorlevel 1 goto :error

echo [3/4] Running pdflatex...
pdflatex -interaction=nonstopmode -halt-on-error diffusion_models_slide.tex
if errorlevel 1 goto :error

echo [4/4] Running pdflatex...
pdflatex -interaction=nonstopmode -halt-on-error diffusion_models_slide.tex
if errorlevel 1 goto :error

echo.
echo Build complete: diffusion_models_slide.pdf
goto :end

:error
echo.
echo Build failed. Check the log output above.
exit /b 1

:end
endlocal
