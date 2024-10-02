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
            
            // Reem : here will be every prayer name as a text
            Text(" 5")
                           // .font(.custom("YourCustomFontName", size: 34)) // Replace with your custom font name
                            .fontWeight(.bold) // bold
                            .foregroundColor(.white) // Set text color to white
                            .shadow(color: .black.opacity(1), radius: 5, x: 0, y: 2) // Add shadow
                            .offset(x: 105, y: -280) //position for the text
                            .padding()
            Text(" 4 ")
                           // .font(.custom("YourCustomFontName", size: 34)) // Replace with your custom font name
                            .fontWeight(.bold) // bold
                            .foregroundColor(.white) // Set text color to white
                            .shadow(color: .black.opacity(1), radius: 5, x: 0, y: 2) // Add shadow
                            .offset(x: -100, y: -170) //position for the text
                            .padding()
            Text(" 3 ")
                           // .font(.custom("YourCustomFontName", size: 34)) // Replace with your custom font name
                            .fontWeight(.bold) // bold
                            .foregroundColor(.white) // Set text color to white
                            .shadow(color: .black.opacity(1), radius: 5, x: 0, y: 2) // Add shadow
                            .offset(x: 105, y: -95) //position for the text
                            .padding()
            Text(" 2 ")
                           // .font(.custom("YourCustomFontName", size: 34)) // Replace with your custom font name
                            .fontWeight(.bold) // bold
                            .foregroundColor(.white) // Set text color to white
                            .shadow(color: .black.opacity(1), radius: 5, x: 0, y: 2) // Add shadow
                            .offset(x: -100, y: 20) //position for the text
                            .padding()
            Text(" 1 ")
                           // .font(.custom("YourCustomFontName", size: 34)) // Replace with your custom font name
                            .fontWeight(.bold) // bold
                            .foregroundColor(.white) // Set text color to white
                            .shadow(color: .black.opacity(1), radius: 5, x: 0, y: 2) // Add shadow
                            .offset(x: 105, y: 105) //position for the text
                            .padding()

            // ٍ Reem: here will be the Salah image
            //
          //  Image("Narrative Box") // Reem : this is the footter Narrative box image
             //               .frame(width: 41, height: 45)
            //                .offset(x: 0, y: 340)
            //Image("Narrative Box") // Reem : this is the footter Narrative box image
              //              .frame(width: 41, height: 45)
              //              .offset(x: 0, y: 340)
           // Image("Narrative Box") // Reem : this is the footter Narrative box image
                      //      .frame(width: 41, height: 45)
                      //      .offset(x: 0, y: 340)
           // Image("Narrative Box") // Reem : this is the footter Narrative box image
                     //       .frame(width: 41, height: 45)
                       //     .offset(x: 0, y: 340)
            Image("AlfajerButton") // Reem : this is the footter Narrative box image
                            .frame(width: 41, height: 45)
                            .offset(x: 125 , y: 155)
            
            
            
            
            
            
            
            Image("Narrative Box") // Reem : this is the footter Narrative box image
                            .frame(width: 41, height: 45)
                            .offset(x: 0, y: 340)
            
            
            //كود بيت ابطه
            addImageView(imageName: "ChickenHouse")
                            .frame(width: 41, height: 45) // حجم ثابت
                            .offset(x: -130, y: -150) // تحريك الصورة لأعلى بمقدار 50 نقطة

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
