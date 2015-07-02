//
//  ViewController.swift
//  Test
//
//  Created by 王斌 on 15/7/1.
//  Copyright (c) 2015年 王斌. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        UserContext()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //user send of infomation
    func UserContext() {
        var ImgBg:UIImageView//背景
        var ImgHead:UIImageView//头像
        var LabNick:UILabel//昵称
        var TextCont:UITextView//内容
        var ImgCont:UIImageView//内容附加图片
        var LabVote:UILabel//投票
        var BtnGood:UIButton//有用按钮
        var BtnBad:UIButton//无用按钮
        var BtnComment:UIButton//评论按钮
        var TextComm:UITextField//评论
        
        var ScreenX = UIScreen.mainScreen().bounds.width
        var ScreenY = UIScreen.mainScreen().bounds.height
        
        
        ImgBg = UIImageView(frame: CGRectMake(ScreenX*0.1, 40, ScreenX*0.8, 400))
        ImgBg.layer.borderWidth = 1
        ImgBg.layer.borderColor = UIColor.grayColor().CGColor
        self.view.addSubview(ImgBg)
        
        
        ImgHead = UIImageView(frame: CGRectMake((ScreenX*0.1)+2, 42, 20, 20))
        //ImgHead.layer.backgroundColor = UIColor.redColor().CGColor
        ImgHead.image = UIImage(named: "male.jpg")
        self.view.addSubview(ImgHead)
        
        LabNick = UILabel(frame: CGRectMake(65, 42, 100, 20))
        LabNick.text = "tester"
        self.view.addSubview(LabNick)
        
        ImgCont = UIImageView(frame: CGRectMake((ScreenX*0.1)+2, 65, ScreenX*0.8 - 4, 200))
        ImgCont.layer.borderWidth = 1
        ImgCont.layer.borderColor = UIColor.grayColor().CGColor
        ImgCont.image = UIImage(named: "female.jpg")
        self.view.addSubview(ImgCont)
        
        TextCont = UITextView(frame: CGRectMake((ScreenX*0.1)+2, 275, ScreenX*0.8 - 4, 50))
        TextCont.layer.borderWidth = 1
        TextCont.layer.borderColor = UIColor.grayColor().CGColor
        TextCont.text = "testtesttestte\r\nsttesttesttesttesttes\r\nttesttesttesttest"
        self.view.addSubview(TextCont)
        
        LabVote = UILabel(frame: CGRectMake((ScreenX*0.1)+2, 335, ScreenX*0.8, 10))
        LabVote.text = "有用 100 － 没用100  评论100"
        self.view.addSubview(LabVote)
        
        BtnGood = UIButton(frame: CGRectMake((ScreenX*0.1)+2, 355, 20, 20))
        //BtnGood.titleLabel!.font = UIFont.systemFontOfSize(12)
        //BtnGood.setTitleColor(UIColor.blackColor(), forState: .Normal)
        //BtnGood.setTitleColor(UIColor.greenColor(), forState: .Highlighted)
        BtnGood.setImage(UIImage(named: "good.png"), forState: UIControlState.Normal)
        //BtnGood.setTitle("good", forState: UIControlState.Normal)
        self.view.addSubview(BtnGood)
        
        BtnBad = UIButton(frame: CGRectMake((ScreenX*0.1)+42, 355, 20, 20))
        //BtnBad.titleLabel!.font = UIFont.systemFontOfSize(12)
        //BtnBad.setTitleColor(UIColor.blackColor(), forState: .Normal)
        //BtnBad.setTitleColor(UIColor.greenColor(), forState: .Highlighted)
        //BtnBad.setTitle("bad", forState: UIControlState.Normal)
        BtnBad.setImage(UIImage(named: "bad.png"), forState: UIControlState.Normal)
        self.view.addSubview(BtnBad)
        
        BtnComment = UIButton(frame: CGRectMake((ScreenX*0.1)+82, 355, 20, 20))
        //BtnComment.titleLabel!.font = UIFont.systemFontOfSize(12)
        //BtnComment.setTitleColor(UIColor.blackColor(), forState: .Normal)
        //BtnComment.setTitleColor(UIColor.greenColor(), forState: .Highlighted)
        //BtnComment.setTitle("say", forState: UIControlState.Normal)
        BtnComment.setImage(UIImage(named: "comment.png"), forState: UIControlState.Normal)
        self.view.addSubview(BtnComment)
        
        /*TextComm = UITextField(frame: CGRectMake(42, 245, ScreenX*0.8, 50))
        TextComm.layer.borderWidth = 1
        TextComm.layer.borderColor = UIColor.grayColor().CGColor
        self.view.addSubview(TextComm)*/
    }
}

