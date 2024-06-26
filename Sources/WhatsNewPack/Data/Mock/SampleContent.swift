//
//  SampleContent.swift
//  WhatsNewPack
//
//  Created by Eugene Kovs on 08.06.2024.
//  https://github.com/kovs705
//

import SwiftUI

enum SampleContent {
    // Random sample data for preview
    // MARK: - Versions
    static let versions = [
        "1.0.0",
        "1.0.1",
        "1.1.0",
        "1.2.0",
        "2.1.0",
        "2.1.1",
        "2.2.0",
        "3.0.0",
    ]
    
    // MARK: - Titles
    static let title = [
        "New User Interface",
        "Dark Mode",
        "Performance Improvements",
        "Bug Fixes",
        "New Features",
        "Enhanced Security",
        "Smoother Experience",
        "Customizable Settings",
        "Improved Performance",
        "New Tutorials",
        "Multi-language Support",
        "Bug Fixes and Improvements",
        "New Themes",
        "Data Sync",
        "Improved Security",
        "Redesigned Home Screen",
        "New Task Management Tools",
        "Feature Enhancements",
        "Progress Sharing",
        "Progress Tracking"
    ]
    
    // MARK: - SF icons
    static let icon = [
        "star.fill",
        "moon.fill",
        "speedometer",
        "ant.fill",
        "sparkles",
        "shield.fill",
        "arrow.up.arrow.down",
        "gear",
        "bolt.fill",
        "book.fill",
        "globe",
        "ant.circle.fill",
        "paintbrush.fill",
        "icloud.fill",
        "lock.fill",
        "house.fill",
        "checkmark.circle.fill",
        "wand.and.stars",
        "person.2.fill",
        "chart.bar.fill"
    ]
    
    // MARK: - Body texts
    static let bodyText = [
        "We've completely redesigned the user interface to make it more intuitive and user-friendly.",
        "Enjoy a new dark mode that is easier on the eyes during night time.",
        "We've made several under-the-hood improvements to make the app faster and more reliable.",
        "We've squashed some bugs to improve your experience.",
        "Introducing new features to enhance your productivity.",
        "We've added new security features to keep your data safe.",
        "Experience a smoother and more responsive app with our latest update.",
        "Our new feature allows you to customize your settings more easily.",
        "We've improved the performance of our app to provide a better user experience.",
        "Check out our new tutorials to help you get the most out of our app.",
        "We've added support for multiple languages to make our app accessible to more users.",
        "Our latest update includes several bug fixes and performance improvements.",
        "We've added new themes to give you more customization options.",
        "Our new feature allows you to sync your data across multiple devices.",
        "We've improved the security of our app to protect your data.",
        "Our new update includes a redesigned home screen for easier navigation.",
        "We've added new tools to help you manage your tasks more efficiently.",
        "Our latest update includes several new features and improvements.",
        "We've made it easier to share your progress with friends and family.",
        "Our new feature allows you to track your progress over time."
    ]
    
    // MARK: - Features
    static let features: [Feature] = [
        Feature(
            version: "1.0.0",
            new: [
                Feature.New(
                    title: "New User Interface",
                    body: "We've completely redesigned the user interface to make it more intuitive and user-friendly.",
                    icon: "star.fill"
                ),
                Feature.New(
                    title: "Dark Mode",
                    body: "Enjoy a new dark mode that is easier on the eyes during night time.",
                    icon: "moon.fill"
                )
            ]
        ),
        Feature(
            version: "1.1.0",
            new: [
                Feature.New(
                    title: "Performance Improvements",
                    body: "We've made several under-the-hood improvements to make the app faster and more reliable.",
                    icon: "speedometer"
                ),
                Feature.New(
                    title: "Bug Fixes",
                    body: "We've squashed some bugs to improve your experience.",
                    icon: "ant.fill"
                )
            ]
        ),
        Feature(
            version: "2.0.0",
            new: [
                Feature.New(
                    title: "New Features",
                    body: "Introducing new features to enhance your productivity.",
                    icon: "sparkles"
                ),
                Feature.New(
                    title: "Enhanced Security",
                    body: "We've added new security features to keep your data safe.",
                    icon: "shield.fill"
                )
            ]
        )
    ]
    
    // MARK: - Themes
    static let themes: [Theme] = [
        Theme(
            backgroundColor: Color(uiColor: .systemBackground),
            iconColor: .white,
            iconBackgroundColor: .blue,
            titleFont: .headline,
            bodyFont: .subheadline,
            textColor: Color(uiColor: .label),
            
            buttonBackgroundColor: .black,
            buttonTextColor: .white,
            buttonText: "Continue to app"
        ),
        Theme(
            backgroundColor: Color(uiColor: .systemGray5),
            iconColor: .yellow,
            iconBackgroundColor: .gray,
            titleFont: .largeTitle,
            bodyFont: .body,
            textColor: .white,
            
            buttonBackgroundColor: .blue,
            buttonTextColor: .white,
            buttonText: "That's nice!"
        ),
        Theme(
            backgroundColor: Color(uiColor: .systemBackground),
            iconColor: .black,
            iconBackgroundColor: .red,
            titleFont: .title,
            bodyFont: .footnote,
            textColor: .black,
            
            buttonBackgroundColor: .yellow,
            buttonTextColor: .black,
            buttonText: "Okay!"
        ),
        Theme(
            backgroundColor: Color(uiColor: .brown),
            iconColor: .blue,
            iconBackgroundColor: .green,
            titleFont: .title2,
            bodyFont: .caption,
            textColor: .yellow,
            
            buttonBackgroundColor: .blue,
            buttonTextColor: .black,
            buttonText: "Wow!"
        ),
        Theme(
            backgroundColor: Color(uiColor: .systemTeal),
            iconColor: .purple,
            iconBackgroundColor: .orange,
            titleFont: .title3,
            bodyFont: .callout,
            textColor: .pink,
            
            buttonBackgroundColor: .pink,
            buttonTextColor: .white,
            buttonText: "Pinky"
        )
    ]
}
