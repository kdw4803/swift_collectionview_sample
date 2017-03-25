//
//  AddViewController.swift
//  memo
//
//  Created by Brad on 25/03/2017.
//  Copyright © 2017 brad. All rights reserved.
//

import UIKit

class AddViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    
    @IBOutlet weak var titleInput: UITextField!
    @IBOutlet weak var contentInput: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    var image: UIImage?
    
    @IBAction func imageButtonPressed(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePickerController.allowsEditing = false
        self.present(imagePickerController, animated: true, completion: nil)
    }
    
    @IBAction func addButtoPressed(_ sender: Any) {
        
        let title = titleInput.text
        let content = contentInput.text
        let image = imageView.image
        let imgData = NSData(data: UIImageJPEGRepresentation(image!, 1.0)!)
        //managedObject?.setValue(imgData, forKey: "image")
        
        let article = Article(context: context)
        article.title = title
        article.content = content
        article.image = imgData
        article.createdAt = NSDate()
        appDelegate.saveContext()
        
        _ = navigationController?.popViewController(animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = image
            self.image = image
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
