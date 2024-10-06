import SwiftUI


//(REEM) here opens ContentView
struct ContentView: View {
    
    
    //(REEM) the assign section " state means it is changeable "
    @State  var userGoal: String = "" // (REEM) This is the input that stored
    @State  var showNarrative: Bool = false // (REEM) the switchi for every narraiteve
    @State  var currentCheckpoint: Int = 0 // (REEM) this stores the cuurent point the user finish and to track the progess
    @State  var showPopup: Bool = false // t(REEM) his stores the pop up that generate by clickeing on the checkpoint
    @State  var actionMessage: String = "" // (REEM) this is gonaa store the narritve speech that genreted after clicking yes image on popup
    @State  var timerValue: Int = 10 // (REEM) Timer default value in seconds
    @State private var keyboardHeight: CGFloat = 0 //(REEM)
    @State var ShowView: Bool = false // (REEM)
    @State  var showTimer: Bool = false //(REEM)
    
    //(REEM) this section is arrays and collection assing  " let make it static not changable "
    let checkpoints = [
        (title: "0", message: " احسنت لقد اتممت صلاه الفجر ", image: ""),
        (title: "1", message: " احسنت لقد اتممت صلاه الظهر ", image: ""),
        (title: "2", message: " احسنت لقد اتممت صلاه العصر ", image: ""),
        (title: "3", message: " احسنت لقد اتممت صلاه المغرب ", image: ""),
        (title: "4", message: " تهانيناً لقد اتممت صلاواتك لليوم اذهب لتاخذ هديتك لليوم ", image: ""),
    ]
    
    let CheckPointNames = [ "  الفجر ", "الظهر ", " العصر ", " المغرب ", " العشاء"]
    
    
    
    
    
    //(REEM) here is the start of the contianers or the view
    var body: some View {
        
        
        
        
        //unmovable background
        GeometryReader { geometry in
            
            
            Image("background") //(REEM)  the background
                .ignoresSafeArea()
            //.scaledToFill() // (REEM) Scale the image to fill the entire container
                .frame(width: geometry.size.width, height: geometry.size.height) // (REEM) Fit the image to the screen size
            // .clipped() // (REEM) Prevents overflow of the image
            //.resizable()
                .ignoresSafeArea()
            
            Image("AllAsset") //(REEM) the chiken house
            //.frame(width: 41, height: 45)
            // .resizable()
            // .frame(width: 20, height: 750)                .shadow(color: .black.opacity(0.9), radius: 10, x: 2, y: 2)
                .offset(x: 10, y: 60)
            
            //  Image("ChickenHouse") //(REEM) the chiken house
            //         .frame(width: 41, height: 45)
            //        .offset(x: 50, y: 280)
            
            Image("Narrative Box") // (REEM)  this is the footter Narrative box image
                .offset(x: 30, y: 710)
            
            
            
            
            
            
            
            ZStack { // (REEM) this is the stack for the gift input
                
                
                
                TextField("ادخل هديتك هنا للبدء", text: $userGoal)// (REEM) here should be the input header at the center top of the home page
                    .foregroundColor(.white)
                    .frame(width: 300, height: 45)
                    .offset(x: 135, y: -30)
                   // .padding(.bottom, keyboardHeight)
                
                
                
                
                
                
          
                    
                    
                    
                    
                    // (REEM) CheckPointNames
                    VStack {
                        
                        
                        
                        
                        // Static positioning using fixed frames
                        Text(CheckPointNames[4])
                            .font(.custom("YourCustomFontName", size: 10))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .shadow(color: .white.opacity(50), radius: 5, x: 2, y: 2)
                            .offset(x: 158, y: 135)
                            .padding()
                        
                        
                        Text(CheckPointNames[3])
                            .font(.custom("YourCustomFontName", size: 10))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .shadow(color: .white.opacity(50), radius: 5, x: 2, y: 2)
                            .offset(x: -43, y: 185)
                            .padding()
                    

                        
                        
                        Text(CheckPointNames[2])
                            .font(.custom("YourCustomFontName", size: 10))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .shadow(color: .white.opacity(50), radius: 5, x: 2, y: 2)
                            .offset(x: 158, y: 210)
                            .padding()
                     

                        
                        Text(CheckPointNames[1])
                            .font(.custom("YourCustomFontName", size: 10))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .shadow(color: .white.opacity(50), radius: 5, x: 2, y: 2)
                            .offset(x: -48, y: 273)
                            .padding()
                      

                        Text(CheckPointNames[0])
                            .font(.custom("YourCustomFontName", size: 10))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .shadow(color: .white.opacity(50), radius: 5, x: 2, y: 2)
                            .offset(x: 153, y: 303)
                            .padding()
                       

                        
                    }
                    
                    
                }
                
                
                
                // VStack {
                
                
                
                
                
                
                
                
                // (REEM) this section is for positions the 5 checkpoints buttons at the center of the homepage each checkpoint has it is own position
                
                //   if showNarrative {
                //   VStack {
                
                //    Image("IshaButton") // (REEM)  this is the Button
                //    .offset(x: 188, y: 155)
                // Character Image and Narrative Box
                //      Image("characterImage") // Replace with your character asset
                //         .resizable()
                //         .scaledToFit()
                //         .frame(height: 150)
                //        .padding(.top, 20)
                
                //     Text("Your goal is: \(userGoal). Welcome to checkpoint //\(currentCheckpoint + 1)!")
                //       .padding()
                //      .background(Color.gray.opacity(0.2))
                //      .cornerRadius(10)
                //      .padding()
                
                // Checkpoint Button
                //   Button(action: {
                //       showPopup = true
                //   }) {
                //       Image("checkpointImage") // Replace with your checkpoint asset
                //          .resizable()
                //          .scaledToFit()
                //          .frame(width: 100, height: 100)
                //   }
                //   .padding(.top, 20)
                
                
                //   }
            }
            // }
            .edgesIgnoringSafeArea(.all) // Ignore safe areas to extend image to edges
            
        }
        
        // Display Action Message
        //   Text(actionMessage)
        //      .font(.headline)
        //      .padding()
        //}}
        
        
        //Popup
        //     if showPopup {
        //           PopUp(showPopup: $showPopup, checkpoint: currentCheckpoint, goal: userGoal, onYesTap: {
        // Proceed to next checkpoint
        //       currentCheckpoint += 1
        //      actionMessage = "You have moved to checkpoint \(currentCheckpoint + 1)."
        //    showPopup = false
        //      }, onNoTap: {
        //     actionMessage = "You selected No for checkpoint \(currentCheckpoint + 1)."
        // Update action message or character response here
        //     showPopup = false
        //         })
        //        .transition(.scale)
        //     .animation(.easeInOut)
        
        
        
        
        
        
        
        
        
        
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
        //  Image("AlfajerButton") // Reem : this is the footter Narrative box image
        //       .frame(width: 41, height: 45)
        //       .offset(x: 125 , y: 155)
        
        
        
        
        
        
        
        
        
        
        
        
    
        
        // (REEM) preview sction for the programmers not needed for th app
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        @State static var showPopup = true
        
        static var previews: some View {
            ContentView(
                
            )
        } }



