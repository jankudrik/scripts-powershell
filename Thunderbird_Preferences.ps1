# Create a list of preference files.
$prefsFile = Get-ChildItem -Path $ENV:APPDATA/Thunderbird/Profiles -Include prefs.js -Recurse

# Parameters to remove from the source file.
$parametersToRemove = 
"app.update.auto",
"app.update.disable_button.showUpdateHistory",
"app.update.enabled"

# Parameters and their values to insert.
$parametersToInsert = 
'user_pref("app.update.auto", false);
user_pref("app.update.disable_button.showUpdateHistory", false);
user_pref("app.update.enabled", false);'

# Update every file in the list.
ForEach ($prefsFile in $prefsFile)
{
    # Delete a config line that may already be there.
    (Get-Content $prefsFile) | Select-String -Pattern $parametersToRemove -NotMatch | Set-Content $prefsFile
    # Add the defined line at the end of the preference file.
    Add-Content -Path $prefsFile $parametersToInsert
}