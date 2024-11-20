$appsToRemove = @(
    "Microsoft.BingNews",
    "Microsoft.GetHelp",
    "Microsoft.Getstarted",
    "Microsoft.Messaging",
    "Microsoft.Microsoft3DViewer",
    "Microsoft.MicrosoftOfficeHub",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.NetworkSpeedTest",
    "Microsoft.News",
    "Microsoft.Office.Lens",
    "Microsoft.Office.OneNote",
    "Microsoft.Office.Sway",
    "Microsoft.OneConnect",
    "Microsoft.People",
    "Microsoft.Print3D",
    "Microsoft.RemoteDesktop",
    "Microsoft.SkypeApp",
    "Microsoft.StorePurchaseApp",
    "Microsoft.Office.Todo.List",
    "Microsoft.Whiteboard",
    "Microsoft.WindowsAlarms",
    "Microsoft.WindowsCamera",
    "microsoft.windowscommunicationsapps",
    "Microsoft.WindowsFeedbackHub",
    "Microsoft.WindowsMaps",
    "Microsoft.WindowsSoundRecorder",
    "Microsoft.ZuneMusic",
    "Microsoft.ZuneVideo",
    "*EclipseManager*",
    "*ActiproSoftwareLLC*",
    "*AdobeSystemsIncorporated.AdobePhotoshopExpress*",
    "*Duolingo-LearnLanguagesforFree*",
    "*PandoraMediaInc*",
    "*CandyCrush*",
    "*BubbleWitch3Saga*",
    "*Wunderlist*",
    "*Flipboard*",
    "*Twitter*",
    "*Facebook*",
    "*Spotify*",
    "*Royal Revolt*",
    "*Sway*",
    "*Speed Test*",
    "*Dolby*",
    "*Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe*",
    "*Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe*",
    "*Microsoft.BingWeather*",
    "*Microsoft.MicrosoftStickyNotes*",
    "*Microsoft.WindowsCalculator*",
    "Microsoft.Pay",
    "Microsoft.MixedReality.Portal",
    "Microsoft.YourPhone",
    "Microsoft.ScreenSketch",
    "Microsoft.HEIFImageExtensions",
    "Microsoft.WebMediaExtensions",
    "Microsoft.WebpImageExtensions",
    "Microsoft.Office.Clipchamp",
    "Microsoft.Windows.ParentalControls",
    "Microsoft.ToDo",
    "Microsoft.Office.Outlook"
)

foreach ($app in $appsToRemove) {
    Get-AppxPackage -Name $app -AllUsers | Remove-AppxPackage -ErrorAction SilentlyContinue
    Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $app | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
}
