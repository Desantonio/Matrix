//
//  ContentView.swift
//  Matrix
//
//  Created by Vatsal Gayakwad on 17/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var matrixA = Matrix(rows: 2, columns: 2, values: [[1, 2], [3, 4]])
    @State private var matrixB = Matrix(rows: 2, columns: 2, values: [[5, 6], [7, 8]])
    @State private var resultMatrix: Matrix?

    var body: some View {
        VStack {
            Text("Matrix Calculator")
                .font(.title)
                .padding()

            MatrixInputView(matrix: $matrixA, label: "Matrix A")
            MatrixInputView(matrix: $matrixB, label: "Matrix B")

            HStack {
                Button("Add", action: addMatrices)
                    .buttonStyle(CustomButtonStyle())
                Button("Subtract", action: subtractMatrices)
                    .buttonStyle(CustomButtonStyle())
            }
            .padding()

            Text("Result:")
                .font(.headline)
                .padding()

            MatrixOutputView(matrix: resultMatrix)
                .padding()
        }
        .padding()
    }

    private func addMatrices() {
        resultMatrix = matrixA + matrixB
    }

    private func subtractMatrices() {
        resultMatrix = matrixA - matrixB
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(configuration.isPressed ? Color.blue.opacity(0.8) : Color.blue)
            .cornerRadius(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
