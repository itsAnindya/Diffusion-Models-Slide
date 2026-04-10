@echo off
pdflatex -interaction=nonstopmode -halt-on-error diffusion_models_report.tex
bibtex diffusion_models_report
pdflatex -interaction=nonstopmode -halt-on-error diffusion_models_report.tex
pdflatex -interaction=nonstopmode -halt-on-error diffusion_models_report.tex
