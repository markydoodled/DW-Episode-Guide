//
//  iOS_Widget_Extension.swift
//  iOS Widget Extension
//
//  Created by Mark Howard on 28/08/2022.
//

import WidgetKit
import SwiftUI
import Intents

//Select Widget

struct Provider: IntentTimelineProvider {
    func episode(for configuration: ConfigurationIntent) -> String {
        switch configuration.selectEpisode {
        case .anunearthlychild:
            return "1"
        case .thedaleks:
            return "2"
        case .theedgeofdestruction:
            return "3"
        case .marcopolo:
            return "4"
        case .thekeysofmarinus:
            return "5"
        case .theaztecs:
            return "6"
        case .thesensorites:
            return "7"
        case .thereignofterror:
            return "8"
        case .planetofgiants:
            return "9"
        case .thedalekinvasionofearth:
            return "10"
        case .therescue:
            return "11"
        case .theromans:
            return "12"
        case .thewebplanet:
            return "13"
        case .thecrusade:
            return "14"
        case .thespacemuseum:
            return "15"
        case .thechase:
            return "16"
        case .thetimemeddler:
            return "17"
        case .galaxy4:
            return "18"
        case .missiontotheunknown:
            return "19"
        case .themythmakers:
            return "20"
        case .thedaleksmasterplan:
            return "21"
        case .themassacre:
            return "22"
        case .theark:
            return "23"
        case .thecelestialtoymaker:
            return "24"
        case .thegunfighters:
            return "25"
        case .thesavages:
            return "26"
        case .thewarmachines:
            return "27"
        case .thesmugglers:
            return "28"
        case .thetenthplanet:
            return "29"
        case .thepowerofthedaleks:
            return "30"
        case .thehighlanders:
            return "31"
        case .theunderwatermenace:
            return "32"
        case .themoonbase:
            return "33"
        case .themacraterror:
            return "34"
        case .thefacelessones:
            return "35"
        case .theevilofthedaleks:
            return "36"
        case .thetombofthecybermen:
            return "37"
        case .theabominablesnowmen:
            return "38"
        case .theicewarriors:
            return "39"
        case .theenemyoftheworld:
            return "40"
        case .theweboffear:
            return "41"
        case .furyfromthedeep:
            return "42"
        case .thewheelinspace:
            return "43"
        case .thedominators:
            return "44"
        case .themindrobber:
            return "45"
        case .theinvasion:
            return "46"
        case .thekrotons:
            return "47"
        case .theseedsofdeath:
            return "48"
        case .thespacepirates:
            return "49"
        case .thewargames:
            return "50"
        case .spearheadfromspace:
            return "51"
        case .andthesilurians:
            return "52"
        case .theambassadorsofdeath:
            return "53"
        case .inferno:
            return "54"
        case .terroroftheautons:
            return "55"
        case .themindofevil:
            return "56"
        case .theclawsofaxos:
            return "57"
        case .colonyinspace:
            return "58"
        case .thedaemons:
            return "59"
        case .dayofthedaleks:
            return "60"
        case .thecurseofpeladon:
            return "61"
        case .theseadevils:
            return "62"
        case .themutants:
            return "63"
        case .thetimemonster:
            return "64"
        case .thethreedoctors:
            return "65"
        case .carnivalofmonsters:
            return "66"
        case .frontierinspace:
            return "67"
        case .planetofthedaleks:
            return "68"
        case .thegreendeath:
            return "69"
        case .thetimewarrior:
            return "70"
        case .invasionofthedinosaurs:
            return "71"
        case .deathtothedaleks:
            return "72"
        case .themonsterofpeladon:
            return "73"
        case .planetofthespiders:
            return "74"
        case .robot:
            return "75"
        case .thearkinspace:
            return "76"
        case .thesontaranexperiment:
            return "77"
        case .genesisofthedaleks:
            return "78"
        case .revengeofthecybermen:
            return "79"
        case .terrorofthezygons:
            return "80"
        case .planetofevil:
            return "81"
        case .pyramidsofmars:
            return "82"
        case .theandroidinvasion:
            return "83"
        case .thebrainofmorbius:
            return "84"
        case .theseedsofdoom:
            return "85"
        case .themasqueofmandragora:
            return "86"
        case .thehandoffear:
            return "87"
        case .thedeadlyassassin:
            return "88"
        case .thefaceofevil:
            return "89"
        case .therobotsofdeath:
            return "90"
        case .thetalonsofwengchiang:
            return "91"
        case .horroroffangrock:
            return "92"
        case .theinvisibleenemy:
            return "93"
        case .imageofthefendahl:
            return "94"
        case .thesunmakers:
            return "95"
        case .underworld:
            return "96"
        case .theinvasionoftime:
            return "97"
        case .theribosoperation:
            return "98"
        case .thepirateplanet:
            return "99"
        case .thestonesofblood:
            return "100"
        case .theandroidsoftara:
            return "101"
        case .thepowerofkroll:
            return "102"
        case .thearmageddonfactor:
            return "103"
        case .destinyofthedaleks:
            return "104"
        case .cityofdeath:
            return "105"
        case .thecreaturefromthepit:
            return "106"
        case .nightmareofeden:
            return "107"
        case .thehornsofnimon:
            return "108"
        case .shada:
            return "109"
        case .theleisurehive:
            return "110"
        case .meglos:
            return "111"
        case .fullcircle:
            return "112"
        case .stateofdecay:
            return "113"
        case .warriorsgate:
            return "114"
        case .thekeeperoftraken:
            return "115"
        case .logopolis:
            return "116"
        case .castrovalva:
            return "117"
        case .fourtodoomsday:
            return "118"
        case .kinda:
            return "119"
        case .thevisitation:
            return "120"
        case .blackorchid:
            return "121"
        case .earthshock:
            return "122"
        case .timeflight:
            return "123"
        case .arcofinfinity:
            return "124"
        case .snakedance:
            return "125"
        case .mawdrynundead:
            return "126"
        case .terminus:
            return "127"
        case .enlightenment:
            return "128"
        case .thekingsdemons:
            return "129"
        case .thefivedoctors:
            return "130"
        case .warriorsofthedeep:
            return "131"
        case .theawakening:
            return "132"
        case .frontios:
            return "133"
        case .resurrectionofthedaleks:
            return "134"
        case .planetoffire:
            return "135"
        case .thecavesofandrozani:
            return "136"
        case .thetwindilemma:
            return "137"
        case .attackofthecybermen:
            return "138"
        case .vengeanceonvaros:
            return "139"
        case .themarkoftherani:
            return "140"
        case .thetwodoctors:
            return "141"
        case .timelash:
            return "142"
        case .revelationofthedaleks:
            return "143"
        case .themysteriousplanet:
            return "144"
        case .mindwarp:
            return "145"
        case .terrorofthevervoids:
            return "146"
        case .theultimatefoe:
            return "147"
        case .timeandtherani:
            return "148"
        case .paradisetowers:
            return "149"
        case .deltaandthebannermen:
            return "150"
        case .dragonfire:
            return "151"
        case .remembranceofthedaleks:
            return "152"
        case .thehappinesspatrol:
            return "153"
        case .silvernemesis:
            return "154"
        case .thegreatestshowinthegalaxy:
            return "155"
        case .battlefield:
            return "156"
        case .ghostlight:
            return "157"
        case .thecurseoffenric:
            return "158"
        case .survival:
            return "159"
        case .tvmovie:
            return "160"
        case .rose:
            return "161"
        case .theendoftheworld:
            return "162"
        case .theunquietdead:
            return "163"
        case .aliensoflondon:
            return "164"
        case .worldwarthree:
            return "165"
        case .dalek:
            return "166"
        case .thelonggame:
            return "167"
        case .fathersday:
            return "168"
        case .theemptychild:
            return "169"
        case .thedoctordances:
            return "170"
        case .boomtown:
            return "171"
        case .badwolf:
            return "172"
        case .thepartingoftheways:
            return "173"
        case .thechristmasinvasion:
            return "174"
        case .newearth:
            return "175"
        case .toothandclaw:
            return "176"
        case .schoolreunion:
            return "177"
        case .thegirlinthefireplace:
            return "178"
        case .riseofthecybermen:
            return "179"
        case .theageofsteel:
            return "180"
        case .theidiotslantern:
            return "181"
        case .theimpossibleplanet:
            return "182"
        case .thesatanpit:
            return "183"
        case .loveandmonsters:
            return "184"
        case .fearher:
            return "185"
        case .armyofghosts:
            return "186"
        case .doomsday:
            return "187"
        case .therunawaybride:
            return "188"
        case .smithandjones:
            return "189"
        case .theshakespearecode:
            return "190"
        case .gridlock:
            return "191"
        case .daleksinmanhattan:
            return "192"
        case .evolutionofthedaleks:
            return "193"
        case .thelazarusexperiment:
            return "194"
        case .e_42:
            return "195"
        case .humannature:
            return "196"
        case .thefamilyofblood:
            return "197"
        case .blink:
            return "198"
        case .utopia:
            return "199"
        case .thesoundofdrums:
            return "200"
        case .lastofthetimelords:
            return "201"
        case .voyageofthedamned:
            return "202"
        case .partnersincrime:
            return "203"
        case .thefiresinpompeii:
            return "204"
        case .planetoftheood:
            return "205"
        case .thesontaranstratagem:
            return "206"
        case .thepoisonsky:
            return "207"
        case .thedoctorsdaughter:
            return "208"
        case .theunicornandthewasp:
            return "209"
        case .silenceinthelibrary:
            return "210"
        case .forestofthedead:
            return "211"
        case .midnight:
            return "212"
        case .turnleft:
            return "213"
        case .thestolenearth:
            return "214"
        case .journeysend:
            return "215"
        case .thenextdoctor:
            return "216"
        case .planetofthedead:
            return "217"
        case .thewatersofmars:
            return "218"
        case .theendoftimepart1:
            return "219"
        case .theendoftimepart2:
            return "220"
        case .theeleventhhour:
            return "221"
        case .thebeastbelow:
            return "222"
        case .victoryofthedaleks:
            return "223"
        case .thetimeofangels:
            return "224"
        case .fleshandstone:
            return "225"
        case .thevampiresofvenice:
            return "226"
        case .amyschoice:
            return "227"
        case .thehungryearth:
            return "228"
        case .coldblood:
            return "229"
        case .vincentandthedoctor:
            return "230"
        case .thelodger:
            return "231"
        case .thepandoricaopens:
            return "232"
        case .thebigbang:
            return "233"
        case .achristmascarol:
            return "234"
        case .theimpossibleastronaut:
            return "235"
        case .dayofthemoon:
            return "236"
        case .thecurseoftheblackspot:
            return "237"
        case .thedoctorswife:
            return "238"
        case .therebelflesh:
            return "239"
        case .thealmostpeople:
            return "240"
        case .agoodmangoestowar:
            return "241"
        case .letskillhitler:
            return "242"
        case .nightterrors:
            return "243"
        case .thegirlwhowaited:
            return "244"
        case .thegodcomplex:
            return "245"
        case .closingtime:
            return "246"
        case .theweddingofriversong:
            return "247"
        case .thedoctorthewidowandthewardrobe:
            return "248"
        case .asylumofthedaleks:
            return "249"
        case .dinosaursonaspaceship:
            return "250"
        case .atowncalledmercy:
            return "251"
        case .thepowerofthree:
            return "252"
        case .theangelstakemanhattan:
            return "253"
        case .thesnowmen:
            return "254"
        case .thebellsofsaintjohn:
            return "255"
        case .theringsofakhaten:
            return "256"
        case .coldwar:
            return "257"
        case .hide:
            return "258"
        case .journeytothecentreofthetardis:
            return "259"
        case .thecrimsonhorror:
            return "260"
        case .nightmareinsilver:
            return "261"
        case .thenameofthedoctor:
            return "262"
        case .thedayofthedoctor:
            return "263"
        case .thetimeofthedoctor:
            return "264"
        case .deepbreath:
            return "265"
        case .intothedalek:
            return "266"
        case .robotofsherwood:
            return "267"
        case .listen:
            return "268"
        case .timeheist:
            return "269"
        case .thecaretaker:
            return "270"
        case .killthemoon:
            return "271"
        case .mummyontheorientexpress:
            return "272"
        case .flatline:
            return "273"
        case .intheforestofthenight:
            return "274"
        case .darkwater:
            return "275"
        case .deathinheaven:
            return "276"
        case .lastchristmas:
            return "277"
        case .themagiciansapprentice:
            return "278"
        case .thewitchsfamiliar:
            return "279"
        case .underthelake:
            return "280"
        case .beforetheflood:
            return "281"
        case .thegirlwhodied:
            return "282"
        case .thewomanwholived:
            return "283"
        case .thezygoninvasion:
            return "284"
        case .thezygoninversion:
            return "285"
        case .sleepnomore:
            return "286"
        case .facetheraven:
            return "287"
        case .heavensent:
            return "288"
        case .hellbent:
            return "289"
        case .thehusbandsofriversong:
            return "290"
        case .thereturnofdoctormysterio:
            return "291"
        case .thepilot:
            return "292"
        case .smile:
            return "293"
        case .thinice:
            return "294"
        case .knockknock:
            return "295"
        case .oxygen:
            return "296"
        case .extremis:
            return "297"
        case .thepyramidattheendoftheworld:
            return "298"
        case .thelieoftheland:
            return "299"
        case .empressofmars:
            return "300"
        case .theeatersoflight:
            return "301"
        case .worldenoughandtime:
            return "302"
        case .thedoctorfalls:
            return "303"
        case .twiceuponatime:
            return "304"
        case .thewomanwhofelltoearth:
            return "305"
        case .theghostmonument:
            return "306"
        case .rosa:
            return "307"
        case .arachnidsintheuk:
            return "308"
        case .thetsuranagaconundrum:
            return "309"
        case .demonsofthepunjab:
            return "310"
        case .kerblam:
            return "311"
        case .thewitchfinders:
            return "312"
        case .ittakesyouaway:
            return "313"
        case .thebattleofranskooravkolos:
            return "314"
        case .resolution:
            return "315"
        case .spyfallpart1:
            return "316"
        case .spyfallpart2:
            return "317"
        case .orphan55:
            return "318"
        case .nikolateslasnightofterror:
            return "319"
        case .fugitiveofthejudoon:
            return "320"
        case .praxeus:
            return "321"
        case .canyouhearme:
            return "322"
        case .thehauntingofvilladiodati:
            return "323"
        case .ascensionofthecybermen:
            return "324"
        case .thetimelesschildren:
            return "325"
        case .revolutionofthedaleks:
            return "326"
        case .thehalloweenapocalypse:
            return "327"
        case .warofthesontarans:
            return "328"
        case .onceupontime:
            return "329"
        case .villageoftheangels:
            return "330"
        case .survivorsoftheflux:
            return "331"
        case .thevanquishers:
            return "332"
        case .eveofthedaleks:
            return "333"
        case .legendoftheseadevils:
            return "334"
        default:
            return "1"
        }
    }
    func placeholder(in context: Context) -> SelectSimpleEntry {
        SelectSimpleEntry(date: Date(), configuration: ConfigurationIntent(), name: "An Unearthly Child", image: "AnUnearthlyChild", story: "1", writer: "Anthony Coburn", doctor: "1st Doctor", airDate: "23 November 1963", url: "dwepisode://anunearthlychild")
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SelectSimpleEntry) -> ()) {
        let entry = SelectSimpleEntry(date: Date(), configuration: configuration, name: "An Unearthly Child", image: "AnUnearthlyChild", story: "1", writer: "Anthony Coburn", doctor: "1st Doctor", airDate: "23 November 1963", url: "dwepisode://anunearthlychild")
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SelectSimpleEntry] = []
        let selectedEp = episode(for: configuration)
        // Generate a timeline consisting of 24 entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 24 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            var entry = SelectSimpleEntry(date: entryDate, configuration: configuration, name: "An Unearthly Child", image: "AnUnearthlyChild", story: "1", writer: "Anthony Coburn", doctor: "1st Doctor", airDate: "23 November 1963", url: "dwepisode://anunearthlychild")
            if selectedEp == "1" {
                entry.name = "An Unearthly Child"
                entry.image = "AnUnearthlyChild"
                entry.story = "1"
                entry.writer = "Anthony Coburn"
                entry.doctor = "1st Doctor"
                entry.airDate = "23 November 1963"
                entry.url = "dwepisode://anunearthlychild"
            } else if selectedEp == "2" {
                entry.name = "The Daleks"
                entry.image = "TheDaleks"
                entry.story = "2"
                entry.writer = "Terry Nation"
                entry.doctor = "1st Doctor"
                entry.airDate = "21 December 1963"
                entry.url = "dwepisode://thedaleks"
            } else if selectedEp == "3" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "4" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "5" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "6" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "7" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "8" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "9" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "10" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "11" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "12" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "13" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "14" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "15" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "16" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "17" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "18" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "19" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "20" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "21" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "22" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "23" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "24" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "25" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "26" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "27" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "28" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "29" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "30" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "31" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "32" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "33" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "34" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "35" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "36" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "37" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "38" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "39" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "40" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "41" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "42" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "43" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "44" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "45" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "46" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "47" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "48" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "49" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "50" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "51" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "52" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "53" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "54" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "55" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "56" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "57" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "58" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "59" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "60" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "61" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "62" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "63" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "64" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "65" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "66" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "67" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "68" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "69" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "70" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "71" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "72" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "73" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "74" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "75" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "76" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "77" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "78" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "79" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "80" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "81" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "82" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "83" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "84" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "85" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "86" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "87" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "88" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "89" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "90" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "91" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "92" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "93" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "94" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "95" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "96" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "97" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "98" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "99" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "100" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "101" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "102" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "103" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "104" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "105" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "106" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "107" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "108" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "109" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "110" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "111" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "112" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "113" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "114" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "115" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "116" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "117" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "118" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "119" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "120" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "121" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "122" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "123" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "124" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "125" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "126" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "127" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "128" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "129" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "130" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "131" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "132" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "133" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "134" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "135" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "136" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "137" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "138" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "139" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "140" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "141" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "142" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "143" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "144" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "145" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "146" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "147" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "148" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "149" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "150" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "151" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "152" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "153" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "154" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "155" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "156" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "157" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "158" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "159" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "160" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "161" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "162" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "163" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "164" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "165" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "166" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "167" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "168" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "169" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "170" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "171" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "172" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "173" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "174" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "175" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "176" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "177" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "178" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "179" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "180" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "181" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "182" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "183" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "184" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "185" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "186" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "187" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "188" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "189" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "190" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "191" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "192" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "193" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "194" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "195" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "196" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "197" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "198" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "199" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "200" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "201" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "202" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "203" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "204" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "205" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "206" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "207" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "208" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "209" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "210" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "211" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "212" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "213" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "214" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "215" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "216" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "217" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "218" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "219" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "220" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "221" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "222" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "223" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "224" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "225" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "226" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "227" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "228" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "229" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "230" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "231" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "232" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "233" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "234" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "235" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "236" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "237" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "238" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "239" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "240" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "241" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "242" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "243" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "244" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "245" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "246" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "247" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "248" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "249" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "250" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "251" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "252" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "253" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "254" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "255" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "256" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "257" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "258" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "259" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "260" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "261" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "262" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "263" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "264" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "265" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "266" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "267" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "268" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "269" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "270" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "271" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "272" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "273" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "274" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "275" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "276" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "277" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "278" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "279" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "280" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "281" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "282" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "283" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "284" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "285" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "286" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "287" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "288" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "289" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "290" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "291" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "292" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "293" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "294" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "295" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "296" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "297" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "298" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "299" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "300" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "301" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "302" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "303" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "304" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "305" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "306" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "307" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "308" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "309" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "310" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "311" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "312" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "313" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "314" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "315" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "316" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "317" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "318" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "319" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "320" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "321" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "322" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "323" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "324" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "325" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "326" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "327" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "328" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "329" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "330" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "331" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "332" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "333" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            } else if selectedEp == "334" {
                entry.name = ""
                entry.image = ""
                entry.story = ""
                entry.writer = ""
                entry.doctor = ""
                entry.airDate = ""
                entry.url = ""
            }
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SelectSimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    var name: String
    var image: String
    var story: String
    var writer: String
    var doctor: String
    var airDate: String
    var url: String
}

struct iOS_Widget_ExtensionEntryView : View {
    var entry: Provider.Entry
    @Environment(\.widgetFamily) var family: WidgetFamily
    var body: some View {
        switch family {
        case .systemSmall:
            ZStack {
                Rectangle()
                    .foregroundColor(.accentColor)
                VStack {
                Image(entry.image)
                    .resizable()
                    .frame(width: 150, height: 110, alignment: .center)
                    .cornerRadius(8)
                VStack(alignment: .leading) {
                    Text(entry.name)
                        .lineLimit(1)
                        .font(.system(size: 14, weight: .semibold, design: .default))
                        .foregroundColor(.white)
                        .padding([.bottom])
                        }
                    }
        }
            .widgetURL(URL(string: entry.url)!)
        case .systemMedium:
            Text(entry.name)
        case .systemLarge:
            Text(entry.name)
        case .systemExtraLarge:
            Text(entry.name)
        @unknown default:
            Text("Unknown Widget Size")
        }
    }
}

struct iOS_Widget_Extension_Select: Widget {
    let kind: String = "iOS_Widget_Extension_Select"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            iOS_Widget_ExtensionEntryView(entry: entry)
        }
        .configurationDisplayName("User-Selected Episode")
        .description("This Widget Will Show Only The Episode That The User Selects.")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge, .systemExtraLarge])
    }
}

//Main Widget

@main
struct iOS_Widget_Extension_Widgets: WidgetBundle {
    var body: some Widget {
        iOS_Widget_Extension_Select()
    }
}

struct iOS_Widget_Extension_Previews: PreviewProvider {
    static var previews: some View {
        iOS_Widget_ExtensionEntryView(entry: SelectSimpleEntry(date: Date(), configuration: ConfigurationIntent(), name: "An Unearthly Child", image: "AnUnearthlyChild", story: "1", writer: "Anthony Coburn", doctor: "1st Doctor", airDate: "23 November 1963", url: "dwepisode://anunearthlychild"))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
