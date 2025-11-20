# Git Bash and PowerShell Command Cheat Sheet

A unified reference guide for using **Git Bash** and **Windows PowerShell** efficiently during development, data analysis, and reproducible research projects.

---

## 🧭 Navigation Commands

| Task | Git Bash Command | PowerShell Command |
|------|------------------|--------------------|
| Show current directory | `pwd` | `Get-Location` |
| List files and folders | `ls` | `Get-ChildItem` or `ls` |
| Change directory | `cd <path>` | `Set-Location <path>` or `cd <path>` |
| Create a directory | `mkdir <folder>` | `New-Item -ItemType Directory -Name <folder>` |
| Remove a file | `rm <file>` | `Remove-Item <file>` |
| Remove a directory | `rm -r <folder>` | `Remove-Item <folder> -Recurse` |
| Clear the screen | `clear` | `Clear-Host` or `cls` |

---

## 💾 File Management

| Task | Git Bash Command | PowerShell Command |
|------|------------------|--------------------|
| Create an empty file | `touch <file>` | `New-Item <file>` |
| Copy a file | `cp <source> <destination>` | `Copy-Item <source> <destination>` |
| Move or rename a file | `mv <source> <destination>` | `Move-Item <source> <destination>` |
| View file contents | `cat <file>` | `Get-Content <file>` |
| Search text inside files | `grep <pattern> <file>` | `Select-String <pattern> <file>` |

---

## ⚙️ Git Version Control

| Task | Git Command | Description |
|------|--------------|-------------|
| Initialize repo | `git init` | Create a new local repository. |
| Clone repo | `git clone <url>` | Copy a repository from GitHub or another remote. |
| Check status | `git status` | Show modified, staged, and untracked files. |
| Stage files | `git add <file>` | Stage a file for the next commit. |
| Stage all files | `git add .` | Add all modified/untracked files. |
| Commit changes | `git commit -m "message"` | Save staged changes with a description. |
| View history | `git log` | Show the commit history. |
| Create new branch | `git branch <name>` | Create a new branch. |
| Switch branches | `git checkout <name>` | Switch to another branch. |
| Merge branches | `git merge <branch>` | Merge a branch into the current one. |
| Pull changes | `git pull origin main` | Update your local repo from the remote. |
| Push changes | `git push origin main` | Upload commits to remote repository. |
| Undo last commit (keep changes) | `git reset --soft HEAD~1` | Undo last commit but keep file changes staged. |
| Undo commit and discard changes | `git reset --hard HEAD~1` | Undo last commit and discard changes. |
| Create `.gitignore` | `echo "*.csv" >> .gitignore` | Add file types to ignore list. |

---

## 🧰 Project and Script Execution

| Task | Git Bash | PowerShell |
|------|-----------|-------------|
| Run R script | `Rscript script.R` | `Rscript .\script.R` |
| Run Python script | `python script.py` | `python .\script.py` |
| Run Makefile | `make all` | `make all` (if Make installed) |
| List environment variables | `env` | `Get-ChildItem Env:` |
| Print one environment variable | `echo $VAR` | `$Env:VAR` |

---

## 🔍 Networking and System Info

| Task | Git Bash Command | PowerShell Command |
|------|------------------|--------------------|
| Check internet connection | `ping google.com` | `Test-Connection google.com` |
| Show running processes | `ps` | `Get-Process` |
| Show system info | `uname -a` | `Get-ComputerInfo` |
| Display date/time | `date` | `Get-Date` |

---

## 🧹 Cleanup and Utilities

| Task | Git Bash | PowerShell |
|------|-----------|-------------|
| Remove all `.Rhistory` files | `find . -name "*.Rhistory" -delete` | `Get-ChildItem -Path . -Recurse -Include *.Rhistory | Remove-Item` |
| Delete empty folders | `find . -type d -empty -delete` | `Get-ChildItem -Directory -Recurse | Where-Object { !(Get-ChildItem $_.FullName) } | Remove-Item` |
| Compress folder | `tar -czvf archive.tar.gz folder` | `Compress-Archive -Path folder -DestinationPath archive.zip` |
| Unzip file | `tar -xzvf archive.tar.gz` | `Expand-Archive archive.zip -DestinationPath ./` |

---

## ✅ Example Workflow (BIOS Project)

1. **Clone your repo:**
   ```bash
   git clone https://github.com/yourname/bios512-project.git
   ```

2. **Navigate to project:**
   ```bash
   cd bios512-project
   ```

3. **Run the analysis Makefile:**
   ```bash
   make report.pdf
   ```

4. **Commit and push results:**
   ```bash
   git add .
   git commit -m "Final project report and figures"
   git push origin main
   ```

---

## 🧩 Pro Tips

- Use `Ctrl + L` to clear your terminal in both Git Bash and PowerShell.
- Use **tab completion** to quickly complete file names or Git branches.
- Use `git diff` to preview changes before committing.
- Use PowerShell aliases (`ls`, `cat`, `rm`) for Linux-style commands.
- In Git Bash, you can combine commands with `&&` — e.g., `git add . && git commit -m "update"`.

---

This cheat sheet is ideal to include in a `/docs` folder of your GitHub repository for your BIOS 512/611 project, ensuring portability and clear workflow documentation.

