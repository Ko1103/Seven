//
//  Model.swift
//  Seven
//
//  Created by 山浦功 on 2017/12/10.
//  Copyright © 2017年 KoYamaura. All rights reserved.
//

import Foundation
import UIKit




func form(_ all: Int){
    
    var count = 0
    var numbers = [Int]()
    
    while count != all{
        
        for i in count..<all{
            numbers.remove(at: i)
        }
        
        for i in count..<all {
            let random = arc4random() % 7
            numbers.append(Int(random))
        }
        
        var sqrt = 3
        if all == 9 {
            sqrt = 3
        }
        
        for i in count..<all {
            if (i - sqrt > 0){
                if (numbers[i] + (numbers[i - sqrt]) ) < 7 {
                    count = i
                }
            }else if( i % sqrt != 0) {
                if (numbers[i] + (numbers[i - 1]) ) < 7{
                    count = i
                }
            }else if( i+1 % sqrt != 0){
                if (numbers[i] + (numbers[i + 1]) ) < 7{
                    count = i
                }
            }else if(i + sqrt > 9) {
                if (numbers[i] + (numbers[i - sqrt])) < 7 {
                    count = i
                }
            }
        }
    }
    print(numbers)
    
}


func check() -> Bool {
    var result = false
    return result
}
