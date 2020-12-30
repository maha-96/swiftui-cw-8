//
//  ContentView.swift
//  ex 8 f
//
//  Created by bibi on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var counters = [0, 0, 0]
    var body: some View {
        
        VStack(alignment: .trailing){
            thekerbutton(counter: $counters[0], label: "استغفرالله العظيم")
            thekerbutton(counter: $counters[1], label: "الحمدالله")
            thekerbutton(counter: $counters[2], label: "سبحان الله")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct thekerbutton: View {
    @Binding var counter: Int
    let label: String
    
    var body: some View {
        
        HStack(){
            Text(label)
                .font(.largeTitle)
            
            Button(action: {
                counter += 1
                
            }, label: {
                Text("\(counter)")
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding()
            })
            
            
        }
        
        
    }
    
}


