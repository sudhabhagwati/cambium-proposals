# Cambium Proposals

A scalable LaTeX-based proposal, timeline, and quote system for Cambium Analytics.

## Purpose

This repository provides a consistent structure for preparing:

- technical proposals
- project timelines
- effort estimates
- client quotes

It is designed so each client project follows the same format and branding.

## Repository Structure

- `templates/` reusable LaTeX templates
- `assets/branding/` colors and brand definitions
- `clients/` one folder per client/project
- `scripts/` helper scripts for creating new projects

## Recommended Workflow

1. Create a new project folder under `clients/`
2. Copy the sample project structure
3. Update `metadata.tex`
4. Edit the section files in `proposal/sections/`
5. Compile `main.tex` to PDF
6. Commit changes to GitHub

## Suggested Project Code Format

Use a format like:

- `CA-2026-001`
- `CA-2026-002`

Where:
- `CA` = Cambium Analytics
- `2026` = year
- `001` = sequential project number

## Suggested Git Commands

```bash
git init
git add .
git commit -m "Initial Cambium proposal system"
git branch -M main
git remote add origin <your-github-repo-url>
git push -u origin main