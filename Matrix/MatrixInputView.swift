//
//  MatrixInputView.swift
//  Matrix
//
//  Created by Vatsal Gayakwad on 17/12/23.
//

import SwiftUI

struct MatrixInputView: View {
    @Binding var matrix: Matrix
    let label: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.headline)
                .padding()

            ForEach(0..<matrix.rows, id: \.self) { i in
                HStack {
                    ForEach(0..<matrix.columns, id: \.self) { j in
                        TextField("", value: $matrix.values[i][j], formatter: NumberFormatter())
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 50)
                    }
                }
            }
        }
    }
}

