//
//  PunjabiKeyboard.swift
//  TastyImitationKeyboard
//
//  Created by Kulpreet Chilana on 11/26/14.
//  Copyright (c) 2014 Apple. All rights reserved.
//

import Foundation

func addDottedCircle(character: String) -> String {
    let characterSet : NSSet = NSSet(array: ["ਁ","ਂ","ਃ","਼","ਾ","ੀ","ੁ","ੂ","ੇ","ੈ","ੋ","ੌ","੍","ੰ","ੱ","ੑ","ੵ"])
    if (character == "ਿ") {
        return character + "◌"
    }
    else if (characterSet.containsObject(character)) {
        return "◌" + character
    }
    return character
}

func punjabiKeyboard() -> Keyboard {
    var punjabiKeyboard = Keyboard()
    
    for key in [("ੌ","ਔ"),("ੈ","ਐ"),("ਾ","ਆ"),("ੀ","ਈ"),("ੂ","ਊ"),("ਬ","ਭ"),("ਹ","ਙ"),("ਗ","ਘ"),("ਦ","ਧ"),("ਜ","ਝ"),("ਡ","ਢ")] {
        var keyModel = Key(.Character)
        keyModel.lowercaseOutput = key.0
        keyModel.uppercaseOutput = key.1
        keyModel.lowercaseKeyCap = addDottedCircle(key.0)
        keyModel.uppercaseKeyCap = addDottedCircle(key.1)
        punjabiKeyboard.addKey(keyModel, row: 0, page: 0)
    }
    
    for key in [("ੋ","ਓ"),("ੇ","ਏ"),("੍","ਅ"),("ਿ","ਇ"),("ੁ","ਉ"),("ਪ","ਫ"),("ਰ","ੜ"),("ਕ","ਖ"),("ਤ","ਥ"),("ਚ","ਛ"),("ਟ","ਠ")] {
        var keyModel = Key(.Character)
        keyModel.lowercaseOutput = key.0
        keyModel.uppercaseOutput = key.1
        keyModel.lowercaseKeyCap = addDottedCircle(key.0)
        keyModel.uppercaseKeyCap = addDottedCircle(key.1)
        punjabiKeyboard.addKey(keyModel, row: 1, page: 0)
    }
    
    var keyModel = Key(.Shift)
    punjabiKeyboard.addKey(keyModel, row: 2, page: 0)
    
    for key in [("ਂ","ੰ"),("ੜ","ੱ"),("ਮ","ਣ"),("ਨ","ਫ਼"),("ਵ","ਜ਼"),("ਲ","ਲ਼"),("ਸ","ਸ਼"),("ਯ","ਞ")] {
        var keyModel = Key(.Character)
        keyModel.lowercaseOutput = key.0
        keyModel.uppercaseOutput = key.1
        keyModel.lowercaseKeyCap = addDottedCircle(key.0)
        keyModel.uppercaseKeyCap = addDottedCircle(key.1)
        punjabiKeyboard.addKey(keyModel, row: 2, page: 0)
    }
    
    
    var backspace = Key(.Backspace)
    punjabiKeyboard.addKey(backspace, row: 2, page: 0)
    
    var keyModeChangeNumbers = Key(.ModeChange)
    keyModeChangeNumbers.uppercaseKeyCap = "੧੨੩"
    keyModeChangeNumbers.toMode = 1
    punjabiKeyboard.addKey(keyModeChangeNumbers, row: 3, page: 0)
    
    var keyboardChange = Key(.KeyboardChange)
    punjabiKeyboard.addKey(keyboardChange, row: 3, page: 0)
    
    var space = Key(.Space)
    space.uppercaseKeyCap = "ਖਾਲੀ ਥਾਂ"
    space.uppercaseOutput = " "
    space.lowercaseOutput = " "
    punjabiKeyboard.addKey(space, row: 3, page: 0)
    
    var returnKey = Key(.Return)
    returnKey.uppercaseKeyCap = "ਅਗਲਾ"
    returnKey.uppercaseOutput = "\n"
    returnKey.lowercaseOutput = "\n"
    punjabiKeyboard.addKey(returnKey, row: 3, page: 0)
    
    for key in ["੧", "੨", "੩", "੪", "੫", "੬", "੭", "੮", "੯", "੦"] {
        var keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        punjabiKeyboard.addKey(keyModel, row: 0, page: 1)
    }
    
    //let currentLocale : NSLocale = NSLocale.currentLocale()
    //let currencySymbol : String = currentLocale[NSLocaleCurrencySymbol]
    
    for key in ["-", "/", ":", ";", "(", ")", "$", "&", "@", "\""] {
        var keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        punjabiKeyboard.addKey(keyModel, row: 1, page: 1)
    }
    
    var keyModeChangeSpecialCharacters = Key(.ModeChange)
    keyModeChangeSpecialCharacters.uppercaseKeyCap = "#+="
    keyModeChangeSpecialCharacters.toMode = 2
    punjabiKeyboard.addKey(keyModeChangeSpecialCharacters, row: 2, page: 1)
    
    for key in ["।",".", ",", "?", "!", "'"] {
        var keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        punjabiKeyboard.addKey(keyModel, row: 2, page: 1)
    }
    
    punjabiKeyboard.addKey(Key(backspace), row: 2, page: 1)
    
    var keyModeChangeLetters = Key(.ModeChange)
    keyModeChangeLetters.uppercaseKeyCap = "ੳਅੲ"
    keyModeChangeLetters.toMode = 0
    punjabiKeyboard.addKey(keyModeChangeLetters, row: 3, page: 1)
    
    punjabiKeyboard.addKey(Key(keyboardChange), row: 3, page: 1)
    
    punjabiKeyboard.addKey(Key(space), row: 3, page: 1)
    
    punjabiKeyboard.addKey(Key(returnKey), row: 3, page: 1)
    
    for key in ["[", "]", "{", "}", "#", "%", "^", "*", "+", "="] {
        var keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        punjabiKeyboard.addKey(keyModel, row: 0, page: 2)
    }
    
    for key in ["_", "\\", "|", "~", "<", ">", "€", "£", "¥", "•"] {
        var keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        punjabiKeyboard.addKey(keyModel, row: 1, page: 2)
    }
    
    punjabiKeyboard.addKey(Key(keyModeChangeNumbers), row: 2, page: 2)
    
    for key in ["॥",".", ",", "?", "!", "'"] {
        var keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        punjabiKeyboard.addKey(keyModel, row: 2, page: 2)
    }
    
    punjabiKeyboard.addKey(Key(backspace), row: 2, page: 2)
    
    punjabiKeyboard.addKey(Key(keyModeChangeLetters), row: 3, page: 2)
    
    punjabiKeyboard.addKey(Key(keyboardChange), row: 3, page: 2)
    
    punjabiKeyboard.addKey(Key(space), row: 3, page: 2)
    
    punjabiKeyboard.addKey(Key(returnKey), row: 3, page: 2)
    
    return punjabiKeyboard
}