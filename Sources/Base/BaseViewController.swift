//
//  BaseViewController.swift
//  
//
//  Created by taehy.k on 2022/05/11.
//

import UIKit

open class BaseViewController: UIViewController {

    open override func viewDidLoad() {
        super.viewDidLoad()

        style()
        hierarchy()
        layout()
    }
    
    /**
     UI 설정에 관련된 내용을 작성합니다.
     */
    open func style() {
        navigationController?.navigationBar.isHidden = true
    }
    
    /**
     계층 구조와 관련된 내용을 작성합니다.
     */
    open func hierarchy() {}
    
    /**
     제약 조건 설정과 관련된 내용을 작성합니다.
     */
    open func layout() {}
}
