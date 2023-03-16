//
//  ContentView.swift
//  lblbc
//
//  Created by jerry on 2023/3/14.
//

import SwiftUI
import MobileCoreServices

struct ContentView: View {
    var availableChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789~!@#$%^&*()-+_=,."
    
    @State private var password = ""
    var body: some View {
        VStack {
            TextField("随机密码",text: $password).padding()
            HStack{
                Button("刷新") {
                    password = getRandomPassword()
                }.buttonStyle(.borderedProminent)
                Button("复制") {
                    print(password)
                    copyToClipboard(text:password)
                }.buttonStyle(.borderedProminent)
            }
        }
        .onAppear(perform: {
            password = getRandomPassword()
        })
        .padding()
    }
    
    func getRandomPassword()->String {
        var arr = ""
        let len = availableChars.count
        let startIndex = availableChars.startIndex
        let passwordLength = 32
        for _ in 0...passwordLength {
            let index = getRandom(len:len)
            
            let char = availableChars.index(startIndex, offsetBy: index)..<availableChars.index(startIndex, offsetBy: index+1)
            arr.append(String(availableChars[char]))
        }
        return arr
    }
    
    func getRandom(len:Int)->Int{
        return Int(arc4random_uniform(UInt32(len)))
    }
    func copyToClipboard(text: String) {
        UIPasteboard.general.setValue(text, forPasteboardType: kUTTypePlainText as String)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
