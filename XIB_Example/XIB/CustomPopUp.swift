//
//  CustomPopUp.swift
//  XIB_Example
//
//  Created by Mauricio Conde Xinastle on 16/04/15.
//  Copyright (c) 2015 Mauricio Conde. All rights reserved.
//

import UIKit

@IBDesignable class CustomPopUp: UIView {
    var view: UIView!
    var nibName: String = "CustomPopUp"
    
    //Outlet
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBAction func closeView(sender: AnyObject) {
        self.removeFromSuperview()
        print("close view")
    }
    
    @IBInspectable var customTitle: String?{
        get{
            return titleLbl.text
        }
        set(customTitle){
            titleLbl.text = customTitle
        }
    }
    
    @IBInspectable var text: String?{
        get{
            return textView.text
        }
        set{
            textView.text = newValue
        }
    }
    
    //Init
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        setUp()
    }
    
    
    func setUp() {
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)

    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomPopUp file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view

    }
    
    
    //MARK: - IBActions

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
