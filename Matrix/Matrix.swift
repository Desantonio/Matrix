//
//  Matrix.swift
//  Matrix
//
//  Created by Vatsal Gayakwad on 17/12/23.
//

import Foundation

struct Matrix {
    let rows: Int
    let columns: Int
    var values: [[Double]]

    init(rows: Int, columns: Int, values: [[Double]]) {
        self.rows = rows
        self.columns = columns
        self.values = values
    }

    static func +(lhs: Matrix, rhs: Matrix) -> Matrix? {
        guard lhs.rows == rhs.rows, lhs.columns == rhs.columns else {
            return nil // Matrices must have the same dimensions for addition
        }

        var result = Matrix(rows: lhs.rows, columns: lhs.columns, values: [])
        for i in 0..<lhs.rows {
            var row = [Double]()
            for j in 0..<lhs.columns {
                row.append(lhs.values[i][j] + rhs.values[i][j])
            }
            result.values.append(row)
        }
        return result
    }

    static func -(lhs: Matrix, rhs: Matrix) -> Matrix? {
        guard lhs.rows == rhs.rows, lhs.columns == rhs.columns else {
            return nil // Matrices must have the same dimensions for subtraction
        }

        var result = Matrix(rows: lhs.rows, columns: lhs.columns, values: [])
        for i in 0..<lhs.rows {
            var row = [Double]()
            for j in 0..<lhs.columns {
                row.append(lhs.values[i][j] - rhs.values[i][j])
            }
            result.values.append(row)
        }
        return result
    }
}

