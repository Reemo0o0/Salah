//
//  ContentView.swift
//  Salah
//
//  Created by Reem Alotaibi on 26/03/1446 AH.
//
/*
import SwiftUI

struct ContentView: View {
    var body: some View {
       ZStack {
            // الصورة الأولى
            addImageView(imageName: "IshaButton", width: 100, height: 100)
                .offset(x: 0, y: 0) // الموقع الأصلي

            // الصورة الثانية فوق الأولى
            addImageView(imageName: "GreenBlockIsha", width: 100, height: 100)
                .offset(x: 100, y: 100) // تحريك الصورة لأعلى بمقدار 50 نقطة

            // الصورة الثالثة تحت الأولى
            addImageView(imageName: "AlfajerButton", width: 100, height: 100)
                .offset(x: 0, y: 50) // تحريك الصورة لأسفل بمقدار 50 نقطة
        }
    }
    
    //كود عشان يكون حكم الاستس مضبوط
    func addImageView(imageName: String, width: CGFloat, height: CGFloat) -> some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: width, height: height)
    }
    
}
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Add the background image
            Image("background")
                .resizable() // Make the image resizable
                .aspectRatio(contentMode: .fill) // Fill the screen
                .edgesIgnoringSafeArea(.all) // Ignore safe areas to cover the whole screen

            
        }
    }
}

//كود اظهار السيميليتور الجانبي
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
