//
//  TCSegmentedControl.swift
//  MultipleCoordinators
//
//  Created by Tito Ciuro on 3/15/20.
//  Copyright © 2020 Tito Ciuro. All rights reserved.
//

import UIKit

class TCSegmentedControl: UISegmentedControl {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(items: [String], backgroundColor: UIColor) {
        super.init(frame: .zero)
        
        self.backgroundColor = backgroundColor
        
        self.removeAllSegments()
        for item in items.reversed() {
            self.insertSegment(withTitle: item, at: 0, animated: false)
        }
        
        configure()
    }
    
    private func configure() {
        self.layer.cornerRadius = 5.0
        self.selectedSegmentIndex = 0
        translatesAutoresizingMaskIntoConstraints = false
    }
}
