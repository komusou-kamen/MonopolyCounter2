//
//  PlayerList.swift
//  MonopolyCounter2
//
//  Created by Komusou on 2022/08/14.
//

import SwiftUI

struct PlayerList: View {
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
            if isEditing{
                PlayerListIIsEditing(
                    player1Money: $player1Money,
                    player2Money: $player2Money,
                    player3Money: $player3Money,
                    player4Money: $player4Money,
                    player5Money: $player5Money,
                    tradeAmount: $tradeAmount,
                    playerButtonCounter: $playerButtonCounter,
                    carculatorButtonCounter: $carculatorButtonCounter,
                    plusMinusCounter: $plusMinusCounter,
                    fromCounter: $fromCounter,
                    toCounter: $toCounter,
                    logText: $logText,
                    toFromText1: $toFromText1,
                    toFromText2: $toFromText2,
                    toFromText3: $toFromText3,
                    toFromText4: $toFromText4,
                    toFromText5: $toFromText5,
                    timer: $timer,
                    isEditing: $isEditing,
                    player1: $player1,
                    player2: $player2,
                    player3: $player3,
                    player4: $player4,
                    player5: $player5,
                    numberOfPlayers: $numberOfPlayers,
                    backGroundColor1: $backGroundColor1,
                    backGroundColor2: $backGroundColor2,
                    backGroundColor3: $backGroundColor3,
                    backGroundColor4: $backGroundColor4,
                    backGroundColor5: $backGroundColor5
                )
            }else{
                PlayerListOnGame(
                    player1Money: $player1Money,
                    player2Money: $player2Money,
                    player3Money: $player3Money,
                    player4Money: $player4Money,
                    player5Money: $player5Money,
                    tradeAmount: $tradeAmount,
                    playerButtonCounter: $playerButtonCounter,
                    carculatorButtonCounter: $carculatorButtonCounter,
                    plusMinusCounter: $plusMinusCounter,
                    fromCounter: $fromCounter,
                    toCounter: $toCounter,
                    logText: $logText,
                    toFromText1: $toFromText1,
                    toFromText2: $toFromText2,
                    toFromText3: $toFromText3,
                    toFromText4: $toFromText4,
                    toFromText5: $toFromText5,
                    timer: $timer,
                    isEditing: $isEditing,
                    player1: $player1,
                    player2: $player2,
                    player3: $player3,
                    player4: $player4,
                    player5: $player5,
                    numberOfPlayers: $numberOfPlayers,
                    backGroundColor1: $backGroundColor1,
                    backGroundColor2: $backGroundColor2,
                    backGroundColor3: $backGroundColor3,
                    backGroundColor4: $backGroundColor4,
                    backGroundColor5: $backGroundColor5
                )
            }
    }
}
