//
//  BaseView.swift
//  
//
//  Created by taehy.k on 2022/05/12.
//

import UIKit

open class BaseView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open func setupView() {}
    open func setupConstraints() {}
}
