//
//  UIViewFromXib.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import UIKit

class UIViewFromXib: UIView {
    
    private var view:UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        self._setup();
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        
        self._setup();
    }
    
    /**
     * todo: handle nib handling errors
     */
    func _setup() {
        
        if(self.getNibName() == "") {
            print("Error")
        }
        
        view = loadViewFromNib()
        
        view.frame = bounds
        view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        addSubview(view)
        self.setup()
    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: self.getNibName(), bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
    // Override
    func getNibName() -> String {
        return ""
    }
    
    // This can get overriden
    func setup() {
        
    }
    
    
}
