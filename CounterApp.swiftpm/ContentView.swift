import SwiftUI

struct ContentView: View {
    // State variable to hold the counter value
    @State private var counter = 0
    @State private var message = ""
    var body: some View {
        ZStack {
            
            Color(red: 204/255, green: 241/255, blue: 255/255)
            .ignoresSafeArea() // Ensures the color fills the entire screen
                        
            VStack {
                //Header
                Text("SwiftUI Counter")
                    .font(.largeTitle)
                    .padding(.bottom, 10)
                    .bold()
                // Display the counter value
                Text("Counter: \(counter)")
                    .font(.largeTitle)
                    .padding()
                    .fixedSize(horizontal: true, vertical: false) // Prevents text from truncating
                    .background(Color.blue)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                
                // Horizontal stack for buttons
                HStack {
                    // Decrement button (can go negative)
                    Button(action: {
                        counter -= 1
                    }) {
                        Text("-")
                            .font(.title)
                            .frame(width: 50, height: 50)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                            .padding()
                    }
                    //Reset button
                    Button(action: {
                        counter = 0
                        message = ""
                    }) {
                        Text("0")
                            .font(.title)
                            .frame(width: 50, height: 50)
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                            .padding()
                    }
                    // Increment button
                    Button(action: {
                        counter += 1
                    }) {
                        Text("+")
                            .font(.title)
                            .frame(width: 50, height: 50)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                            .padding()
                    }
                }
                // Randomize button
                Button(action: {
                    counter = Int.random(in: -100...100) // Generates a random number between -100 and 100
                    if counter % 2 == 0 {
                        message = "You hit even number!"
                    } else {
                        message = "You hit odd number!"
                    }
                }) {
                    Text("🔁")
                        .font(.title)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 20) // Adds some space above the button
                
                Text(message)
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding(.top, 20)
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
