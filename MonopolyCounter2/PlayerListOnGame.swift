//
//  PlayerListOnGame.swift
//  MonopolyCounter2
//
//  Created by Komusou on 2022/08/14.
//

import SwiftUI

struct PlayerListOnGame: View {
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
        List{
            Button(action: {playerButtonCounter += 1
                if playerButtonCounter == 1{
                    fromCounter = 1
                    backGroundColor1 = .green
                }else{
                    toCounter = 1
                    backGroundColor1 = .purple
                }
            }) {
                HStack{
                    Text(player1).background(backGroundColor1)
                    Spacer().frame(width: 80)
                    Text(String(player1Money) + "$")
                    Spacer()
                    Text(toFromText1)
                }
            }
            Button(action: {playerButtonCounter += 1
                if playerButtonCounter == 1{
                    fromCounter = 2
                    backGroundColor2 = .green
                }else{
                    toCounter = 2
                    backGroundColor2 = .purple
                }
            }) {
                HStack{
                    Text(player2).background(backGroundColor2)
                    Spacer().frame(width: 80)
                    Text(String(player2Money) + "$")
                    Spacer()
                    Text(toFromText2)
                }
            }
            Button(action: {playerButtonCounter += 1
                if playerButtonCounter == 1{
                    fromCounter = 3
                    backGroundColor3 = .green
                }else{
                    toCounter = 3
                    backGroundColor3 = .purple
                }
            }) {
                HStack{
                    Text(player3).background(backGroundColor3)
                    Spacer().frame(width: 80)
                    Text(String(player3Money) + "$")
                    Spacer()
                    Text(toFromText3)
                }
            }
            Button(action: {playerButtonCounter += 1
                if playerButtonCounter == 1{
                    fromCounter = 4
                    backGroundColor4 = .green
                }else{
                    toCounter = 4
                    backGroundColor4 = .purple
                }
            }) {
                HStack{
                    Text(player4).background(backGroundColor4)
                    Spacer().frame(width: 80)
                    Text(String(player4Money) + "$")
                    Spacer()
                    Text(toFromText4)
                }
            }
            if numberOfPlayers == 5{
                Button(action: {playerButtonCounter += 1
                    if playerButtonCounter == 1{
                        fromCounter = 5
                        backGroundColor5 = .green
                    }else{
                        toCounter = 5
                        backGroundColor5 = .purple
                    }
                }) {
                    HStack{
                        Text(player5).background(backGroundColor5)
                        Spacer().frame(width: 80)
                        Text(String(player5Money) + "$")
                        Spacer()
                        Text(toFromText5)
                    }.listRowSeparator(.visible)
                }
            }else{
                Text("     ")
            }
            Text(String(tradeAmount) + "$  ")
                .frame(width:200,height: 40, alignment: .trailing)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 3)
                                )
                    .font(.largeTitle)
                    .listRowSeparator(.hidden)
        }.listStyle(PlainListStyle())
    }
}

