//
//  QuizView.swift
//  SenTech
//
//  Created by Apprenant66 on 23/09/2022.
//

import SwiftUI

let fontSize1: CGFloat = 26
let fontSize2: CGFloat = 24
let backColor = Color("BackgroundColor")
let constrastColor = Color("LightDuck")
let textColor = Color("TextColor")

func getBackColor(_ inverted : Bool = false) -> Color { return inverted ? textColor : backColor}
func getTextColor(_ inverted : Bool = false) -> Color { return inverted ? backColor : textColor }
func getContrastColor(_ inverted : Bool = false) -> Color { return inverted ? constrastColor : constrastColor }

let numPoints = 5           ///
let distance: CGFloat = 10  ///
let minSize: CGFloat = 10   ///
let maxSize: CGFloat = 30   ///

let nilQuestion = Question(label: "", answerList: [])

/*  Définition du statut:
    0 = 1ère exécution du quiz
    1 = choisir la réponse pour la question posée
    2 = valider le choix pour la réponse
    3 = délai avant évaluation du choix
    4 = passer à la question suivante
    5 = le quiz est fini
*/

struct QuizView: View {
    let subjectTitle: String
    var quiz: Quiz
    
    @State var currentQuestion = nilQuestion
    @State var questionIndex = -1
    @State private var selectedAnswer: Int = -1
    @State var numAnsweredQuestions = 0
    @State var numGoodAnswers = 0
    @State private var status: Int = 0
    @State var modal = false

    @State var animationIsRunning = false   ///
    @State var animSize = minSize           ///
    @State var animPos = 0                  ///

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(getBackColor())
                .ignoresSafeArea()
            VStack {
                HStack {
                QuizMeter(numQuestions: quiz.numQuestions(), currentAnswered: numAnsweredQuestions, numGoodAnswers: numGoodAnswers)
            //  Text(defaultSubjectTitle())
                Text("Comment envoyer un e-mail")
                    .foregroundColor(getTextColor())
                    .font(.system(size: fontSize1))
                    .frame(width: 226, height: 80)
                    .padding(10)
                }
                ZStack {
                    if (questionIndex >= 0) {
                        VStack {
                            Text("Question n°\(questionIndex+1)")
                                .font(.system(size: fontSize2))
                                .foregroundColor(getTextColor())
                                .frame(width: 220, height: 40)
                                .padding(.top, 8)
                            Rectangle()
                                .foregroundColor(getContrastColor())
                                .frame(width: 300, height: 2)
                            Text(currentQuestion.label)
                                .fontWeight(.bold)
                                .font(.system(size: fontSize1))
                                .foregroundColor(getTextColor())
                                .frame(width: 300, height: 120)
                                .padding(.top, 8)
                            Rectangle()
                                .foregroundColor(getContrastColor())
                                .frame(width: 300, height: 2)
                            RadioGroupView(question: currentQuestion, selectedAnswer: $selectedAnswer, status: $status).padding(10)
                            ZStack {
                                Rectangle()
                                    .foregroundColor(getBackColor())
                                    .frame(width: 300, height: 60)
                                switch status {
                                case 3:
                                    WaitingAnimation(position: animPos, size: animSize)
                                case 4, 5:
                                    Text(answerEvaluation())
                                        .fontWeight(.bold)
                                        .font(.system(size: fontSize1))
                                    //    .foregroundColor(Color(isGoodAnswered() ? "HighLevel" : "VeryLowLevel"))
                                        .foregroundColor(getTextColor())
                                        .frame(width: 280, height: 40)
                                default:
                                    Text(String(""))
                                }
                            }
                        }
                    }
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(getContrastColor(), lineWidth: 2)
                        .frame(width: 350, height: 570)
                }.padding(12)
                if status < 5 {
                    Button(getButtonLabel(), action: { clickButton() })
                    .frame(width: 330, height: 40)
                    .padding(10)
                    .font(.system(size: fontSize1).bold())
                    .background(getBackColor(true))
                    .foregroundColor(getTextColor(true))
                    .cornerRadius(20)
                    .padding(.bottom, 50)
                } else {
                    HStack {
                        Button("Recommencer", action: { clickButton() })
                        .frame(width: 220, height: 40)
                        .padding(10)
                        .font(.system(size: fontSize1).bold())
                        .background(getBackColor(true))
                        .foregroundColor(getTextColor(true))
                        .cornerRadius(20)
                        Button("Sortir", action: { /* à définir*/ })
                        .frame(width: 80, height: 40)
                        .padding(10)
                        .font(.system(size: fontSize1).bold())
                        .background(getContrastColor(true))
                        .foregroundColor(getTextColor(true))
                        .cornerRadius(20)
                    }
                    .padding(.bottom, 50)
                }
            }
            ModalView(answer: questionIndex < 0 ? "" : currentQuestion.getGoodAnswer(), modal: $modal)
                .position(x: 195, y: modal ? 880 : 1200)
        }
//        .sheet(isPresented: $modal, content: {
//            ModalView(answer: questionIndex < 0 ? "" : currentQuestion.getGoodAnswer(), modal: $modal)
//        } )
    }

    func getButtonLabel() -> String {
        switch status {
        case 0:
            return "Commencer le quiz"
        case 1:
            return "Choisir une réponse"
        case 2:
            return "Valider"
        case 3:
            return "???"
        case 4:
            return "Question suivante"
        case 5:
            return "Recommencer le quiz"
        default:
            return ""
        }
    }

    func clickButton() {
        switch status {
        case 0:
            goToNextQuestion()  // affichage de la question 1
            return
        case 1:
            // inopérant tant que la réponse n'a pas été choisie
            return
        case 2:
            status = 3  // attente du résultat après validation
            Thread.sleep(forTimeInterval: 0.5)  // petite temporisation en attendant la mise en place de l'animation
            numAnsweredQuestions += 1
            if isGoodAnswered() {
                numGoodAnswers += 1
            } else {
                modal = true
            }
            if numAnsweredQuestions < quiz.numQuestions() {
                status = 4  // affichage du résultat
            } else {
                status = 5  // affichage du résultat
            }
            return
        case 4:
            goToNextQuestion()  // affichage de la question suivante
            return
        case 5: // réinitialisation du quiz
            currentQuestion = nilQuestion
            questionIndex = -1
            selectedAnswer = -1
            numAnsweredQuestions = 0
            numGoodAnswers = 0
            status = 5
            goToNextQuestion()  // affichage de la question 1
            return
        default:
            return
        }
    }

    func isGoodAnswered() -> Bool {
        return selectedAnswer == currentQuestion.goodAnswerIndex()
    }

    func answerEvaluation() -> String {
        if questionIndex == -1 {   /* --- */
            return " "
        } else if isGoodAnswered() {
            return "BONNE RÉPONSE"
        } else {
            return "MAUVAISE RÉPONSE"
        }
    }

/*    func currentQuestion() -> Question {
        return quiz.questionList[questionIndex]
    }
*/
    func goToNextQuestion() {
        selectedAnswer = -1
        questionIndex += 1
        currentQuestion = quiz.questionList[questionIndex]
        status = 1  // la question suivante est posée
    }

    func launchAnimation() {
        animationIsRunning = true
        animPos = 0
        animSize = minSize
        var delta: CGFloat = 0
        while animPos < numPoints {
            while animSize < maxSize {
                delta += 1
                animSize += delta
                Thread.sleep(forTimeInterval: 0.01)
            }
            while animSize > minSize {
                delta -= 1
                animSize -= delta
                Thread.sleep(forTimeInterval: 0.02)
            }
        }
        animationIsRunning = false
    }
}

struct QuizMeter: View {
    var numQuestions: Int
    var currentAnswered: Int
    var numGoodAnswers: Int

    let size: CGFloat = 80
    let width: CGFloat = 14
    let separators: Bool = true

    var body: some View {
        let progression = numQuestions > 0 ? Double(currentAnswered) / Double(numQuestions) : 0.0
        
        ZStack {
            Circle()
                .stroke(getContrastColor(), lineWidth: width)
            if currentAnswered > 0 { Text("\(numGoodAnswers) / \(currentAnswered)")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(getTextColor())
                Circle()
                    .rotation(.degrees(90))
                    .trim(from: 0, to: progression) .stroke(getLevelColor(), lineWidth: width-2)
            }
            if separators {
                ZStack {
                    ForEach(0 ..< numQuestions) { index in
                        Circle()
                            .rotation(.degrees(90))
                            .trim(from: Double(index) / Double(numQuestions), to: Double(index) / Double(numQuestions) + 0.006)
                            .stroke(getBackColor(), lineWidth: width)
                    }
                }
            }
        }.frame(width: size, height: size)
    }
    
    func getLevelColor() -> Color {
        if currentAnswered <= 0 {   // par sécurité
            return getContrastColor()
        }
        
        switch Double(numGoodAnswers) / Double(currentAnswered) {   // taux actuel de réussite
            case 0.0 ... 0.14 :
                return Color("VeryLowLevel")
            case 0.0 ... 0.28 :
                return Color("LowLevel")
            case 0.0 ... 0.42 :
                return Color("DownMiddleLevel")
            case 0.0 ... 0.58 :
                return Color("MiddleLevel")
            case 0.0 ... 0.72 :
                return Color("UpMiddleLevel")
            case 0.0 ... 0.86 :
                return Color("GoodLevel")
            default :
                return Color("HighLevel")
        }
    }
}

struct RadioGroupView: View {
    /*@Binding*/ var question: Question
    @Binding var selectedAnswer: Int
    @Binding var status: Int

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(getBackColor())
                .ignoresSafeArea()
            VStack {
                ForEach(0 ..< question.answerList.count) { index in
                    HStack {
                        RadioButton(index: index, isSelected: index == selectedAnswer, isVisible: question.answerList[index].proposition.count > 0)
                            .padding(.trailing, 10)
                        Text(question.answerList[index].proposition)
                            .foregroundColor(getTextColor())
                            .font(.system(size: fontSize2))
                            .frame(width: 260, height: 60, alignment: .leading)
                    }.onTapGesture {
                        if status < 3 {
                            selectedAnswer = index
                            status = 2
                        }
                    }
                }
            }
        }
    }
}

struct RadioButton: View {
    var index: Int
    var isSelected: Bool
    var isVisible: Bool

    let size : CGFloat = 36

    var body: some View {
        ZStack {
            Circle()
                .stroke(isVisible ? getContrastColor() : getBackColor(), lineWidth: 4)
                .frame(width: size, height: size)
            Circle()
                .foregroundColor(getBackColor(isVisible && isSelected))
                .frame(width: size-10, height: size-2)
        } .padding(10)
    }
}

struct WaitingAnimation: View {
    var position: Int
    var size: CGFloat

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(getBackColor())
                .frame(width: 240, height: size)
            HStack {
                ForEach(0 ..< numPoints) { index in
                    Circle()
                        .foregroundColor(index == position ? getContrastColor() : getBackColor())
                        .frame(width: size, height: size)
                        .padding(.trailing, distance)
                }
            }
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
    //    QuizView(subjectTitle: defaultSubjectTitle(), quiz: getRandomQuiz())
        QuizView(subjectTitle: "Comment envoyer un e-mail", quiz: testQuiz)
    }
}
