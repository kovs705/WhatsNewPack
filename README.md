# WhatsNewPack

## Description
This package is made to show new app features right inside the sheet your your own desired screen in Apple-way!
Just copy json, fetch the data and show to the user in desired colors, icons and titles!

<img src="https://user-images.githubusercontent.com/56929597/265215838-a97fc943-de01-4c19-a724-956d98ca576b.png" 
     width="365" height="715">
     <img src="https://user-images.githubusercontent.com/56929597/265252639-2f363ed4-657a-4212-9ca6-77feb8623888.png" 
     width="330" height="630">

## Requirements
 - iOS 14.0 +


## Instruction
To use this package all you need to do is:
 1. Create a .json file with your desired name
 2. Add a sceleton copy from below
 3. Copy the example screen
 4. Done!



## Sceleton copy for JSON
[
    {
        "version": "1.2",
        "new": [
            {
                "body": "Click Continue",
                "icon": "scribble",
                "title": "Apple Pencil 2",
                "subtitle": "Supported"
            },
     
            {
                "body": "Click Continue",
                "icon": "eraser.fill",
                "title": "New design",
                "subtitle": "Reimagined"
            },
            
            {
                "body": "Click Continue",
                "icon": "hammer.fill",
                "title": "Broken UI",
                "subtitle": "Bug fixes"
            },
            
            {
                "body": "Click Continue",
                "icon": "arrow.triangle.pull",
                "title": "Local Files",
                "subtitle": "Works best with your data 🥳"
            },
            
            {
                "body": "Click Continue",
                "icon": "hammer.fill",
                "title": "Something here",
                "subtitle": "Check this out"
            }
        ]
    }
]

## Example screen

import SwiftUI
import WhatsNewPack

struct ContentView: View {
    
    @State private var isShowing = false
    let features: [Feature] = load(fileName: "Features.json")
    
    var body: some View {
        Button {
            isShowing.toggle()
        } label: {
            Text("Show what's new!")
        }
        .sheet(isPresented: $isShowing) {
            WhatsNew(featureObject: features.first!, title: "What's new?", color: .purple, buttonTitle: "Continue", buttonColor: .blue, buttonCornerRadius: 20) {
                printFeature()
            }
        }
    }
    
    func printFeature() {
        print(features.first!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

