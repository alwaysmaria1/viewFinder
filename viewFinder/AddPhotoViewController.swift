//
//  AddPhotoViewController.swift
//  viewFinder
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var image = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        image.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openCamera(_ sender: UIButton) {
        image.sourceType = .camera
        present(image, animated: true, completion: nil)
    }
    // Do any additional setup after loading the view.
        
    @IBAction func openLibrary(_ sender: UIButton) {
        image.sourceType = .photoLibrary
        present(image, animated: true, completion: nil)
    }
    
    @IBOutlet weak var displayImage: UIImageView!
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            displayImage.image = selectedImage
        }
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
