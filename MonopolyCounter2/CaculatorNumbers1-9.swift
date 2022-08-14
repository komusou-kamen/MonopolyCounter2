//
//  CaculatorNumbers1-9.swift
//  MonopolyCounter2
//
//  Created by Komusou on 2022/08/14.
//

import SwiftUI

struct CaculatorNumbers1_9: View {
    @Binding var player1Money: Int
    @Binding var player2Money: Int
    @Binding var player3Money: Int
    @Binding var player4Money: Int
    @Binding var player5Money: Int
    @Binding var tradeAmount: Int
    @Binding var playerButtonCounter: Int
    @Binding var carculatorButtonCounter: Int
    @Binding var plusMinusCounter: Bool
    @Binding var fromCounter: Int
    @Binding var toCounter: Int
    @Binding var logText: String
    @Binding var toFromText1: String
    @Binding var toFromText2: String
    @Binding var toFromText3: String
    @Binding var toFromText4: String
    @Binding var toFromText5: String
    @Binding var timer :Timer?
    @Binding var isEditing: Bool
    @Binding var player1: String
    @Binding var player2: String
    @Binding var player3: String
    @Binding var player4: String
    @Binding var player5: String
    @Binding var numberOfPlayers: Int
    @Binding var backGroundColor1: Color
    @Binding var backGroundColor2: Color
    @Binding var backGroundColor3: Color
    @Binding var backGroundColor4: Color
    @Binding var backGroundColor5: Color
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    carculatorButtonCounter += 1
                    if carculatorButtonCounter > 1{
                        tradeAmount *= 10
                        tradeAmount += 7
                    }else{
                        tradeAmount += 7
                    }
                    }){
                    Text("7")
                }.frame(width:50,height: 50)
                    .border(Color.black)
                Button(action: {
                    carculatorButtonCounter += 1
                    if carculatorButtonCounter > 1{
                        tradeAmount *= 10
                        tradeAmount += 8
                    }else{
                        tradeAmount += 8
                    }
                    }){
                    Text("8")
                }.frame(width:50,height: 50)
                    .border(Color.black)
                Button(action: {carculatorButtonCounter += 1
                    if carculatorButtonCounter > 1{
                        tradeAmount *= 10
                        tradeAmount += 9
                    }else{
                        tradeAmount += 9
                    }}){
                    Text("9")
                }.frame(width:50,height: 50)
                    .border(Color.black)
            }
            HStack{
                Button(action: {carculatorButtonCounter += 1
                    if carculatorButtonCounter > 1{
                        tradeAmount *= 10
                        tradeAmount += 4
                    }else{
                        tradeAmount += 4
                    }}){
                    Text("4")
                }.frame(width:50,height: 50)
                    .border(Color.black)
                Button(action: {carculatorButtonCounter += 1
                    if carculatorButtonCounter > 1{
                        tradeAmount *= 10
                        tradeAmount += 5
                    }else{
                        tradeAmount += 5
                    }}){
                    Text("5")
                }.frame(width:50,height: 50)
                    .border(Color.black)
                Button(action: {carculatorButtonCounter += 1
                    if carculatorButtonCounter > 1{
                        tradeAmount *= 10
                        tradeAmount += 6
                    }else{
                        tradeAmount += 6
                    }}){
                    Text("6")
                }.frame(width:50,height: 50)
                    .border(Color.black)
            }
            HStack{
                Button(action: {carculatorButtonCounter += 1
                    if carculatorButtonCounter > 1{
                        tradeAmount *= 10
                        tradeAmount += 1
                    }else{
                        tradeAmount += 1
                    }}){
                    Text("1")
                }.frame(width:50,height: 50)
                    .border(Color.black)
                Button(action: {carculatorButtonCounter += 1
                    if carculatorButtonCounter > 1{
                        tradeAmount *= 10
                        tradeAmount += 2
                    }else{
                        tradeAmount += 2
                    }}){
                    Text("2")
                }.frame(width:50,height: 50)
                    .border(Color.black)
                Button(action: {carculatorButtonCounter += 1
                    if carculatorButtonCounter > 1{
                        tradeAmount *= 10
                        tradeAmount += 3
                    }else{
                        tradeAmount += 3
                    }}){
                    Text("3")
                }.frame(width:50,height: 50)
                    .border(Color.black)
            }
        }
    }
}
