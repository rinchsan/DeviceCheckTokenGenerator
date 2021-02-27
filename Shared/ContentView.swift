//
//  ContentView.swift
//  Shared
//
//  Created by Masaya Hayashi on 2021/02/27.
//

import SwiftUI
import DeviceCheck

struct ContentView: View {
    var body: some View {
        Button("Generate DeviceCheck Token") {
            DCDevice.current.generateToken { (data, error) in
                guard let data = data else {
                    guard let error = error else {
                        print("unknown error")
                        return
                    }
                    print(error)
                    return
                }
                let token = data.base64EncodedString()
                print(token)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
