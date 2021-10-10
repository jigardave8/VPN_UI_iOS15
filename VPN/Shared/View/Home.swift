//
//  Home.swift
//  VPN
//
//  Created by jigar dave on 16/09/21.
//

import SwiftUI

@available(iOS 15, *)
@available(iOS 15, *)
struct Home: View {
    var body: some View
    {
        VStack{
            
            HStack {
                
                Button{
                    
                }
            label:{
                Image(systemName: "circle.grid.cross")
                    .font(.title2)
                    .padding(12)
                    .background (
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(.white.opacity(0.25),lineWidth: 1)

                    )
            }
                Spacer()
                
                
                
                Button{
                    
                }
            label:{
                Image(systemName: "slider.horizontal.3")
                    .font(.title2)
                    .padding(12)
                    .background (
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(lineWidth: 1)

                    )
            }

            }
            .overlay(
                //Attributed Text
                Text(getTitle())
                    .foregroundColor(.white)

            )
            .foregroundColor(.white)
            //Power Button
        }

        .padding()

        .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(
            
            LinearGradient ( colors:   [
                Color("BG1"),
                Color("BG1"),
                Color("BG2"),
                Color("BG2")],
                             startPoint: .top, endPoint: .bottom)

        )

    }




func getTitle() -> AttributedString
        {
            var str = AttributedString ("Cloud VPN")
            
            if let range = str.range(of:"Cloud") {
                
                str [range].font = .system(size: 24, weight: .light)
            }
            if let range = str.range(of:"VPN") {
                
                str [range].font = .system(size: 24, weight: .black)
            }
            return str

        }

 struct Home_Previews: PreviewProvider {
            static var previews: some View {
                Home()
            }
        }
        
    }
