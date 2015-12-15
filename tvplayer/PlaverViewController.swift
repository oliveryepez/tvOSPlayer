//
//  PlaverViewController.swift
//  tvplayer
//
//  Created by Oliiver Yepez on 12/15/15.
//  Copyright © 2015 Oliver Yepez. All rights reserved.
//

import Foundation
import UIKit
import AVKit

class PlayerViewController: AVPlayerViewController, AVPlayerViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playVideo(){
    
        player = AVPlayer(URL: NSURL(string: "http://r5---sn-ab5l6ne7.googlevideo.com/videoplayback?mn=sn-ab5l6ne7&source=youtube&mm=31&expire=1450234140&ratebypass=yes&dur=155.178&pl=48&fexp=9413141%2C9416126%2C9416916%2C9418203%2C9420452%2C9422596%2C9423662%2C9423978%2C9424724%2C9424814%2C9425057%2C9425308%2C9425645%2C9425702%2C9425977&ms=au&upn=qtflRTJojOc&mv=m&mt=1450212460&sver=3&itag=18&key=yt6&ip=2604%3Aa880%3A800%3A10%3A%3A4da%3A9001&mime=video%2Fmp4&ipbits=0&sparams=dur%2Cid%2Cinitcwndbps%2Cip%2Cipbits%2Citag%2Clmt%2Cmime%2Cmm%2Cmn%2Cms%2Cmv%2Cpl%2Cratebypass%2Csource%2Cupn%2Cexpire&id=o-AJwPhKFHDlXh9HsVX0L1laElCPwc2XiLW4Cs5oko01v7&signature=CC0FCE3F8EB280D3159C578F0B0E525C1B4D6097.2F8A36789A6D16271E1AF7634C38F254DF6DC718&lmt=1445425959012283&initcwndbps=10137500&signature=&title=WAPWON.COM_Star_Wars%3A_The_Force_Awakens_Trailer_%28Official%29")!)
        player?.play()
        
    }

}
