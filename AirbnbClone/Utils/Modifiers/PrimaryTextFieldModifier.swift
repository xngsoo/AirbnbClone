//
//  PrimaryTextFieldModifier.swift
//  AirbnbClone
//
//  Created by Han on 4/29/24.
//

import Foundation
import SwiftUI

struct PrimaryTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}
