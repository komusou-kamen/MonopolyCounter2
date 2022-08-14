//
//  PlayerListIIsEditing.swift
//  MonopolyCounter2
//
//  Created by Komusou on 2022/08/14.
//

import SwiftUI

struct PlayerListIIsEditing: View {
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
            TextField("input a player name", text: $player1)
            TextField("input a player name", text: $player2)
            TextField("input a player name", text: $player3)
            TextField("input a player name", text: $player4)
            HStack {
                if numberOfPlayers == 5 {
                    TextField("input a player name", text: $player5)
                    Button(action: {numberOfPlayers = 4}){
                        Text("❌")
                    }
                }else{
                    Spacer()
                    Button(action: {numberOfPlayers = 5}){
                        Text("➕")
                    }
                }
            }
            Button(action: {isEditing = false}){
                Text("Game Start")
            }
        }.listStyle(PlainListStyle())
    }
}
