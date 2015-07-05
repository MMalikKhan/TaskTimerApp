#light
#r "packages/FAKE/tools/FakeLib.dll"
#load "build-helpers.fsx"

open Fake
open System
open System.IO
open System.Linq
open BuildHelpers
open Fake.XamarinHelper
open Fake.HockeyAppHelper

// Properties
let iOSBinDir = "./iOS/bin/"
let iOSObjDir = "./iOS/obj/"
let androidBinDir = "./Droid/bin/"
let androidObjDir = "./Droid/obj/"
let taskTimerBinDir = "./TaskTimer/"
let appName = "TaskTimer"
let androidOutputPath = "output/Android/"

Target "Clean" (fun _ ->
    CleanDirs [iOSBinDir; iOSObjDir; androidBinDir; androidObjDir; androidOutputPath]
)

Target "ios-build" (fun () ->
  RestorePackages "TaskTimer.sln"

  let buildCounter = BuildHelpers.GetBuildCounter()

  UpdatePlist buildCounter "iOS"

  iOSArchive(fun defaults ->
    {defaults with
        ProjectName = "TaskTimer.iOS"
        Configuration = "AdHoc|iPhone"
        SolutionPath = "TaskTimer.sln"
    })
)

Target "ios-hockeyapp" (fun () ->
    let appPath = Directory.EnumerateFiles(Path.Combine("iOS", "bin", "iPhone", "AdHoc"), "*.ipa").First()

    let buildCounter = BuildHelpers.GetBuildCounter()

    let revisionNumber = BuildHelpers.GetRevisionNumber()

    let hockeyAppApiToken = Environment.GetEnvironmentVariable("HockeyApiToken")

    let newPackageName = appName + "."  + buildCounter + "." + "ipa";

    let newCreatedPackage = BuildHelpers.RenamePackageFile appPath newPackageName

    HockeyApp(fun defaults ->
      {defaults with
          ApiToken = hockeyAppApiToken
          File = newCreatedPackage
          Notes = "Build # " + buildCounter
          Notify = NotifyOption.All
          ReleaseType = ReleaseType.Beta
      })
    |> ignore
)

Target "android-package" (fun () ->
  RestorePackages "TaskTimer.sln"

  let buildCounter = BuildHelpers.GetBuildCounter()

  UpdateManifest buildCounter "Droid"

  AndroidPackage (fun defaults ->
      {defaults with
          ProjectPath = "Droid/TaskTimer.Droid.csproj"
          Configuration = "Release"
          OutputPath = androidOutputPath//"output/Android/"
      })|>
     AndroidSignAndAlign (fun defaults ->
        {defaults with
            KeystorePath = Environment.GetEnvironmentVariable("KeystorePath")
            KeystorePassword = Environment.GetEnvironmentVariable("KeystorePassword")
            KeystoreAlias = Environment.GetEnvironmentVariable("KeystoreAlias")
        })|> ignore
)

Target "android-hockeyapp" (fun () ->
    let buildCounter = BuildHelpers.GetBuildCounter()

    let revisionNumber = BuildHelpers.GetRevisionNumber()

    let hockeyAppApiToken = Environment.GetEnvironmentVariable("HockeyApiToken")

    let newPackageName = appName + "."  + buildCounter + "." + "apk";

    let oldPackageFile = Directory.EnumerateFiles(androidOutputPath, "*.apk", SearchOption.AllDirectories).Where(fun file -> file.Contains("Aligned")).First()

    let newCreatedPackage = BuildHelpers.RenamePackageFile oldPackageFile newPackageName

    HockeyApp(fun defaults ->
      {defaults with
          ApiToken = hockeyAppApiToken
          File = newCreatedPackage
          Notes = "Build # " + buildCounter
          Notify = NotifyOption.All
          ReleaseType = ReleaseType.Beta
      })
    |> ignore
)

"Clean"
    ==> "ios-build"

"Clean"
    ==> "android-package"

RunTargetOrDefault "Clean"
