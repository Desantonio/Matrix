//
//  MatrixOutputView.swift
//  Matrix
//
//  Created by Vatsal Gayakwad on 17/12/23.
//

import SwiftUI

struct MatrixOutputView: View {
    let matrix: Matrix?

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<(matrix?.rows ?? 0), id: \.self) { i in
                HStack {
                    ForEach(0..<(matrix?.columns ?? 0), id: \.self) { j in
                        if let value = matrix?.values[i][j] {
                            Text("\(value)")
                                .frame(width: 50)
                        }
                    }
                }
            }
        }
    }
}

