//
//  ViewController.swift
//  Test
//
//  Created by 王斌 on 15/7/1.
//  Copyright (c) 2015年 王斌. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ScreenX: CGFloat = 0.0
    var ScreenY: CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ScreenX = UIScreen.mainScreen().bounds.width
        ScreenY = UIScreen.mainScreen().bounds.height
        
        UserMsg()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //user send of message
    func UserMsg() {
        SetMsgWidgetBackground()
        
        SetMsgWidgetHead()
        SetMsgWidgetNick()
        
        SetMsgWidgetImgCont()
        SetMsgWidgetImgDesc()
        
        SetMsgWidgetVote()
        SetMsgWidgetVoteBtn()
    }
    
    //set messsage widget background
    func SetMsgWidgetBackground(){
        var ImgBg = UIImageView(frame: CGRectMake(ScreenX*0.1, 40, ScreenX*0.8, 400))
            ImgBg.layer.borderWidth = 1
            ImgBg.layer.borderColor = UIColor.grayColor().CGColor
            self.view.addSubview(ImgBg)
    }
    //set messsage widget user head Image
    func SetMsgWidgetHead(){
        var ImgHead = UIImageView(frame: CGRectMake((ScreenX*0.1)+2, 42, 45, 45))
            ImgHead.image = UIImage(named: "male.jpg")
            self.view.addSubview(ImgHead)
    }
    //set messsage widget user Nick
    func SetMsgWidgetNick(){
        var LabNick = UILabel(frame: CGRectMake(90, 52, 100, 20))
            LabNick.text = "tester"
            self.view.addSubview(LabNick)
    }
    //set message widget Image
    func SetMsgWidgetImgCont(){
        var ImgCont = UIImageView(frame: CGRectMake((ScreenX*0.1)+2, 95, ScreenX*0.8 - 4, 200))
            ImgCont.layer.borderWidth = 1
            ImgCont.layer.borderColor = UIColor.grayColor().CGColor
            ImgCont.image = UIImage(named: "female.jpg")
            self.view.addSubview(ImgCont)
    }
    //set message widget Image descprition
    func SetMsgWidgetImgDesc(){
        var TextCont = UITextView(frame: CGRectMake((ScreenX*0.1)+2, 300, ScreenX*0.8 - 4, 50))
            TextCont.layer.borderWidth = 1
            TextCont.layer.borderColor = UIColor.grayColor().CGColor
            TextCont.text = "testtesttestte\r\nsttesttesttesttesttes\r\nttesttesttesttest"
            self.view.addSubview(TextCont)
    }
    //set message widget vote show
    func SetMsgWidgetVote(){
        var LabVote = UILabel(frame: CGRectMake((ScreenX*0.1)+2, 365, ScreenX*0.8, 10))
            LabVote.text = "有用 100 － 没用 100  评论 100"
            self.view.addSubview(LabVote)
    }
    //set message widget Vote button
    func SetMsgWidgetVoteBtn(){
        var BtnGood = UIButton(frame: CGRectMake((ScreenX*0.1)+5, 380, 40, 40))
        BtnGood.setImage(UIImage(named: "good.png"), forState: UIControlState.Normal)
        BtnGood.setTitle("BtnGood", forState: UIControlState.Normal)
        self.view.addSubview(BtnGood)
        
        BtnGood.addTarget(self, action: Selector("OnGoodBtn:"), forControlEvents: UIControlEvents.TouchUpInside)
        
        var BtnBad = UIButton(frame: CGRectMake((ScreenX*0.1)+85, 380, 40, 40))
        BtnBad.setImage(UIImage(named: "bad.png"), forState: UIControlState.Normal)
        BtnBad.setTitle("BtnBad", forState: UIControlState.Normal)
        self.view.addSubview(BtnBad)
        
        BtnBad.addTarget(self, action: Selector("OnBadBtn:"), forControlEvents: UIControlEvents.TouchUpInside)
        
        var BtnComment = UIButton(frame: CGRectMake((ScreenX*0.1)+165, 380, 40, 40))
        BtnComment.setImage(UIImage(named: "msg"), forState: UIControlState.Normal)
        BtnComment.setTitle("BtnComment", forState: UIControlState.Normal)
        self.view.addSubview(BtnComment)
        
        BtnComment.addTarget(self, action: Selector("OnCommentBtn:"), forControlEvents: UIControlEvents.TouchUpInside)
    }
    //set input widget
    func SetInputText(){
        var TextComment = UITextField(frame: CGRectMake((ScreenX*0.1), ScreenY - 5, ScreenX*0.8, 40))
            TextComment.layer.borderWidth = 1
            TextComment.layer.borderColor = UIColor.grayColor().CGColor
        self.view.addSubview(TextComment)
    }
    
    //click OnGoodBtn button
    func OnGoodBtn(Btn:UIButton){
        let msg = UIAlertView()
        msg.title = "btn"
        msg.message = "OnGoodBtn"
        msg.addButtonWithTitle("go")
        msg.show()
    }
    //click OnBadBtn button
    func OnBadBtn(Btn:UIButton){
        let msg = UIAlertView()
        msg.title = "btn"
        msg.message = "OnBadBtn"
        msg.addButtonWithTitle("go")
        msg.show()
    }
    //click OnCommentBtn button
    func OnCommentBtn(Btn:UIButton){
        /*let msg = UIAlertView()
        msg.title = "btn"
        msg.message = Btn.titleForState(.Normal)
        msg.addButtonWithTitle("go")
        msg.show()*/
        
        SetInputText()
    }
}

