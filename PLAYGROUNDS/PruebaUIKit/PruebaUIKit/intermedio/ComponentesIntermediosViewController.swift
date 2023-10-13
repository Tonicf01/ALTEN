//
//  ComponentesIntermediosViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 25/7/22.
//

import UIKit

class ComponentesIntermediosViewController: UIViewController {

    @IBOutlet var tapGesture: UITapGestureRecognizer!
    @IBOutlet weak var lbPulsame: UILabel!
    @IBOutlet weak var btnCustom: UIButton!
    @IBOutlet weak var tfCustom: UITextField!
    @IBOutlet weak var tvCustom: UITextView!
    @IBOutlet weak var sliderCustom: UISlider!
    @IBOutlet weak var pickerViewCustom: UIPickerView!
    @IBOutlet weak var datePickerCustom: UIDatePicker!
    @IBOutlet weak var segmentControlCustom: UISegmentedControl!
    @IBOutlet weak var pageControlCustom: UIPageControl!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Intermedio", image: UIImage(systemName: "i.square"), selectedImage: UIImage(systemName: "i.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadGesture()
        loadButton()
        loadTextField()
        loadTextView()
        loadSlider()
        loadPickerView()
        loadDatePicker()
        loadSegmentControl()
        loadPageControl()
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

//TapGesture
extension ComponentesIntermediosViewController {
    
    func loadGesture() {
        tapGesture.numberOfTapsRequired = 3//hay que pulsar 3 veces para que interactue
        
        let longPressGesture = UILongPressGestureRecognizer()//para una pulsación controlada
        lbPulsame.addGestureRecognizer(longPressGesture)
        longPressGesture.addTarget(self, action: #selector(actionLongPress))
        longPressGesture.minimumPressDuration = 2
    }
    
    @IBAction func actionTap(_ sender: Any) {
        print("Tap!")//imprimir por consola previo activar interacción con el usuario
    }
    
    @objc func actionLongPress() {
        print("Long Gesture!")//imprimir por consola previo activar interacción con el usuario
    }
}

extension ComponentesIntermediosViewController {
    func loadButton() {
        btnCustom.removeTarget(self, action: #selector(actionButtonDown), for: .touchDown)
        btnCustom.addTarget(self, action: #selector(actionButtonDown), for: .touchDown)
        
        btnCustom.removeTarget(self, action: #selector(actionButton), for: .touchUpInside)
        btnCustom.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        
        btnCustom.setTitle("Normal", for: .normal)
        btnCustom.setTitleColor(.red, for: .normal)
        btnCustom.setTitle("Seleccionado", for: .selected)
        
        
        btnCustom.setTitle("Resaltado", for: .highlighted)
        btnCustom.setTitleColor(.orange, for: .highlighted)
        btnCustom.setTitleColor(.purple, for: .selected)
//        btnCustom.backgroundColor = UIColor.green
    }
    
    @objc func actionButtonDown() {
        print("Botón down")
    }
    
    @objc func actionButton() {
        print("Botón pulsado")
        btnCustom.isSelected.toggle()
    }
}

extension ComponentesIntermediosViewController: UITextFieldDelegate {
    func loadTextField() {
        tfCustom.delegate = self
        tfCustom.textColor = .purple
        tfCustom.keyboardType = .decimalPad// tipo de teclado que aparece
        tfCustom.autocapitalizationType = .words
        tfCustom.autocorrectionType = .no//si queremos autocorrección o no
        
        let placeholder = "Escribe un número"//dandole forma a placeholder
        let font = UIFont(name: "AvengeanceHeroicAvengerBold", size: 18)
        let attributes: [NSAttributedString.Key : Any] = [NSAttributedString.Key.font: font ?? UIFont.systemFont(ofSize: 15),
                          NSAttributedString.Key.foregroundColor: UIColor.green]
        tfCustom.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: attributes)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        print(range)
//
//        if let _ = Double(string) {
//            return true
//        } else {
//            return false
//        }
        
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        textField.text = String(updatedText.components(separatedBy: .decimalDigits.inverted).joined().prefix(6))
        return false
    }
    
}

extension ComponentesIntermediosViewController: UITextViewDelegate {
    func loadTextView() {
        tvCustom.delegate = self
        tvCustom.textColor = .purple
        tvCustom.returnKeyType = .search//editamos la tecla intro
        tvCustom.autocapitalizationType = .words
        tvCustom.autocorrectionType = .no
        tvCustom.isEditable = false
        tvCustom.isSelectable = false//que podamos seleccionar el texto para copiar etc
    }//text view no tiene placeholder
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        print(text)
        print(range)
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        } else {
            return true
        }
    }
    
}


extension ComponentesIntermediosViewController {
    func loadSlider() {
        sliderCustom.maximumTrackTintColor = .green
        sliderCustom.minimumTrackTintColor = .purple
        sliderCustom.thumbTintColor = .orange
        
        //para poner imagenes en los extremos. traidas desde el mismo mac sf symbols
        sliderCustom.minimumValueImage = UIImage(systemName: "bag")
        sliderCustom.maximumValueImage = UIImage(systemName: "bag.fill")
        
        sliderCustom.minimumValue = 0
        sliderCustom.maximumValue = 100
        sliderCustom.value = 70
        
    }
    
    @IBAction func actionSlider(_ sender: UISlider) {
        print(Int(sender.value))
    }
}

extension ComponentesIntermediosViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    var itemsPicker: [String] {
        return (0...100).map { "Elemento \($0)" }//le añadimos el número de elementos
    }
    
    func loadPickerView() {
        pickerViewCustom.delegate = self
        pickerViewCustom.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return itemsPicker.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return itemsPicker[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(itemsPicker[row])
    }
}

extension ComponentesIntermediosViewController {
    func loadDatePicker() {
        datePickerCustom.datePickerMode = .date
        datePickerCustom.minimumDate = Date()//fecha maxima selecionable la de hoy
    }
    
    @IBAction func actionDatePicker(_ sender: Any) {
        print(datePickerCustom.date)
    }
}

extension ComponentesIntermediosViewController {
    func loadSegmentControl() {
        segmentControlCustom.setTitle("Primero", forSegmentAt: 0)//cambiamos titulo
        segmentControlCustom.backgroundColor = .green//cambiamos fondo
        segmentControlCustom.selectedSegmentTintColor = .orange//color del segmento pulsado
        segmentControlCustom.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)//cambiamos el color de los textos
        
        segmentControlCustom.removeTarget(self, action: #selector(actionSegmentControl(_:)), for: .valueChanged)
        segmentControlCustom.addTarget(self, action: #selector(actionSegmentControl(_:)), for: .valueChanged)
    }
    
    @objc func actionSegmentControl(_ sender: UISegmentedControl) {
        print("Segment \(sender.selectedSegmentIndex)")
        pageControlCustom.currentPage = sender.selectedSegmentIndex//aqui lo relacionamos con el pageControl para que funcionen a la vez
    }
}

extension ComponentesIntermediosViewController {
    func loadPageControl() {
        pageControlCustom.pageIndicatorTintColor = .purple
        pageControlCustom.currentPageIndicatorTintColor = .orange
    }
    
    @IBAction func actionPageControl(_ sender: UIPageControl) {
        print("PageControl \(sender.currentPage)")
        segmentControlCustom.selectedSegmentIndex = sender.currentPage//aqui lo relacionamos con el segmenControl para que funcionen a la vez
    }
}

extension ComponentesIntermediosViewController: IndexViewController {
    var index: Int { return 1 }
}
