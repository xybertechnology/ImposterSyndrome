# PowerShell: Imposter Syndrome

# Establishing Variables

# Query WMI Win32_ComputerSystem class to store the currently logged-in user in the $USER variable for later use
$USER= ((Get-WMIObject -ClassName Win32_ComputerSystem).username).split('\')[1]

# Set HOSTNAME as a variable to be called in Strings
$HOSTNAME = HOSTNAME

# Instructions

Read-Host "Press ENTER on your keyboard to continue with script dialogue (SUCH AS NOW!)"

# Introduction
Write-Host "Welcome, Professional!`n`nThis basic script is here to show you that you deserve to be in this field just as much as the next genius!"

Read-Host

Write-Host "Imposter Syndrome is a real phenomenon, but it does not define your skills, personality, or your entire life."

Read-Host

Write-Host "Take this for an example..."

Read-Host

Write-Host "This is your identity ($USER) on $HOSTNAME"

Read-Host

Write-Host "$USER is one component in $HOSTNAME that allows $HOSTNAME to function."

Read-Host

Write-Host "Without $USER (You), $HOSTNAME will not be able to host a unique environment such as your unique Desktop, or your entire filesystem, which lives inside $USER (You)."

Read-Host

Write-Host "Such as..."

Read-Host

GET-ChildItem -Path "C:\Users\$USER"

Write-Host "`n`nUsers in $HOSTNAME like $USER (You) are also the reason why processes like the ones loading below are able to run, otherwise your Windows operating system will be inoperable."

Read-Host 

Write-Host "`nLoading processes... (PLEASE DO NOT HIT ENTER)"

Start-Sleep 2

Write-Host "`nPlease wait a few moments! (PLEASE DO NOT HIT ENTER)"

Start-Sleep 2

Get-Process | Where-Object { $_.SI -eq "1" } | Select-Object -Property ProcessName, SI, ID -Last 10 | Format-Table -Force

Write-Host "`nOf course, there is always competition..."

Read-Host

Write-Host "There is always someone who is more experienced, always someone more qualified, always someone who seems like they're just plain outright better than you seemingly."

Read-Host

Write-Host "We hear this a whole lot in this topic of discussion..."

Read-Host

Write-Host "Those that seemingly appear to be better than us in our minds, have struggled in their own way in their own lives."

Read-Host

Write-Host "It never seems like it.`n`nBecause our minds are fed perfectionists...`n`nWe are seeing the highlights of their lives, what good they have done, how well they appear to be doing..."

Read-Host

Write-Host "We see these people build amazing SIEM and EDR systems, we see these people excel in their careers, but people do not want to willingly showcase the struggles it takes to build those systems, to build those résumés, to pass that interview round, to land that job."

Read-Host

Write-Host "Because admitting all of that will make themselves and those who view their success see that they struggled, that the path was hard, that they weren't all together at times. That is a story incredibly hard to share for anyone."

Read-Host

Write-Host "Take $HOSTNAMe for example..."

Read-Host

Write-Host "Computers, like $HOSTNAME, seem to be so perfect at accomplishing any task that is given to them in translated machine instructions."

Read-Host

Write-Host "Computers are excellent at performing complex tasks in the background without manual supervision or intervention like: "

Read-Host

Write-Host "Please wait while we load Windows Event Logs from $HOSTNAME (PLEASE DO NOT HIT ENTER)"

Start-Sleep -Seconds 2

Get-WinEvent | Where-Object { $_.LevelDisplayName -eq "Information" -and $_.Message -match "Successfully" } | Select-Object -First 1

Read-Host "Press ENTER to Show Log"

Write-Host "Oftentimes, however, the logs detailing errors seemed to buried within all of these logs stating `"SUCCESS`" or `"Executed with result code 0x0`"."

Read-Host

Write-Host "Take a look at these logs buried in $HOSTNAME..."

Read-Host

Write-Host "Please wait while we load Windows Event Logs from $HOSTNAME (PLEASE DO NOT HIT ENTER)"

Start-Sleep -Seconds 2

Get-WinEvent | Where-Object { $_.LevelDisplayName -eq "Error" -and $_.Message -match "fail" } | Select-Object -Skip 2 -First 1

Read-Host "Press ENTER to Show Log"

Write-Host "Think about it, if something as `"flawless`" as a computer can fail, what makes us think people are any different?"

Read-Host

Write-Host "Furthermore, You can't stretch yourself thin trying to master everything in the field.`n`nHowever, you also should not give up because there is a lot to learn, you're not making visible progress, or there is someone you think you can't catch up to so you stop trying to."

Read-Host

Write-Host "There is a saying in the world..."

Read-Host

Write-Host "Jack of all trades, master of none."

Read-Host

Write-Host "You can follow the advice of an `"expert`" in the field who seemingly knows everything."

Read-Host

Write-Host "Stretching yourself thin trying to `"broaden your skillsets`"."

Read-Host

Write-Host "You can try and spend your precious time learning networking, cloud infrastructures, offensive & defensive security, etc..." 

Read-Host

Write-Host "Try and excel C, C++, Java, Python, Rust, and every language known to computers."

Read-Host

Write-Host "You can have an all-or-nothing mindset"

Read-Host

Write-Host "Then you must also brace yourself for the inevitable cycle of burnout and guilt of not doing enough..."

Read-Host

Write-Host "Or you can take a stand in your own life, be consistent, spending even 5-60 minutes a day learning something that genuinely interests you, becoming a specialist in that area."

Read-Host

Write-Host "Then you can proudly show the world your knowledge, and you can walk into an interview shaping the conversation and leading the conversation when interviewers ask what you can bring to their table."

Read-Host

Write-Host "You don't need to become the best at everything, you do not need to build the next best tool, program, or infrastructure, and you certainly do NOT have to prove yourself and your skills to anyone other than yourself."

Read-Host

Write-Host "Because proving your consistency and skills to yourself is the first step to stop comparing yourself to someone with decades of experience in the field and taking back control of how you want to spend your day becoming the best version of you that you want to be."

Read-Host

Write-Host "As a gift to you, this program will leave a scheduled task on $HOSTNAME in Task Scheduler to remind you that you are your own expert, and you can do enough if you listen to yourself and build yourself in your image, not anyone else's"

Read-Host "`n`nPress ENTER to receive your gift"

# Create Gift
Set-Location "C:\Users\$USER\"
New-Item -Name "Gift" -ItemType "Directory" -Force
New-Item -Name "YouAreEnough.bat" -ItemType "File" -Force
$TASKDIR = "C:\Users\$USER\Gift"
$TASKPATH = "$TASKDIR\YouAreEnough.bat"
Set-Location $TASKDIR

$Time = New-ScheduledTaskTrigger -At 11:00AM -Daily
$Executor = "$env:USERDOMAIN\$USER"
$Execute = New-ScheduledTaskAction -Execute "$TASKDIR\YouAreEnough.bat"


Set-Content -Path .\YouAreEnough.bat -Value "@echo off"
Add-Content -Path .\YouAreEnough.bat -Value "Echo === DAILY MOTIVATION ==="
Add-Content -Path .\YouAreEnough.bat -Value "Echo You are all that you need to win"
Add-Content -Path .\YouAreEnough.bat -Value "Echo As long as you are putting in work"
Add-Content -Path .\YouAreEnough.bat -Value "Echo You are doing more than enough on your part"
Add-Content -Path .\YouAreEnough.bat -Value "Echo Just do NOT give up, even if it is 5 minutes of your day"
Add-Content -Path .\YouAreEnough.bat -Value "Echo I believe in you!"
Add-Content -Path .\YouAreEnough.bat -Value "Echo I am proud of you!"
Add-Content -Path .\YouAreEnough.bat -Value "Pause"

Register-ScheduledTask -TaskName "BeatImposter" -Description "This is here to help beat the Imposter thoughts out of your mind!" -Trigger $Time -User $Executor -RunLevel Highest -Action $Execute -Force
Enable-ScheduledTask -TaskName "BeatImposter"
Start-ScheduledTask -TaskName "BeatImposter"

Write-Host "A mysterious Command Prompt window appears..."

Read-Host

Write-Host "Go and take control of your day, it all begins today!"

Read-Host "`nGoodbye!"