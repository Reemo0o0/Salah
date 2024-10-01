//
//  ContentView.swift
//  Salah
//
//  Created by Reem Alotaibi on 26/03/1446 AH.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
          //shuruq : كود الصوره الاساسيه بدون الكلام ولا بيت البطه
            addImageView(imageName: "MainViewWithout")
                .ignoresSafeArea()
            
            
            
            //كود بيت ابطه
            addImageView(imageName: "ChickenHouse")
                            .frame(width: 41, height: 45) // حجم ثابت
                            .offset(x: -1, y: -1) // تحريك الصورة لأعلى بمقدار 50 نقطة

        }
    }
    
    //shuruq: كود لملائمه مقاس الشاشات
    func addImageView(imageName: String) -> some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
    }
}









//كود السيميلتور الجانبي
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
