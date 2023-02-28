
import UIKit

class ThirdPage_ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var Data_Image:[UIImage] = [#imageLiteral(resourceName: "Adventure"),#imageLiteral(resourceName: "Travel"),#imageLiteral(resourceName: "istockphoto-1057205418-170667a")]
    @IBOutlet weak var CV_Page: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CV_Page.delegate = self
        CV_Page.dataSource = self
        CV_Page.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Data_Image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CV_Page.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CV_Cell
        cell.Image_CV.image = Data_Image[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200 , height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            if let header = CV_Page.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header_Cell", for: indexPath) as? Header_CRV{
                header.HeaderLabel.text = "Section\(indexPath)"
                header.backgroundColor = .black
                return header
            }
        default:
            return UICollectionReusableView()
        }
        return UICollectionReusableView()
    }
    
}
