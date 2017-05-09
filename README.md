# Powershell scripts

In this repo I will share all my useful PS scripts.

They may not be beautiful and clever but they get the job done.

## Thunderbird_Preferences.ps1

Finds all Thunderbird prefs.js files in any TB profile belonging to a logged-in user, then it removes specified parameters inside those files and adds new parameters with desired values.
I used this as a logon script that deactivated TB's automatic updates, but it can be used for changing any other parameters. And if you edit the script appropriately, it will most probably work with Firefox prefs.js files as well.
