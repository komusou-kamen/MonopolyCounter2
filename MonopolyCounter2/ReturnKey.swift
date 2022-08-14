//
//  ReturnKey.swift
//  MonopolyCounter2
//
//  Created by Komusou on 2022/08/14.
//

import SwiftUI

struct ReturnKey: View {
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
        Button(action: {
            backGroundColor1 = .white
            backGroundColor2 = .white
            backGroundColor3 = .white
            backGroundColor4 = .white
            backGroundColor5 = .white
            if playerButtonCounter == 1 && fromCounter == 1{
                if plusMinusCounter == true{
                    player1Money += tradeAmount
                    toFromText1 = "+\(tradeAmount)"
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                               self.toFromText1 = "   "
                          }
                    logText = "\(player1) got \(tradeAmount)$"
                }else{
                    player1Money -= tradeAmount
                    toFromText1 = "-\(tradeAmount)"
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                               self.toFromText1 = "   "
                          }
                    logText = "\(player1) paid \(tradeAmount)$"
                }
            }else if playerButtonCounter == 1 && fromCounter == 2{
                if plusMinusCounter == true{
                    toFromText2 = "+\(tradeAmount)"
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                               self.toFromText2 = "   "
                          }
                    player2Money += tradeAmount
                    logText = "\(player2) got \(tradeAmount)$"
                }else{
                    player2Money -= tradeAmount
                    toFromText2 = "-\(tradeAmount)"
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                               self.toFromText2 = "   "
                          }
                    logText = "\(player2) paid \(tradeAmount)$"
                }
            }else if playerButtonCounter == 1 && fromCounter == 3{
                if plusMinusCounter == true{
                    toFromText3 = "+\(tradeAmount)"
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                               self.toFromText3 = "   "
                          }
                    player3Money += tradeAmount
                    logText = "\(player3) got \(tradeAmount)$"
                }else{
                    player3Money -= tradeAmount
                    toFromText3 = "-\(tradeAmount)"
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                               self.toFromText3 = "   "
                          }
                    logText = "\(player3) paid \(tradeAmount)$"
                }
            }else if playerButtonCounter == 1 && fromCounter == 4{
                if plusMinusCounter == true{
                    toFromText4 = "+\(tradeAmount)"
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                               self.toFromText4 = "   "
                          }
                    player4Money += tradeAmount
                    logText = "\(player4) got \(tradeAmount)$"
                }else{
                    player4Money -= tradeAmount
                    toFromText4 = "-\(tradeAmount)"
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                               self.toFromText4 = "   "
                          }
                    logText = "\(player4) paid \(tradeAmount)$"
                }
            }else if playerButtonCounter == 1 && fromCounter == 5{
                if plusMinusCounter == true{
                    toFromText5 = "+\(tradeAmount)"
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                               self.toFromText5 = "   "
                          }
                    player5Money += tradeAmount
                    logText = "\(player5) got \(tradeAmount)$"
                }else{
                    player5Money -= tradeAmount
                    toFromText5 = "-\(tradeAmount)"
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                               self.toFromText5 = "   "
                          }
                    logText = "\(player5) paid \(tradeAmount)$"
                }
            }else if playerButtonCounter == 2 && fromCounter == 1 && toCounter == 2{
                player1Money -= tradeAmount
                toFromText1 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText1 = "   "
                      }
                player2Money += tradeAmount
                toFromText2 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText2 = "   "
                      }
                logText = "\(player1) paid \(tradeAmount)$ to \(player2)"
            }else if playerButtonCounter == 2 && fromCounter == 1 && toCounter == 3{
                toFromText1 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText1 = "   "
                      }
                toFromText3 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText3 = "   "
                      }
                player1Money -= tradeAmount
                player3Money += tradeAmount
                logText = "\(player1) paid \(tradeAmount)$ to \(player3)"
            }else if playerButtonCounter == 2 && fromCounter == 1 && toCounter == 4{
                toFromText1 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText1 = "   "
                      }
                toFromText4 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText4 = "   "
                      }
                player1Money -= tradeAmount
                player4Money += tradeAmount
                logText = "\(player1) paid \(tradeAmount)$ to \(player4)"
            }else if playerButtonCounter == 2 && fromCounter == 1 && toCounter == 5{
                toFromText1 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText1 = "   "
                      }
                toFromText5 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText5 = "   "
                      }
                player1Money -= tradeAmount
                player5Money += tradeAmount
                logText = "\(player1) paid \(tradeAmount)$ to \(player5)"
            }else if playerButtonCounter == 2 && fromCounter == 2 && toCounter == 1{
                toFromText1 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText1 = "   "
                      }
                toFromText2 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText2 = "   "
                      }
                player2Money -= tradeAmount
                player1Money += tradeAmount
                logText = "\(player2) paid \(tradeAmount)$ to \(player1)"
            }else if playerButtonCounter == 2 && fromCounter == 2 && toCounter == 3{
                toFromText2 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText2 = "   "
                      }
                toFromText3 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText3 = "   "
                      }
                player2Money -= tradeAmount
                player3Money += tradeAmount
                logText = "\(player2) paid \(tradeAmount)$ to \(player3)"
            }else if playerButtonCounter == 2 && fromCounter == 2 && toCounter == 4{
                toFromText2 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText2 = "   "
                      }
                toFromText4 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText4 = "   "
                      }
                player2Money -= tradeAmount
                player4Money += tradeAmount
                logText = "\(player2) paid \(tradeAmount)$ to \(player4)"
            }else if playerButtonCounter == 2 && fromCounter == 2 && toCounter == 5{
                toFromText2 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText2 = "   "
                      }
                toFromText5 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText5 = "   "
                      }
                player2Money -= tradeAmount
                player5Money += tradeAmount
                logText = "\(player2) paid \(tradeAmount)$ to \(player5)"
            }else if playerButtonCounter == 2 && fromCounter == 3 && toCounter == 1{
                toFromText3 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText3 = "   "
                      }
                toFromText1 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText1 = "   "
                      }
                player3Money -= tradeAmount
                player1Money += tradeAmount
                logText = "\(player3) paid \(tradeAmount)$ to \(player1)"
            }else if playerButtonCounter == 2 && fromCounter == 3 && toCounter == 2{
                toFromText3 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText3 = "   "
                      }
                toFromText2 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText2 = "   "
                      }
                player3Money -= tradeAmount
                player2Money += tradeAmount
                logText = "\(player3) paid \(tradeAmount)$ to \(player2)"
            }else if playerButtonCounter == 2 && fromCounter == 3 && toCounter == 4{
                toFromText3 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText3 = "   "
                      }
                toFromText4 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText4 = "   "
                      }
                player3Money -= tradeAmount
                player4Money += tradeAmount
                logText = "\(player3) paid \(tradeAmount)$ to \(player4)"
            }else if playerButtonCounter == 2 && fromCounter == 3 && toCounter == 5{
                toFromText3 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText3 = "   "
                      }
                toFromText5 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText5 = "   "
                      }
                player3Money -= tradeAmount
                player5Money += tradeAmount
                logText = "\(player3) paid \(tradeAmount)$ to \(player5)"
            }else if playerButtonCounter == 2 && fromCounter == 4 && toCounter == 1{
                toFromText4 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText4 = "   "
                      }
                toFromText1 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText1 = "   "
                      }
                player4Money -= tradeAmount
                player1Money += tradeAmount
                logText = "\(player4) paid \(tradeAmount)$ to \(player1)"
            }else if playerButtonCounter == 2 && fromCounter == 4 && toCounter == 2{
                toFromText4 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText4 = "   "
                      }
                toFromText2 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText2 = "   "
                      }
                player4Money -= tradeAmount
                player2Money += tradeAmount
                logText = "\(player4) paid \(tradeAmount)$ to \(player2)"
            }else if playerButtonCounter == 2 && fromCounter == 4 && toCounter == 3{
                toFromText4 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText4 = "   "
                      }
                toFromText3 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText3 = "   "
                      }
                player4Money -= tradeAmount
                player3Money += tradeAmount
                logText = "\(player4) paid \(tradeAmount)$ to \(player3)"
            }else if playerButtonCounter == 2 && fromCounter == 4 && toCounter == 5{
                toFromText4 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText4 = "   "
                      }
                toFromText5 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText5 = "   "
                      }
                player4Money -= tradeAmount
                player5Money += tradeAmount
                logText = "\(player4) paid \(tradeAmount)$ to \(player5)"
            }else if playerButtonCounter == 2 && fromCounter == 5 && toCounter == 1{
                toFromText5 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText5 = "   "
                      }
                toFromText1 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText1 = "   "
                      }
                player5Money -= tradeAmount
                player1Money += tradeAmount
                logText = "\(player5) paid \(tradeAmount)$ to \(player1)"
            }else if playerButtonCounter == 2 && fromCounter == 5 && toCounter == 2{
                toFromText5 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText5 = "   "
                      }
                toFromText2 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText2 = "   "
                      }
                player5Money -= tradeAmount
                player2Money += tradeAmount
                logText = "\(player5) paid \(tradeAmount)$ to \(player2)"
            }else if playerButtonCounter == 2 && fromCounter == 5 && toCounter == 3{
                toFromText5 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText5 = "   "
                      }
                toFromText3 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText3 = "   "
                      }
                player5Money -= tradeAmount
                player3Money += tradeAmount
                logText = "\(player5) paid \(tradeAmount)$ to \(player3)"
            }else if playerButtonCounter == 2 && fromCounter == 5 && toCounter == 4{
                toFromText5 = "-\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText5 = "   "
                      }
                toFromText4 = "+\(tradeAmount)"
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {_ in
                           self.toFromText4 = "   "
                      }
                player5Money -= tradeAmount
                player4Money += tradeAmount
                logText = "\(player5) paid \(tradeAmount)$ to \(player4)"
            }
            tradeAmount = 0
            playerButtonCounter = 0}){
            Text("return")
        }.frame(width:80,height: 225)
            .border(Color.green)
            .padding(.trailing, 10)
    }
}
