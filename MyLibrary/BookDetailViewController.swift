//
//  BookDetailViewController.swift
//  MyLibrary
//
//  Created by Beatriz Castro on 15/04/21.
//

import UIKit
import Nuke


class BookDetailViewController: UIViewController {
    
var livro: Livro = Livro(title: "", isbn: "", pageCount: 0, thumbnailUrl: URL(string: ""), shortDescription: "", longDescription: "", authors: [""], categories: [""], publishedDate: nil, quantity: 0)
    
    
    @IBOutlet weak var imageViewDetail: UIImageView!
    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var authorDetail: UILabel!
    @IBOutlet weak var isbnDetail: UILabel!
    @IBOutlet weak var datePublishDetail: UILabel!
    @IBOutlet weak var pageNumbersDetail: UILabel!
    @IBOutlet weak var categoriesDetail: UILabel!
    @IBOutlet weak var descriptionDetail: UITextView!
    
    override func viewDidLoad() {
        if let url = self.livro.thumbnailUrl {
            let options = ImageLoadingOptions(
                placeholder: UIImage(systemName: "book"),
                transition: .none
            )

            Nuke.loadImage(with: url, options: options, into: imageViewDetail)
        }
        
        self.titleDetail.text = self.livro.title
        self.authorDetail.text = self.livro.authors.joined(separator: ",")
        
        self.isbnDetail.text?.append(String("  "))
        self.isbnDetail.text?.append(self.livro.isbn ?? "")
        
        let dateFormatter = DateFormatter()
        let date = Date(timeIntervalSinceReferenceDate: 410220000)
        dateFormatter.locale = Locale(identifier: "pt_BR")
        dateFormatter.setLocalizedDateFormatFromTemplate("dd MMMM YYYY")
        self.datePublishDetail.text = dateFormatter.string(from: self.livro.publishedDate!)
        
        self.pageNumbersDetail.text = String(self.livro.pageCount)
        self.pageNumbersDetail.text?.append(String(" págs"))
        
        self.categoriesDetail.text?.append(self.livro.categories.joined(separator: ","))
        
        self.descriptionDetail.text = self.livro.longDescription
        
        super.viewDidLoad()
    }
    


}

