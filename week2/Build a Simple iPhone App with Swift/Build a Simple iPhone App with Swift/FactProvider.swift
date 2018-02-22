//
//  FactProvider.swift
//  Build a Simple iPhone App with Swift
//
//  Created by ABBY on 2018/2/22.
//  Copyright © 2018年 ABBY. All rights reserved.
//

import GameKit

struct FactProvider {
    let text = [
        "Loremipsumdolorsitamet,consecteturadipiscingelit.Maecenastempus.",
        "Contrarytopopularbelief,LoremIpsumisnotsimplyrandomtext.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "lookeduponeofthemoreobscureLatinwords,consectetur",
        "from a Lorem Ipsum passage, and going through the cites of the word",
        "Thisbookisatreatiseonthetheoryofethics,verypopularduringthe.",
        "ThefirstlineofLoremIpsum,Loremipsumdolorsitamet..",
        "ThestandardchunkofLoremIpsumusedsincethe1500sisreproduced.",
        "TherearemanyvariationsofpassagesofLoremIpsumavailable.",
        "but the majority have suffered alteration in some form"
    ]
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: text.count)
        return text[randomNumber]
    }
}
