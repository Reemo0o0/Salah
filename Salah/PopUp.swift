//
//  PopUp.swift
//  Salah
//
//  Created by Reem Alotaibi on 29/03/1446 AH.
// Reem : this class will be the Pop Up the Ui and Action

import Foundation
import SwiftUI

struct PopUp : View {
    @State private var showPopup = false
    @State private var actionMessage: String = ""

    var body: some View {
        VStack {
            Button(action: {
                showPopup.toggle()
            }) {
                Text("Show Popup")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(9)
            }

            // Display action message
            Text(actionMessage)
                .font(.headline)
                .padding()

            // Popup
            if showPopup {
                PopupView(showPopup: $showPopup, onYesTap: {
                    actionMessage = "You selected Yes!"
                }, onNoTap: {
                    actionMessage = "You selected No!"
                })
                .transition(.scale)
               // .animation(.easeInOut)
            }
        }
        //.padding()
    }
}

struct PopupView: View {
    @Binding var showPopup: Bool
    var onYesTap: () -> Void
    var onNoTap: () -> Void
    
    var body: some View {
        VStack{
                
                VStack {
                    
                   // Text(" هل صليت الفجر ؟")
                       // .font(.headline)
                     //   .foregroundColor(.black)
                      //  .position( x: -40, y: 100)
                        
                    
                    HStack {
                        Button(action: {
                            onYesTap() // Call the Yes button action
                            showPopup = false
                        }) {
                            Image("happy yes ") // Replace with your Yes button image asset
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 50) // Adjust size as needed
                        }
                        
                    //    Button(action: {
                    //    onNoTap() // Call the No button action
                     //      showPopup = false
                   //     })
                   //     {
                   //       Image("Angry No") // Replace with your No button image asset
                   //           .resizable()
                   //          .scaledToFit()
                   //         frame(width: 100, height: 50) // Adjust size as needed
                   //         .position( x: 100, y: -50)

                  //  }
                    }
                    
                    Button(action: {
                        showPopup = false
                    }) {
                        Image("closer Button") // Replace with your image asset name
                            .resizable()
                            .scaledToFit()
                            .padding()
                            .cornerRadius(30)
                        
                    } }
               .padding()
            Image("Pop Up") // Replace with your image asset name
                .resizable()
                .scaledToFit()
                .frame(height: 600)
                .position( x: 200, y: -50)
               // .cornerRadius(12)
               .shadow(radius: 10)
               //.padding(40)
                       }}
        }
    

struct PopUp_Previews: PreviewProvider {
    static var previews: some View {
        PopUp()
    }}
