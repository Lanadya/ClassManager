//
//  LayoutHelper.swift
//  ClassManager
//
//  Created by Nina Klee on 03.12.24.
//

import SwiftUI

struct LayoutHelper {
    static let horizontalPadding: CGFloat = 16
    static let topPadding: CGFloat = 16
    static let bottomPadding: CGFloat = 64

    static func calculateCellSize(proxy: GeometryProxy, totalRows: Int, totalColumns: Int) -> CGSize {
        let availableWidth = max(proxy.size.width - horizontalPadding * 2, 0) // Sicherstellen, dass es nicht negativ wird
        let availableHeight = max(proxy.size.height - topPadding - bottomPadding, 0)
        
        // Verhindere Division durch 0
        let width = totalColumns > 0 ? availableWidth / CGFloat(totalColumns) : 0
        let height = totalRows > 0 ? availableHeight / CGFloat(totalRows) : 0
        
        return CGSize(width: width, height: height)
    }
    
    // Standardrahmen für zentrierte Inhalte
       static func centeredFrame() -> some ViewModifier {
           return ModifierWrapper()
       }
   }

   struct ModifierWrapper: ViewModifier {
       func body(content: Content) -> some View {
           content
               .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
               .padding(.horizontal, LayoutHelper.horizontalPadding)
               .padding(.top, LayoutHelper.topPadding)
               .padding(.bottom, LayoutHelper.bottomPadding)
       }
}

