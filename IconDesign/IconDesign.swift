//
//  IconDesign.swift
//  IconDesign
//
//  Created by 樋口大樹 on 2020/07/24.
//  Copyright © 2020 樋口大樹. All rights reserved.
//
import UIKit
import Foundation

public class Save_Design : UIButton{
    public override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        var startPoint_X = rect.width/4
        var startPoint_Y = rect.height/2
        //行方向のグリッド.
        path.move(to:    CGPoint(x: startPoint_X,   y:startPoint_Y))
        path.addLine(to: CGPoint(x: startPoint_X,   y:rect.height*3/4))
        path.addLine(to: CGPoint(x: rect.width*3/4, y:rect.height*3/4))
        path.addLine(to: CGPoint(x: rect.width*3/4, y:startPoint_Y))
        
        //線の太さ
        path.lineWidth = 1.0
        //色をセット
        //ColorManager().my_white().setStroke()
        //UIColor.white.setStroke()
        UIColor.black.setStroke()
        path.stroke()
        
        let array = UIBezierPath()
        let array_size = rect.width/9
        startPoint_X = rect.width/2
        startPoint_Y = rect.height/6
        //行方向のグリッド.
        array.move(to:    CGPoint(x: startPoint_X,   y:startPoint_Y))
        array.addLine(to:    CGPoint(x: startPoint_X,y:rect.height/2 + rect.height/8))
        
        array.move(to:    CGPoint(x: startPoint_X,y:rect.height/2 + rect.height/8))
        array.addLine(to: CGPoint(x: startPoint_X,   y:rect.height/2 + rect.height/8))
        array.addLine(to: CGPoint(x: startPoint_X-array_size, y:rect.height/2 + rect.height/8-array_size))
        array.addLine(to: CGPoint(x: startPoint_X-array_size + array_size*2,
                                  y:rect.height/2 + rect.height/8-array_size))
        array.addLine(to: CGPoint(x: startPoint_X,   y:rect.height/2 + rect.height/8))
        array.close()
        //線の太さ
        array.lineWidth = 1.0
        //色をセット
        UIColor.black.setStroke()
        UIColor.black.setFill()
        //UIColor.white.setStroke()
        //UIColor.white.setFill()
        array.fill()
        array.stroke()
    }
}

public class Return_Design : UIButton{
    public override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        var startPoint_X = rect.width/3
        var startPoint_Y = rect.height/3
        path.move(to: CGPoint(x: startPoint_X,      y: startPoint_Y))
        path.addLine(to: CGPoint(x: startPoint_X*2, y: startPoint_Y))
        path.addLine(to: CGPoint(x: startPoint_X*2, y: startPoint_Y*2))
        path.addLine(to: CGPoint(x: startPoint_X,   y: startPoint_Y*2))
        //ColorManager().my_white().setStroke()
        UIColor.black.setStroke()
        path.lineWidth = 1.0
        path.stroke()
        
        let array = UIBezierPath()
        startPoint_X = rect.width/3
        startPoint_Y = rect.height*2/3
        let array_size = rect.width/12
        array.move(to: CGPoint(x: startPoint_X,      y: startPoint_Y))
        array.addLine(to: CGPoint(x: startPoint_X+array_size, y: startPoint_Y-array_size))
        array.addLine(to: CGPoint(x: startPoint_X+array_size, y: startPoint_Y+array_size))
        array.addLine(to: CGPoint(x: startPoint_X,      y: startPoint_Y))
        array.close()
        array.lineWidth = 1.0
        //ColorManager().my_white().setFill()
        //ColorManager().my_white().setStroke()
        UIColor.black.setStroke()
        UIColor.black.setFill()
        array.stroke()
        array.fill()
    }
}

public class Trash_Design: UIButton {
    public override func draw(_ rect: CGRect) {
        let top_rect_width  = rect.width/8
        let top_rect_height = rect.height/8
        var startPoint_X = rect.width/2 - top_rect_width/2
        var startPoint_Y = rect.height/8
        let rect_top = UIBezierPath(rect: CGRect(x: startPoint_X, y: startPoint_Y, width: top_rect_width, height: top_rect_height))
        UIColor.black.setStroke()
        rect_top.stroke()
        
        //
        let mid_rect_width = rect.width/2
        let mid_rect_height = rect.height/20
        startPoint_X = rect.width/2 - mid_rect_width/2
        startPoint_Y = startPoint_Y + top_rect_height
        let rect_mid = UIBezierPath(rect: CGRect(x: startPoint_X, y: startPoint_Y, width: mid_rect_width, height: mid_rect_height))
        UIColor.black.setStroke()
        rect_mid.stroke()
        
        //topとmidの真ん中を起点にする.
        startPoint_X = rect.width/2 - (mid_rect_width/2 - top_rect_width/2)/2 - top_rect_width/2
        startPoint_Y = startPoint_Y + mid_rect_height
        let path = UIBezierPath()
        let margin : CGFloat! = 5.0
        let bot_rect_height = rect.height/2
        let bot_rect_width  = mid_rect_width - margin*2 - (mid_rect_width-top_rect_width)/2
        path.move(to: CGPoint(x: startPoint_X, y: startPoint_Y))
        path.addLine(to: CGPoint(x: startPoint_X + margin , y: startPoint_Y+bot_rect_height))
        path.addLine(to: CGPoint(x: startPoint_X + margin+bot_rect_width, y: startPoint_Y+bot_rect_height))
        path.addLine(to: CGPoint(x: startPoint_X + margin+bot_rect_width+margin, y: startPoint_Y))
        UIColor.black.setStroke()
        path.stroke()
        
        //ゴミ箱の縦線デザイン.
        let line = UIBezierPath()
        let line_len = rect.height/4
        line.move(to: CGPoint(x: rect.width/2, y: rect.height/2 - line_len/2))
        line.addLine(to: CGPoint(x: rect.width/2, y: rect.height/2 + line_len/2))
        UIColor.black.setStroke()
        line.stroke()
    }
}


public class Camera_Design : UIButton{
    public override func draw(_ rect: CGRect) {
        //長方形部.
        var startPoint_X = rect.width/5
        var startPoint_Y = rect.height/4
        let width_rect  = rect.width*3/5
        let height_rect = rect.height/2
        let rectangle = UIBezierPath(rect: CGRect(x: startPoint_X, y: startPoint_Y, width: width_rect, height: height_rect))
        //ColorManager().my_white().setStroke()
        UIColor.black.setStroke()
        rectangle.lineWidth = 1.0
        rectangle.stroke()
        //円部.
        let radius = rect.height/6
        startPoint_X = rect.width/2
        startPoint_Y = rect.height/2
        let circle = UIBezierPath(arcCenter: CGPoint(x: startPoint_X, y: startPoint_Y), radius: radius, startAngle: 0, endAngle: CGFloat(Double.pi)*2, clockwise: true)
        //ColorManager().my_white().setStroke()
        UIColor.black.setStroke()
        circle.lineWidth = 1.0
        circle.stroke()
        
        //シャッタボタン
        startPoint_X = rect.width/5
        startPoint_Y = rect.height/8
        let shutter_button = UIBezierPath(rect: CGRect(x: startPoint_X, y: startPoint_Y, width: startPoint_Y, height: startPoint_Y))
        //ColorManager().my_white().setStroke()
        UIColor.black.setStroke()
        shutter_button.lineWidth = 1.0
        shutter_button.stroke()
    }
}
