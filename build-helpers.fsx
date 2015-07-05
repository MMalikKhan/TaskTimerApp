module BuildHelpers

open Fake
open Fake.XamarinHelper
open System
open System.IO
open System.Linq
open Fake.XMLHelper

let Exec command args =
    let result = Shell.Exec(command, args)

    if result <> 0 then failwithf "%s exited with error %d" command result

let RestorePackages solutionFile =
    Exec "tools/NuGet/NuGet.exe" ("restore " + solutionFile)
    solutionFile |> RestoreComponents (fun defaults -> {defaults with ToolPath = "tools/xpkg/xamarin-component.exe" })

let GetBuildCounter () =
    let versionPrefix = "1.0"
    let versionSuffix = "0"
    let buildNumber = Environment.GetEnvironmentVariable("buildNumber")
    if String.IsNullOrEmpty(buildNumber) then failwithf "%s" "build number needed"
    versionPrefix + "."+ buildNumber  + "."+ versionSuffix

let GetRevisionNumber () =
    let revisionNumber = Environment.GetEnvironmentVariable("revNumber")
    if String.IsNullOrEmpty(revisionNumber) then failwithf "%s" "revision number needed"
    revisionNumber

let UpdatePlist version project =
    let info = Path.Combine(project, "Info.plist")
    Exec "/usr/libexec/PlistBuddy" ("-c 'Set :CFBundleShortVersionString " + version + "' " + info)
    Exec "/usr/libexec/PlistBuddy" ("-c 'Set :CFBundleVersion " + version + "' " + info)

let RenamePackageFile packageFile newName =
    let fi = new FileInfo(packageFile)
    let newFileName = Path.Combine(fi.Directory.FullName, newName)
    File.Copy(packageFile, newFileName)
    newFileName

let UpdateManifest version project =
    let path = (project + "/Properties/AndroidManifest.xml")
    let buildNumber = Environment.GetEnvironmentVariable("buildNumber")
    let ns = Seq.singleton(("android", "http://schemas.android.com/apk/res/android"))
    XmlPokeNS path ns "manifest/@android:versionName" (version)
    XmlPokeNS path ns "manifest/@android:versionCode" buildNumber
