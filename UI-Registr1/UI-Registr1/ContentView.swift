//
//  ContentView.swift
//  UI-Registr1
//
//  Created by Демьян Горчаков on 17.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text = ""
    @State private var sameText = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 30) {
                Image("cactus")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                VStack {
                    Text("Имя Фамилия")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.top, 30)
                    
                    Text("Редактировать профиль")
                        .fontWeight(.bold)
                        .padding(.horizontal, 5)
                        .padding(8)
                        .background(.green)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                }
            }
            
            VStack {
                Text("О себе")
                    .font(.system(size: 23, weight: .medium))
                    .padding(.top, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                
                TextField("Введите текст", text: $text)
                    .padding(5)
                
                ButtonSave(BmoreText: $sameText, Btext: text)
                
                Text(sameText)
                    .padding(7)
                    .background(Color("gray"))
                    .cornerRadius(20)
                    .frame(maxWidth: .infinity)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

struct ButtonSave: View {
    
    @Binding var BmoreText: String
    var Btext: String
    
    var body: some View {
        Button {
            BmoreText = Btext
        } label: {
            Text("Сохранить")
        }
        .padding(20)
        .background(Color(.green))
        .cornerRadius(30)
        .padding(.top, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
