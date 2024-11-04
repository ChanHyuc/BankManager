import UIKit

class ViewController: UIViewController {
    
    private let customerAddButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("고객 10명 추가", for: .normal)
        return button
    }()
    
    private let resetButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("초기화", for: .normal)
        button.setTitleColor(.systemRed, for: .normal)
        return button
    }()
    
    private let waitLineLabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemGreen
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .white
        label.text = "대기중"
        return label
    }()
    
    private let workLineLabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemGreen
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .white
        label.text = "업무중"
        return label
    }()
    
    private let serviceTimeLabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "업무 시간 - "
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(customerAddButton)
        view.addSubview(resetButton)
        view.addSubview(serviceTimeLabel)
        view.addSubview(waitLineLabel)
        view.addSubview(workLineLabel)
        
        NSLayoutConstraint.activate([
            customerAddButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            customerAddButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            customerAddButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            
            resetButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            resetButton.leadingAnchor.constraint(equalTo: customerAddButton.trailingAnchor),
            resetButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            
            serviceTimeLabel.topAnchor.constraint(equalTo: customerAddButton.bottomAnchor, constant: 20),
            serviceTimeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            waitLineLabel.topAnchor.constraint(equalTo: serviceTimeLabel.bottomAnchor, constant: 30),
            waitLineLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            waitLineLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            waitLineLabel.heightAnchor.constraint(equalToConstant: 70),
            
            workLineLabel.topAnchor.constraint(equalTo: serviceTimeLabel.bottomAnchor, constant: 30),
            workLineLabel.leadingAnchor.constraint(equalTo: waitLineLabel.trailingAnchor),
            workLineLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            workLineLabel.heightAnchor.constraint(equalToConstant: 70)
        ])
        
    }

}

