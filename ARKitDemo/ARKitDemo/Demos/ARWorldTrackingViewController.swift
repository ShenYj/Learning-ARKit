//
//  ARWorldTrackingViewController.swift
//  ARKitDemo
//
//  Created by ShenYj on 2020/7/30.
//  Copyright © 2020 ShenYj. All rights reserved.
//

import UIKit
import ARKit
import SceneKit

// 负责实现平面检测功能

class ARWorldTrackingViewController: UIViewController {
    
    var sceneView: ARSCNView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sceneView = ARSCNView(frame: view.bounds)
        let scene = SCNScene(named: "art.scnassets/ship.scn")!
        view.addSubview(sceneView)
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        sceneView.session.pause()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
