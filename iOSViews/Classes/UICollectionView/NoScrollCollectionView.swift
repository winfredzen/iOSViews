//
//  NoScrollCollectionView.swift
//  iOSViews
//
//  Created by 王振 on 2018/7/22.
//

import Foundation

public class NoScrollCollectionView: UICollectionView {
    
    override public var contentSize: CGSize {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override public var intrinsicContentSize: CGSize {
        
        self.layoutIfNeeded()
        
        return CGSize(width: UIViewNoIntrinsicMetric, height: contentSize.height)
        
    }
    
}
