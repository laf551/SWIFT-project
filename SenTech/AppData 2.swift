//
//  AppData.swift
//  SenTech
//
//  Created by Apprenant66 on 21/09/2022.
//

import SwiftUI

struct Answer {
    let proposition: String
    let isCorrect: Bool
}

struct Question {
    let label: String
    var answerList: [Answer]

    func goodAnswerIndex() -> Int {
        var index = 0
        while index < answerList.count {
            if answerList[index].isCorrect {
                return index
            }
            index += 1
        }
        return -1 // aucune bonne réponse
    }

    func getGoodAnswer() -> String {
        let index = goodAnswerIndex()
        return index >= 0 ? answerList[index].proposition : ""
    }
}

struct Quiz {
    var questionList: [Question] = []

    func numQuestions() -> Int { return questionList.count }
}

struct TutoPart {
    let image: String
    let description: String
}

struct Subject: Identifiable {
    let id = UUID()
    let label : String
    let thumbnail : String
    var tuto: [TutoPart] = []
    let quiz: Quiz
}

struct Category: Identifiable {
    let id = UUID()
    let name: String
    var subjectList: [Subject] = []
}

struct Data {
    var categoryList: [Category] = []
    
    init(random: Bool = false) {
        var numCategories = 0, categoryIndex = 0
        var numSubjects = 0, subjectIndex = 0
        var numParts = 0, partIndex = 0
        var numQuestions = 0, questionIndex = 0
        var numAnswers = 0, answerIndex = 0, correctIndex = 0
        var subjects: [Subject] = []
        var tutoParts: [TutoPart] = []
        var questions: [Question] = []
        var answers: [Answer] = []
        
        if random {
            numCategories = Int.random(in: 5...12)
            while categoryIndex < numCategories {
                // génération des catégories
                numSubjects = Int.random(in: 3...12)
                while subjectIndex < numSubjects {
                    // génération des sujets
                    numQuestions = Int.random(in: 6...14)
                    while questionIndex < numQuestions {
                        // génération des questions
                        correctIndex = Int.random(in: 0..<numAnswers)
                        numAnswers = Int.random(in: 2...5)
                        while answerIndex < numAnswers {
                            // génération des réponses
                            answers.append(Answer(proposition: "Réponse \(categoryIndex+1).\(subjectIndex+1).\(questionIndex+1).\(answerIndex+1)", isCorrect: answerIndex==correctIndex))
                            answerIndex += 1
                        }
                        questions.append(Question(label: "Question \(categoryIndex+1).\(subjectIndex+1).\(questionIndex+1)", answerList: answers))
                        answers.removeAll()
                        answerIndex = 0
                        questionIndex += 1
                    }
                    while partIndex < numParts {
                        // génération du tuto (partie par partie)
                        tutoParts.append(TutoPart(image: "Unknown", description: "Contenu du tuto \(categoryIndex+1).\(subjectIndex+1) (partie \(partIndex+1))"))
                        partIndex += 1
                    }
                    subjects.append(Subject(label: "Sujet \(categoryIndex+1).\(subjectIndex+1)", thumbnail: "Unknown", tuto: tutoParts, quiz: Quiz(questionList: questions)))
                    questions.removeAll()
                    questionIndex = 0
                    tutoParts.removeAll()
                    partIndex = 0
                    subjectIndex += 1
                }
                categoryList.append(Category(name: "Thème \(categoryIndex+1)", subjectList: subjects))
                subjects.removeAll()
                subjectIndex = 0
                categoryIndex += 1
            }
        } else {
            categoryList.append(Category(name: "Administratif"))
            categoryList.append(Category(name: "Bureautique"))
            categoryList.append(Category(name: "Réseaux sociaux"))
            categoryList.append(Category(name: "Loisirs"))
            categoryList.append(Category(name: "Internet"))
            categoryList.append(Category(name: "Glossaire"))
            categoryList.append(Category(name: "Thème 7"))
            categoryList.append(Category(name: "Thème 8"))
            categoryList.append(Category(name: "Thème 9"))
            categoryList.append(Category(name: "Thème 10"))
        }
    }

    mutating func initFromAsset() {
        
    }

    mutating func manualInit() {
        
    }
}

//------------------------//

//  Exemple de quiz (pour le test)
var testQuiz = Quiz(questionList: [question1, question3, question5, question6, question7, question8, question9, question10, question11, question12])
//  Question 1
var question1 = Question(label: "Qu'est-ce que la messagerie électronique ?", answerList: [Answer(proposition: "un service de transmission de la Poste pour acheminer le courrier", isCorrect: false), Answer(proposition: "un service de transmission de messages par Internet dans une boîte aux lettres", isCorrect: true), Answer(proposition: "une société fabriquant des cartes électroniques pour crypter les messages", isCorrect: false), Answer(proposition: "", isCorrect: false)])
//  Question 2
var question2 = Question(label: "Puis-je avoir plusieurs adresses de messagerie ?", answerList: [Answer(proposition: "oui", isCorrect: true), Answer(proposition: "", isCorrect: false), Answer(proposition: "non", isCorrect: false), Answer(proposition: "", isCorrect: false)])
//  Question 3
var question3 = Question(label: "Quelle adresse e-mail est correcte ?", answerList: [Answer(proposition: "melanie.cheval&gmail.com", isCorrect: false), Answer(proposition: "jacques.celere@laposte.net", isCorrect: true), Answer(proposition: "françois.valerian@orange", isCorrect: false), Answer(proposition: "bob-morane.yahoo.fr", isCorrect: false)])
//  Question 4
var question4 = Question(label: "Lequel de ces logiciels n'est pas un client de messagerie ?", answerList: [Answer(proposition: "Outlook", isCorrect: false), Answer(proposition: "Gmail", isCorrect: false), Answer(proposition: "Thunderbird", isCorrect: true), Answer(proposition: "Windows Mail", isCorrect: false)])
//  Question 5
var question5 = Question(label: "Pour aller sur Gmail, je tape dans la barre d'adresse du navigateur:", answerList: [Answer(proposition: "mail.google.com ou gmail.com", isCorrect: true), Answer(proposition: "google.message.com", isCorrect: false), Answer(proposition: "gmail.fr ou googlemail.fr", isCorrect: false), Answer(proposition: "", isCorrect: false)])
//  Question 6
var question6 = Question(label: "Sur quel bouton de la barre d'outils cliquer pour écrire un mail ?", answerList: [Answer(proposition: "\"courrier indésirable\"", isCorrect: false), Answer(proposition: "\"répondre\"", isCorrect: false), Answer(proposition: "\"nouveau\"", isCorrect: true), Answer(proposition: "\"supprimer\"", isCorrect: false)])
//  Question 7
var question7 = Question(label: "Qu'est-ce qu'un Spam ?", answerList: [Answer(proposition: "une contraction musculaire involontaire", isCorrect: false), Answer(proposition: "un courrier indésirable, généralement publicitaire", isCorrect: true), Answer(proposition: "un courrier important et très attendu", isCorrect: false), Answer(proposition: "", isCorrect: false)])
//  Question 8
var question8 = Question(label: "Que doit faire Marc pour informer Christian du contenu d'un e-mail qu'il a reçu de Dominique ?", answerList: [Answer(proposition: "répondre à tous", isCorrect: false), Answer(proposition: "diffuser", isCorrect: false), Answer(proposition: "transférer", isCorrect: true), Answer(proposition: "", isCorrect: false)])
//  Question 9
var question9 = Question(label: "Comment suis-je informé qu'un message contient une pièce jointe ?", answerList: [Answer(proposition: "une icône de trombone apparait sur la ligne du message", isCorrect: true), Answer(proposition: "une trompette est affichée sur la ligne du message", isCorrect: false), Answer(proposition: "le message apparait en gras", isCorrect: false), Answer(proposition: "", isCorrect: false)])
//  Question 10
var question10 = Question(label: "Lorsque vous mettez certains destinataires en CC:", answerList: [Answer(proposition: "le message est crypté", isCorrect: false), Answer(proposition: "leur adresse de messagerie est cachée", isCorrect: false), Answer(proposition: "ils ne peuvent pas voir le message", isCorrect: false), Answer(proposition: "ils seront simplement en copie du message", isCorrect: true)])
//  Question 11
var question11 = Question(label: "A quoi servent les dossiers de messagerie ?", answerList: [Answer(proposition: "à ranger les courriers indésirables", isCorrect: false), Answer(proposition: "à classer ses messages électroniques", isCorrect: true), Answer(proposition: "à stocker les pièces jointes des messages reçus", isCorrect: false), Answer(proposition: "", isCorrect: false)])
//  Question 12
var question12 = Question(label: "Qu'est-ce que le Webmail ?", answerList: [Answer(proposition: "l'accès aux e-mails à l'aide d'un navigateur depuis n'importe quel ordinateur", isCorrect: true), Answer(proposition: "un client de messagerie que vous installez sur votre ordinateur pour accéder à vos e-mails", isCorrect: false), Answer(proposition: "un logiciel qui permet de crypter les messages", isCorrect: false), Answer(proposition: "", isCorrect: false)])

//------------------------//

var sampleAnswers = [Answer(proposition: String("Proposition correcte"), isCorrect: true), Answer(proposition: String("Proposition inexacte"), isCorrect: false), Answer(proposition: String("Proposition erronée"), isCorrect: false), Answer(proposition: String("Proposition hors propos"), isCorrect: false)]

func shuffleSampleAnswers() -> [Answer] {
    sampleAnswers.shuffle()
    return sampleAnswers
}

var sampleQuestionLabels = [String("Pourriez-vous répondre à cette question ?"), String("Que répondez-vous à cette question ?"), String("Quel est votre choix de réponse ?"), String("Avez-vous une petite idée pour répondre ?"), String("Avez-vous trouvé la réponse ?"), String("De ces propositions, laquelle vous semble juste ?"), String("D'après vous, quelle est la bonne réponse ?"), String("Où se trouve la bonne réponse ?"), String("Quelle proposition est correcte ?"), String("Une proposition est correcte: laquelle ?"), String("Evitez les mauvaises réponses; que choisissez-vous ?"), String("Avez-vous deviné quoi répondre ?")]
let lastQuestionLabel = String("Avez-vous vu juste pour la dernière question ?")

func getRamdomQuestion(_ lastQuestion: Bool = false) -> Question {
    return Question(label: lastQuestion ? lastQuestionLabel : sampleQuestionLabels[Int.random(in: 0..<sampleQuestionLabels.count)], answerList: shuffleSampleAnswers())
}

func shuffleAnswers(question: Question) -> Question {
    var shuffled = question
    shuffled.answerList.shuffle()
    return shuffled
}

func getRandomQuiz() -> Quiz {
    var questions: [Question] = []
    let numQuestions = Int.random(in: 5...15)
    var index = 0
    
    while index < numQuestions {
        questions.append(getRamdomQuestion())
        index += 1
    }
    questions.append(getRamdomQuestion(true))
    return Quiz(questionList: questions)
}

func defaultSubjectTitle() -> String {
    return String("< libellé du sujet traité >")
}

//------------------------//

struct AppData: View {
    var body: some View {
        Text("PAGE DE TEST")
    }
}

struct AppData_Previews: PreviewProvider {
    static var previews: some View {
        AppData()
    }
}
