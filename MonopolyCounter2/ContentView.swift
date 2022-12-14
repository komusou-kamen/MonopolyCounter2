//
//  ContentView.swift
//  MonopolyCounter
//
//  Created by Komusou on 2022/08/09.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITableView.appearance().separatorInset = .init(top: 0, left: 0, bottom: 0, right: 20)
        }
    @State var player1Money = 1500
    @State var player2Money = 1500
    @State var player3Money = 1500
    @State var player4Money = 1500
    @State var player5Money = 1500
    @State var tradeAmount = 0
    @State var playerButtonCounter = 0
    @State var carculatorButtonCounter = 0
    @State var plusMinusCounter = true
    @State var fromCounter = 0
    @State var toCounter = 0
    @State var logText = ""
    @State var toFromText1 = "   "
    @State var toFromText2 = "   "
    @State var toFromText3 = "   "
    @State var toFromText4 = "   "
    @State var toFromText5 = "   "
    @State var timer :Timer?
    @State var isEditing = false
    @State var player1 = "player1"
    @State var player2 = "player2"
    @State var player3 = "player3"
    @State var player4 = "player4"
    @State var player5 = "player5"
    @State var numberOfPlayers = 5
    @State var backGroundColor1: Color = .white
    @State var backGroundColor2: Color = .white
    @State var backGroundColor3: Color = .white
    @State var backGroundColor4: Color = .white
    @State var backGroundColor5: Color = .white
    
    var body: some View {
        VStack {
            HStack{
                PlayerList(
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
                Carculator(
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
            HStack {
                Spacer().frame(width: 10)
                if isEditing == false{
                    Button(action: {isEditing = true}){
                        Text("New Game")
                            .padding(.bottom, 5)
                    }
                }else{
                    Text("          ")
                }
                Spacer()
                Text(logText)
                    .font(.title)
                    .padding(.bottom, 15)
                .padding(.top, -15)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}

