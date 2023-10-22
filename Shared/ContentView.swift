//
//  ContentView.swift
//  Shared
//
//  Created by stranger on 22/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var carnet:String=""
       @State var password:String=""
    var body: some View {
       
        VStack{
	
            
		
		HStack{
			
			Text("ETPS4")
			      .foregroundColor(.white)
			       .multilineTextAlignment(.center)
			       .padding(30)
			      
			      .background(Color.red)
			       .cornerRadius(10)
			       
			ZStack{
				Spacer().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
				Text("PARCIAL III")
				    .foregroundColor(.white)
				     .multilineTextAlignment(.center)
				     .padding(30)
				
				    .background(Color.red)
				     .cornerRadius(10)
				     
				   Spacer().frame(height: 20)
					
			}
		}
                            
		
	
	.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
	         Image("logo")
		.resizable()
		.aspectRatio(contentMode: .fit)
			 .clipShape(Circle())
			 .overlay(Circle().stroke(Color.white, lineWidth: 4))
			 .shadow(radius: 5)
                        Text("UTEC 🦅 ")
                            .foregroundColor(.white)
                            .padding(22)
                            .background(Color.gray)
                            .cornerRadius(10)
                            
			.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
			.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    TextField("💇 Carnet",text:$carnet)
		.keyboardType(.numberPad)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(
                            Color.gray
                                .opacity(0.3)
                        )
		
                        .cornerRadius(6)
                        .padding(.horizontal,40)
                        .onChange(of: carnet, perform: { value in
                            print("el valor es \(value)")
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
                        })
                    SecureField       ("🔑 Contraseña",          text:$password)
                        
                        .keyboardType(.default)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(
                            Color.gray
                                .opacity(0.3)
                        )
                        .cornerRadius(6)
                        
                        .padding(.horizontal,40)
                        .onChange(of: password, perform: { value in
                            print("el valor es \(value)")
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
                        })
            Button(action: {
                print("*************")
                              print("Carnet: \(carnet)")
		print("Password: \(password)")
		print("SE LOGRO 🏆")
                   }) {
                       Text("INICIAR SESION")
                           .foregroundColor(.white)
                           .padding()
                           .background(Color.red)
                           .cornerRadius(10)
                   }
            
                        
                    
                }
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
