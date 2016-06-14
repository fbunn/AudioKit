//
//  multiply.swift
//  AudioKit
//
//  Created by Aurelius Prochazka, revision history on Github.
//  Copyright © 2016 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {
    /// Multiplication of parameters
    ///
    /// - returns: AKOperation
    /// - parameter parameter: The amount to multiply
    ///
    public func times(_ parameter: AKParameter) -> AKOperation {
        return AKOperation("(\(self) \(parameter) *)")
    }

    /// Offsetting by way of multiplication
    ///
    /// - returns: AKOperation
    /// - parameter parameter: The amount to scale by
    ///
    public func scaledBy(_ parameter: AKParameter) -> AKOperation {
        return self.times(parameter)
    }
}

/// Helper function for Multiplication
///
/// - returns: AKOperation
/// - left: 1st parameter
/// - right: 2nd parameter
///
public func *(left: AKParameter, right: AKParameter) -> AKOperation {
    return left.toMono().times(right)
}

