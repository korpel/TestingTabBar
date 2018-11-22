/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func pinchMonkey(_ sender: UIPinchGestureRecognizer) {
        if let view = sender.view {
            view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
            sender.scale = 1
        }
    }
    
    @IBAction func rotateMonkey(_ sender: UIRotationGestureRecognizer) {
        if let view = sender.view {
            view.transform = view.transform.rotated(by: sender.rotation)
            sender.rotation = 0
        }
    }

    @IBAction func rotateBanana(_ sender: UIRotationGestureRecognizer) {
        if let view = sender.view {
            view.transform = view.transform.rotated(by: sender.rotation)
            sender.rotation = 0
        }
    }
    
    @IBAction func pinchBanana(_ sender: UIPinchGestureRecognizer) {
        if let view = sender.view {
            view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
            sender.scale = 1
        }
    }
    
    @IBAction func HandleMonkeyPan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        if let view = sender.view {
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
            
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
        if sender.state == .ended {
            let velocity = sender.velocity(in: self.view)
            let magnitude = sqrt((velocity.x*velocity.x)+(velocity.y*velocity.y))
            let slideMultiplier = magnitude/200
            let slideFactor = slideMultiplier*0.1
            var finalPoint = CGPoint(x: sender.view!.center.x + (velocity.x*slideFactor), y: sender.view!.center.y+(velocity.y*slideFactor))
            finalPoint.x = min(max(finalPoint.x, 0), self.view.bounds.size.width)
            finalPoint.y = min(max(finalPoint.y, 0), self.view.bounds.size.height)
            UIView.animate(withDuration: Double(slideFactor*2), delay: 0, options: UIView.AnimationOptions.curveEaseInOut , animations: {sender.view!.center = finalPoint}, completion: nil)
        }

        
    }
    @IBAction func bananaTapHandler(_ sender: UITapGestureRecognizer) {
        print("H mpanana einai sth thesi x: \(sender.view!.center.x) y: \(sender.view!.center.y)")
        print("Ta bounds tou view einai sthn thesi x: \(self.view.bounds.size.width) kai y : \(self.view.bounds.size.height)")
        let state = sender.state
        if  state == .ended {
            let animator = UIViewPropertyAnimator(duration: 0.2, curve: .easeInOut, animations: {
                    sender.view?.center.x += 100
                    sender.view?.center.y += 100
                if sender.view!.center.x + sender.view!.bounds.maxX/2 > self.view.bounds.size.width && sender.view!.center.y + sender.view!.bounds.maxY/2 > self.view.bounds.size.height {
                    print("ektos")
                    UIView.animate(withDuration: 2, animations: {
                        sender.view!.center.x = self.view.center.x
                        sender.view!.center.y = self.view.center.y
                    })
                }
            })
            animator.startAnimation()
            

            
        }
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
}
