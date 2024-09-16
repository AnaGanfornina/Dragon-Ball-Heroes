//
//  SceneDelegate.swift
//  Dragon_Ball_Heroes
//
//  Created by Ana on 16/9/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions) {
            //Desempaquetamos la scene
            guard let scene = (scene as? UIWindowScene) else {return}
            
            //Creamos un objeto window
            let window = UIWindow(windowScene: scene)
            
            //Instanciamos el primer view controller
            let viewController = FirstViewController()
            
            //Asignamos el prier vieo controller
            window.rootViewController = viewController
            window.makeKeyAndVisible()
            self.window = window
            
     
       
    }

    

}

