//
//  MovieListViewController.swift
//  movielist
//
//  Created by Feyyaz ONUR on 21.05.2022.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    let movieList: [String] = ["Fight Club", "Focus", "6 Underground", "21", "Now You See Me", "Fast and Furious", "Aykut Enişte", "Dağ", "Joker", "Undisputed"]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MovieCell")
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movieCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        movieCell.textLabel?.text = self.movieList[indexPath.row]
        movieCell.textLabel?.textColor = .darkGray
        
        return movieCell
    }

    
    // click task and navigate to detail
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie = movieList[indexPath.row]
        
        let alert = UIAlertController(title: "Movie", message:"\(movie) is selected.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }
    
}
