//
//  CLAnimatedTabViewModel.swift
//
//
//  Created by Chris Larsen on 4/14/24.
//

import SwiftUI

/// View Model used for CLAnimatedTabView
/// - Parameters:
///     - tabBarHeight: Height for the tab bar
///     - backgroundColor: BackgroundColor for entire view
///     - displayTabBarShadow: Determines whether tab bar will have a drop shadow
///     - shadowOpacity: Opacity of tab bar drop shadow
///     - shadowRadius: Radius for tab bar drop shadow
///     - shadowX: X offset of tab bar drop shadow
///     - shadowY: Y offset of tab bar drop shadow
///     - tabNames: String array of names for tab bar items
///     - tabBarItemViewModel: View model for tab bar items
public class CLAnimatedTabViewModel: ObservableObject {
    /// Height for tab bar
    /// # Notes #
    /// Default value is 48.0
    @Published var tabBarHeight: CGFloat
    /// Background color for entire view
    /// # Notes #
    /// Default value is white
    @Published var backgroundColor: Color
    /// Enable or disable tab bar shadow
    /// # Notes #
    /// Default set to true
    @Published var displayTabBarShadow: Bool
    /// Opacity for tab bar shadow
    /// # Notes #
    /// Default opacity 0.13
    @Published var shadowOpacity: CGFloat
    /// Radius for tab bar shadow
    /// # Notes #
    /// Default is 2.0
    @Published var shadowRadius: CGFloat
    /// X position for tab bar shadow
    /// # Notes #
    /// Default is 0
    @Published var shadowX: CGFloat
    /// Y position for tab bar shadow
    /// # Notes #
    /// Default is 2.0
    @Published var shadowY: CGFloat
    /// Text to display in each tab of view
    @Published var tabNames: [String]
    /// View model for tab bar items
    @Published var tabBarItemViewModel: CLAnimatedTabViewItemModel
    
    init(tabBarHeight: CGFloat = 48.0,
         backgroundColor: Color = .white,
         displayTabBarShadow: Bool = true,
         shadowOpacity: CGFloat = 0.13,
         shadowRadius: CGFloat = 2.0,
         shadowX: CGFloat = 0.0,
         shadowY: CGFloat = 2.0,
         tabNames: [String],
         tabBarItemViewModel: CLAnimatedTabViewItemModel = CLAnimatedTabViewItemModel()) {
        self.tabBarHeight = tabBarHeight
        self.backgroundColor = backgroundColor
        self.displayTabBarShadow = displayTabBarShadow
        self.shadowOpacity = shadowOpacity
        self.shadowRadius = shadowRadius
        self.shadowX = shadowX
        self.shadowY = shadowY
        self.tabNames = tabNames
        self.tabBarItemViewModel = tabBarItemViewModel
    }
}

public class CLAnimatedTabViewItemModel: ObservableObject {
    @Published var capsuleHeight: CGFloat
    @Published var font: Font
    @Published var inactiveTextColor: Color
    @Published var activeTextColor: Color
   
    init(capsuleHeight: CGFloat = 2.0,
         font: Font = Font.system(size: 15.0),
         inactiveTextColor: Color = Color.gray,
         activeTextColor: Color = Color.blue) {
        self.capsuleHeight = capsuleHeight
        self.font = font
        self.inactiveTextColor = inactiveTextColor
        self.activeTextColor = activeTextColor
    }
}
