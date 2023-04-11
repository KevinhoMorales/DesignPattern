//
//  ViewController.swift
//  DesignPattern
//
//  Created by Kevin Morales on 8/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        testFactoryMethod()
//        testAbstractFactory()
//        testBuilder()
//        testPrototype()
//        testSingleton()
        /////////////////////////
//        testChainOfResponsability()
//        testCommand()
//        testIterator()
//        testMediator()
//        testMemento()
//        testObserver()
//        testState()
        testInterpreter()
        /////////////////////////
    }

    // MARK: - CREATIONAL
    private func testFactoryMethod() {
        let payment = PaymentFactory.buildPayment(paymentType: .stripe)
        showLabel.text = payment.doPayment()
    }
    
    private func testAbstractFactory() {
        PaymentMethodClient.codigoCliente(factory: MonthlyAppleFactory())
        PaymentMethodClient.codigoCliente(factory: PaymentAdvancedCardFactory())
    }

    private func testBuilder() {
        let card = Card.CardBuilder()
            .cardType(cardType: "VISA")
            .number(number: "1111 2222 3333 4444")
            .expired(expired: 2030)
            .securityCode(securityCode: 773)
            .build()
        showLabel.text = card.showCard()
    }
    
    private func testPrototype() {
        let original = VisaCard(cardNumer: 1111, cardType: "Credit")
        guard let copy = original.copy() as? VisaCard else { return }
        showLabel.text = "\(original.cardNumber)\n\n\(copy.cardNumber)"
    }
    
    private func testSingleton() {
        let text = CardSingleton.shared.doSomething()
        let text2 = CardSingleton.shared.doSomething()
        let isEqual = text == text2
        showLabel.text = isEqual ? "Singleton!" : "Doesn't work!"
    }
    
    // MARK: - BEHAVIORAL
    private func testChainOfResponsability() {
        let bank = BankHandler()
        bank.creditCardRequest(totalLoan: 75000)
    }
    
    private func testCommand() {
        let creditCard = CreditCardReciver()
        let invoker = CreditCardInvoker()
        invoker.setCommand(command: CreditCardActivateCommand(creditCardReceiver: creditCard))
        invoker.run()
        invoker.setCommand(command: CreditCardDesactiveCommand(creditCardReceiver: creditCard))
        invoker.run()
    }
    
    private func testIterator() {
        let myCards = CreditCardsCollection()
        myCards.append(CreditCard(type: "Gold"))
        myCards.append(CreditCard(type: "Platinium"))
        myCards.append(CreditCard(type: "Black"))
        myCards.forEach { card in
            print(card.type)
        }
    }
    
    private func testMediator() {
        let mediator = ConcreteMediator()
        let firstUser = ConcreteColleagueFirst(mediator: mediator)
        let secondUser = ConcreteColleagueSecond(mediator: mediator)
        mediator.setFirstColleague(firstColleague: firstUser)
        mediator.setSecondColleague(secondColleague: secondUser)
        firstUser.send(message: "Hi dude!")
        secondUser.send(message: "Hi bro!")
    }
    
    private func testMemento() {
        let carataker = Carataker()
        var article = ArticleOriginator(id: 1, title: "Memento", text: "Hi my name is Kev")
        carataker.addMemento(memento: article.createMemento())
        article.text = "Hi my name is Kevin Morales"
        print(article.text)
        carataker.addMemento(memento: article.createMemento())
        let firstMemento = carataker.getMemento(index: 0)
        let secondMemento = carataker.getMemento(index: 1)
        article.restore(memento: firstMemento)
        print(article.text)
        article.restore(memento: secondMemento)
        print(article.text)
        
    }
    
    private func testObserver() {
        let car = Car()
        let pedestrian = Pedestrian()
        var trafficLight = TrafficLight(status: "CAR_GREEN")
        let messagePublisher = MessagePublisher()
        messagePublisher.attach(o: car)
        messagePublisher.attach(o: pedestrian)
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
        sleep(2)
        trafficLight.status = "CAR_RED"
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
        sleep(2)
        trafficLight.status = "CAR_GREEN"
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
    }
    
    private func testState() {
        let context = MobileAlertStateContext()
        context.alert()
        context.alert()
        sleep(2)
        context.setState(state: Vibration())
        context.alert()
        context.alert()
        sleep(2)
        context.setState(state: Silent())
        context.alert()
        context.alert()
    }
    
    private func testInterpreter() {
        
    }
    
    // MARK: - BEHAVIORAL
}

