//
//  File.swift
//  ContactList
//
//  Created by Kazakov Danil on 18.10.2022.
//



class DataStore {

    static let shared = DataStore()
    
    var names = ["Danil", "Kirill", "Yuri", "Anton", "Sweety", "Big"].shuffled()
    var surnames = ["Kazakov", "Gazmanov", "Boyka", "Pimp", "Cherry", "Swifty"].shuffled()
    var phoneNumbers = ["+7-913-777-33-22", "+7-953-723-21-22", "+7-996-721-22-11",
                        "+7-932-111-22-11", "+7-999-721-22-11", "+7-983-721-22-11"].shuffled()
    var emails = ["What@mail.ru", "AndroidIsNotOkay@gmail.com", "LikeStrip@mail.ru", "BarmenMSK@mail.ru",
                  "GangoUnchained@mail.ru", "QuentinTarantino@mail.ru"].shuffled()
}
