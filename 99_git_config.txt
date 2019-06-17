#All settings are managed using config command
git config --system #At the OS or server level
git config --global #At user level. Much used options
git config #At repository level

#Shows currently configured settings
git config --list #All settings
git config user.name #Specific settings

#Set your name
git config --global user.name "Vaithyanathan Ramanathan"

#Set your email
git config --global user.email "vaithy31@gmail.com"

#Set your editor preference. For other editors, please check git-scm or github website for exact syntax and options
git config --global core.editor "'C:\Program Files\Notepad++\notepad++.exe'"
git config --global core.editor "'C:\Program Files\Notepad++\notepad++.exe'  -multiInst -notabbar -nosession -noPlugin"

#Enable colouring option to true for git verbose messages
git config --global color.ui true

#Git ignore at user specific. Applies to all repositories
git config --global core.excludesfile ~/.global_git_ignore

#Sets alias of frequently used commands to save typing
git config --global alias.st status
git config --global alias.co checkout

#Prompt String 1 Edit to display branch name in terminal
export PS1='\W$(__git_ps1 "(%s)") > ' #\W - Current Working Directory, %s is for branch name within parenthesis

#Credentials Manager
git config --global credential.helper wincred
