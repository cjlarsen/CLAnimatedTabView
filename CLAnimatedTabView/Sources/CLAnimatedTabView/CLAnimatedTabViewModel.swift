//
//  CLAnimatedTabViewModel.swift
//  
//
//  Created by Chris Larsen on 4/14/24.
//

import SwiftUI

public class CLAnimatedTabViewModel: ObservableObject {
    /// Text to display in each tab of view
    @Published public var tabNames: [String] = []
}
