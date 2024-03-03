//
//  ViewController.swift
//  HomeWorkColorizedApp
//
//  Created by user on 02.03.2024.
//

import UIKit



    final class ViewController: UIViewController {
        
        
        @IBOutlet var counterRed: UILabel!
        @IBOutlet var counterGreen: UILabel!
        @IBOutlet var counterBlue: UILabel!
        
        @IBOutlet var viewShowColor: UIView!
        
        @IBOutlet var sliderRed: UISlider!
        @IBOutlet var sliderGreen: UISlider!
        @IBOutlet var sliderBlue: UISlider!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            viewShowColor.layer.cornerRadius = viewShowColor.frame.width / 12
            
            setupSliderRed()
            setupSliderGreen()
            setupSliderBlue()
            
            setupCounterRed()
            setupCounterGreen()
            setupCounterBlue()
        }
        
        
        @IBAction func sliderRedAction() {
            counterRed.text = sliderRed.value.formatted()
            viewShowColor.alpha = CGFloat(sliderRed.value)
            viewShowColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
            //viewShowColor.backgroundColor = viewShowColor.backgroundColor?.withAlphaComponent(CGFloat(sliderRed.value))
        }
        
        @IBAction func sliderGreenAction() {
            counterGreen.text = sliderGreen.value.formatted()
            viewShowColor.alpha = CGFloat(sliderGreen.value)
            viewShowColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
        }
        
        @IBAction func sliderBlueAction() {
            counterBlue.text = sliderBlue.value.formatted()
            viewShowColor.alpha = CGFloat(sliderBlue.value)
            viewShowColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
        }
        
        
        private func setupCounterRed() {
            counterRed.text = sliderRed.value.formatted()
            counterRed.font = UIFont.systemFont(ofSize: 20)
            counterRed.textAlignment = .left
            
        }
        
        private func setupCounterGreen() {
            counterGreen.text = sliderGreen.value.formatted()
            counterGreen.font = UIFont.systemFont(ofSize: 20)
            counterGreen.textAlignment = .left
            
        }
        
        private func setupCounterBlue() {
            counterBlue.text = sliderBlue.value.formatted()
            counterBlue.font = UIFont.systemFont(ofSize: 20)
            counterBlue.textAlignment = .left
            
        }
        
        private func setupSliderRed() {
            sliderRed.value = 0
            sliderRed.minimumValue = 0
            sliderRed.maximumValue = 1
            sliderRed.minimumTrackTintColor = .red
            sliderRed.maximumTrackTintColor = .red
            
        }
        
        private func setupSliderGreen() {
            sliderGreen.value = 0
            sliderGreen.minimumValue = 0
            sliderGreen.maximumValue = 1
            sliderGreen.minimumTrackTintColor = .green
            sliderGreen.maximumTrackTintColor = .green
            
        }
        
        private func setupSliderBlue() {
            sliderBlue.value = 0
            sliderBlue.minimumValue = 0
            sliderBlue.maximumValue = 1
            sliderBlue.minimumTrackTintColor = .blue
            sliderBlue.maximumTrackTintColor = .blue
            
        }
        
        
    }
