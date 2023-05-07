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
                entry.name = "The Edge Of Destruction"
                entry.image = "TheEdgeOfDestruction"
                entry.story = "3"
                entry.writer = "David Whitaker"
                entry.doctor = "1st Doctor"
                entry.airDate = "8 February 1964"
                entry.url = "dwepisode://theedgeofdestruction"
            } else if selectedEp == "4" {
                entry.name = "Marco Polo"
                entry.image = "MarcoPolo"
                entry.story = "4"
                entry.writer = "John Lucarotti"
                entry.doctor = "1st Doctor"
                entry.airDate = "22 February 1964"
                entry.url = "dwepisode://marcopolo"
            } else if selectedEp == "5" {
                entry.name = "The Keys Of Marinus"
                entry.image = "TheKeysOfMarinus"
                entry.story = "5"
                entry.writer = "Terry Nation"
                entry.doctor = "1st Doctor"
                entry.airDate = "11 April 1964"
                entry.url = "dwepisode://thekeysofmarinus"
            } else if selectedEp == "6" {
                entry.name = "The Aztecs"
                entry.image = "TheAztecs"
                entry.story = "6"
                entry.writer = "John Lucarotti"
                entry.doctor = "1st Doctor"
                entry.airDate = "23 May 1964"
                entry.url = "dwepisode://theaztecs"
            } else if selectedEp == "7" {
                entry.name = "The Sensorites"
                entry.image = "TheSensorites"
                entry.story = "7"
                entry.writer = "Peter R. Newman"
                entry.doctor = "1st Doctor"
                entry.airDate = "20 June 1964"
                entry.url = "dwepisode://thesensorites"
            } else if selectedEp == "8" {
                entry.name = "The Reign Of Terror"
                entry.image = "TheReignOfTerror"
                entry.story = "8"
                entry.writer = "Dennis Spooner"
                entry.doctor = "1st Doctor"
                entry.airDate = "8 August 1964"
                entry.url = "dwepisode://thereignofterror"
            } else if selectedEp == "9" {
                entry.name = "Planet Of Giants"
                entry.image = "PlanetOfGiants"
                entry.story = "9"
                entry.writer = "Louis Marks"
                entry.doctor = "1st Doctor"
                entry.airDate = "31 October 1964"
                entry.url = "dwepisode://planetofgiants"
            } else if selectedEp == "10" {
                entry.name = "The Dalek Invasion Of Earth"
                entry.image = "TheDalekInvasionOfEarth"
                entry.story = "10"
                entry.writer = "Terry Nation"
                entry.doctor = "1st Doctor"
                entry.airDate = "21 November 1964"
                entry.url = "dwepisode://thedalekinvasionofearth"
            } else if selectedEp == "11" {
                entry.name = "The Rescue"
                entry.image = "TheRescue"
                entry.story = "11"
                entry.writer = "David Whitaker"
                entry.doctor = "1st Doctor"
                entry.airDate = "2 January 1965"
                entry.url = "dwepisode://therescue"
            } else if selectedEp == "12" {
                entry.name = "The Romans"
                entry.image = "TheRomans"
                entry.story = "12"
                entry.writer = "Dennis Spooner"
                entry.doctor = "1st Doctor"
                entry.airDate = "16 January 1965"
                entry.url = "dwepisode://theromans"
            } else if selectedEp == "13" {
                entry.name = "The Web Planet"
                entry.image = "TheWebPlanet"
                entry.story = "13"
                entry.writer = "Bill Strutton"
                entry.doctor = "1st Doctor"
                entry.airDate = "13 February 1965"
                entry.url = "dwepisode://thewebplanet"
            } else if selectedEp == "14" {
                entry.name = "The Crusade"
                entry.image = "TheCrusade"
                entry.story = "14"
                entry.writer = "David Whitaker"
                entry.doctor = "1st Doctor"
                entry.airDate = "27 March 1965"
                entry.url = "dwepisode://thecrusade"
            } else if selectedEp == "15" {
                entry.name = "The Space Museum"
                entry.image = "TheSpaceMuseum"
                entry.story = "15"
                entry.writer = "Glyn Jones"
                entry.doctor = "1st Doctor"
                entry.airDate = "24 April 1965"
                entry.url = "dwepisode://thespacemuseum"
            } else if selectedEp == "16" {
                entry.name = "The Chase"
                entry.image = "TheChase"
                entry.story = "16"
                entry.writer = "Terry Nation"
                entry.doctor = "1st Doctor"
                entry.airDate = "22 May 1965"
                entry.url = "dwepisode://thechase"
            } else if selectedEp == "17" {
                entry.name = "The Time Meddler"
                entry.image = "TheTimeMeddler"
                entry.story = "17"
                entry.writer = "Dennis Spooner"
                entry.doctor = "1st Doctor"
                entry.airDate = "3 July 1965"
                entry.url = "dwepisode://thetimemeddler"
            } else if selectedEp == "18" {
                entry.name = "Galaxy 4"
                entry.image = "Galaxy4"
                entry.story = "18"
                entry.writer = "William Emms"
                entry.doctor = "1st Doctor"
                entry.airDate = "11 September 1965"
                entry.url = "dwepisode://galaxy4"
            } else if selectedEp == "19" {
                entry.name = "Mission To The Unknown"
                entry.image = "MissionToTheUnknown"
                entry.story = "19"
                entry.writer = "Terry Nation"
                entry.doctor = "1st Doctor"
                entry.airDate = "9 October 1965"
                entry.url = "dwepisode://missiontotheunknown"
            } else if selectedEp == "20" {
                entry.name = "The Myth Makers"
                entry.image = "TheMythMakers"
                entry.story = "20"
                entry.writer = "Donald Cotton"
                entry.doctor = "1st Doctor"
                entry.airDate = "16 October 1965"
                entry.url = "dwepisode://themythmakers"
            } else if selectedEp == "21" {
                entry.name = "The Daleks' Master Plan"
                entry.image = "TheDaleksMasterPlan"
                entry.story = "21"
                entry.writer = "Terry Nation And Dennis Spooner"
                entry.doctor = "1st Doctor"
                entry.airDate = "13 November 1965"
                entry.url = "dwepisode://thedaleksmasterplan"
            } else if selectedEp == "22" {
                entry.name = "The Massacre"
                entry.image = "TheMassacre"
                entry.story = "22"
                entry.writer = "John Lucarotti And Donald Tosh"
                entry.doctor = "1st Doctor"
                entry.airDate = "5 February 1966"
                entry.url = "dwepisode://themassacre"
            } else if selectedEp == "23" {
                entry.name = "The Ark"
                entry.image = "TheArk"
                entry.story = "23"
                entry.writer = "Paul Erickson And Lesley Scott"
                entry.doctor = "1st Doctor"
                entry.airDate = "5 March 1966"
                entry.url = "dwepisode://theark"
            } else if selectedEp == "24" {
                entry.name = "The Celestial Toymaker"
                entry.image = "TheCelestialToymaker"
                entry.story = "24"
                entry.writer = "Brian Hayles"
                entry.doctor = "1st Doctor"
                entry.airDate = "2 April 1966"
                entry.url = "dwepisode://thecelestialtoymaker"
            } else if selectedEp == "25" {
                entry.name = "The Gunfighters"
                entry.image = "TheGunfighters"
                entry.story = "25"
                entry.writer = "Donald Cotton"
                entry.doctor = "1st Doctor"
                entry.airDate = "30 April 1966"
                entry.url = "dwepisode://thegunfighters"
            } else if selectedEp == "26" {
                entry.name = "The Savages"
                entry.image = "TheSavages"
                entry.story = "26"
                entry.writer = "Ian Stuart Black"
                entry.doctor = "1st Doctor"
                entry.airDate = "28 May 1966"
                entry.url = "dwepisode://thesavages"
            } else if selectedEp == "27" {
                entry.name = "The War Machines"
                entry.image = "TheWarMachines"
                entry.story = "27"
                entry.writer = "Ian Stuart Black And Kit Pedler"
                entry.doctor = "1st Doctor"
                entry.airDate = "25 June 1966"
                entry.url = "dwepisode://thewarmachines"
            } else if selectedEp == "28" {
                entry.name = "The Smugglers"
                entry.image = "TheSmugglers"
                entry.story = "28"
                entry.writer = "Brian Hayles"
                entry.doctor = "1st Doctor"
                entry.airDate = "10 September 1966"
                entry.url = "dwepisode://thesmugglers"
            } else if selectedEp == "29" {
                entry.name = "The Tenth Planet"
                entry.image = "TheTenthPlanet"
                entry.story = "29"
                entry.writer = "Kit Pedler And Gerry Davis"
                entry.doctor = "1st Doctor"
                entry.airDate = "8 October 1966"
                entry.url = "dwepisode://thetenthplanet"
            } else if selectedEp == "30" {
                entry.name = "The Power Of The Daleks"
                entry.image = "ThePowerOfTheDaleks"
                entry.story = "30"
                entry.writer = "David Whitaker"
                entry.doctor = "2nd Doctor"
                entry.airDate = "5 November 1966"
                entry.url = "dwepisode://thepowerofthedaleks"
            } else if selectedEp == "31" {
                entry.name = "The Highlanders"
                entry.image = "TheHighlanders"
                entry.story = "31"
                entry.writer = "Elwyn Jones And Gerry Davis"
                entry.doctor = "2nd Doctor"
                entry.airDate = "17 December 1966"
                entry.url = "dwepisode://thehighlanders"
            } else if selectedEp == "32" {
                entry.name = "The Underwater Menace"
                entry.image = "TheUnderwaterMenace"
                entry.story = "32"
                entry.writer = "Geoffrey Orme"
                entry.doctor = "2nd Doctor"
                entry.airDate = "14 January 1967"
                entry.url = "dwepisode://theunderwatermenace"
            } else if selectedEp == "33" {
                entry.name = "The Moonbase"
                entry.image = "TheMoonbase"
                entry.story = "33"
                entry.writer = "Kit Pedler"
                entry.doctor = "2nd Doctor"
                entry.airDate = "11 February 1967"
                entry.url = "dwepisode://themoonbase"
            } else if selectedEp == "34" {
                entry.name = "The Macra Terror"
                entry.image = "TheMacraTerror"
                entry.story = "34"
                entry.writer = "Ian Stuart Black"
                entry.doctor = "2nd Doctor"
                entry.airDate = "11 March 1967"
                entry.url = "dwepisode://themacraterror"
            } else if selectedEp == "35" {
                entry.name = "The Faceless Ones"
                entry.image = "TheFacelessOnes"
                entry.story = "35"
                entry.writer = "David Ellis And Malcolm Hulke"
                entry.doctor = "2nd Doctor"
                entry.airDate = "8 April 1967"
                entry.url = "dwepisode://thefacelessones"
            } else if selectedEp == "36" {
                entry.name = "The Evil Of The Daleks"
                entry.image = "TheEvilOfTheDaleks"
                entry.story = "36"
                entry.writer = "David Whitaker"
                entry.doctor = "2nd Doctor"
                entry.airDate = "20 May 1967"
                entry.url = "dwepisode://theevilofthedaleks"
            } else if selectedEp == "37" {
                entry.name = "The Tomb Of The Cybermen"
                entry.image = "TheTombOfTheCybermen"
                entry.story = "37"
                entry.writer = "Kit Pedler And Gerry Davis"
                entry.doctor = "2nd Doctor"
                entry.airDate = "2 September 1967"
                entry.url = "dwepisode://thetombofthecybermen"
            } else if selectedEp == "38" {
                entry.name = "The Abominable Snowmen"
                entry.image = "TheAbominableSnowmen"
                entry.story = "38"
                entry.writer = "Mervyn Haisman And Henry Lincoln"
                entry.doctor = "2nd Doctor"
                entry.airDate = "30 September 1967"
                entry.url = "dwepisode://theabominablesnowmen"
            } else if selectedEp == "39" {
                entry.name = "The Ice Warriors"
                entry.image = "TheIceWarriors"
                entry.story = "39"
                entry.writer = "Brian Hayles"
                entry.doctor = "2nd Doctor"
                entry.airDate = "11 November 1967"
                entry.url = "dwepisode://theicewarriors"
            } else if selectedEp == "40" {
                entry.name = "The Enemy Of The World"
                entry.image = "TheEnemyOfTheWorld"
                entry.story = "40"
                entry.writer = "David Whitaker"
                entry.doctor = "2nd Doctor"
                entry.airDate = "23 December 1967"
                entry.url = "dwepisode://theenemyoftheworld"
            } else if selectedEp == "41" {
                entry.name = "The Web Of Fear"
                entry.image = "TheWebOfFear"
                entry.story = "41"
                entry.writer = "Mervyn Haisman And Henry Lincoln"
                entry.doctor = "2nd Doctor"
                entry.airDate = "3 February 1968"
                entry.url = "dwepisode://theweboffear"
            } else if selectedEp == "42" {
                entry.name = "Fury From The Deep"
                entry.image = "FuryFromTheDeep"
                entry.story = "42"
                entry.writer = "Victor Pemberton"
                entry.doctor = "2nd Doctor"
                entry.airDate = "16 March 1968"
                entry.url = "dwepisode://furyfromthedeep"
            } else if selectedEp == "43" {
                entry.name = "The Wheel In Space"
                entry.image = "TheWheelInSpace"
                entry.story = "43"
                entry.writer = "David Whitaker"
                entry.doctor = "2nd Doctor"
                entry.airDate = "27 April 1968"
                entry.url = "dwepisode://thewheelinspace"
            } else if selectedEp == "44" {
                entry.name = "The Dominators"
                entry.image = "TheDominators"
                entry.story = "44"
                entry.writer = "Norman Ashby"
                entry.doctor = "2nd Doctor"
                entry.airDate = "10 August 1968"
                entry.url = "dwepisode://thedominators"
            } else if selectedEp == "45" {
                entry.name = "The Mind Robber"
                entry.image = "TheMindRobber"
                entry.story = "45"
                entry.writer = "Derrick Sherwin And Peter Ling"
                entry.doctor = "2nd Doctor"
                entry.airDate = "14 September 1968"
                entry.url = "dwepisode://themindrobber"
            } else if selectedEp == "46" {
                entry.name = "The Invasion"
                entry.image = "TheInvasion"
                entry.story = "46"
                entry.writer = "Derrick Sherwin"
                entry.doctor = "2nd Doctor"
                entry.airDate = "2 November 1968"
                entry.url = "dwepisode://theinvasion"
            } else if selectedEp == "47" {
                entry.name = "The Krotons"
                entry.image = "TheKrotons"
                entry.story = "47"
                entry.writer = "Robert Holmes"
                entry.doctor = "2nd Doctor"
                entry.airDate = "28 December 1968"
                entry.url = "dwepisode://thekrotons"
            } else if selectedEp == "48" {
                entry.name = "The Seeds Of Death"
                entry.image = "TheSeedsOfDeath"
                entry.story = "48"
                entry.writer = "Brian Hayles And Terrance Dicks"
                entry.doctor = "2nd Doctor"
                entry.airDate = "25 January 1969"
                entry.url = "dwepisode://theseedsofdeath"
            } else if selectedEp == "49" {
                entry.name = "The Space Pirates"
                entry.image = "TheSpacePirates"
                entry.story = "49"
                entry.writer = "Robert Holmes"
                entry.doctor = "2nd Doctor"
                entry.airDate = "8 March 1969"
                entry.url = "dwepisode://thespacepirates"
            } else if selectedEp == "50" {
                entry.name = "The War Games"
                entry.image = "TheWarGames"
                entry.story = "50"
                entry.writer = "Terrance Dicks And Malcolm Hulke"
                entry.doctor = "2nd Doctor"
                entry.airDate = "19 April 1969"
                entry.url = "dwepisode://thewargames"
            } else if selectedEp == "51" {
                entry.name = "Spearhead From Space"
                entry.image = "SpearheadFromSpace"
                entry.story = "51"
                entry.writer = "Robert Holmes"
                entry.doctor = "3rd Doctor"
                entry.airDate = "3 January 1970"
                entry.url = "dwepisode://spearheadfromspace"
            } else if selectedEp == "52" {
                entry.name = "Doctor Who And The Silurians"
                entry.image = "AndTheSilurians"
                entry.story = "52"
                entry.writer = "Malcolm Hulke"
                entry.doctor = "3rd Doctor"
                entry.airDate = "31 January 1970"
                entry.url = "dwepisode://doctorwhoandthesilurians"
            } else if selectedEp == "53" {
                entry.name = "The Ambassadors Of Death"
                entry.image = "TheAmbassadorsOfDeath"
                entry.story = "53"
                entry.writer = "David Whitaker"
                entry.doctor = "3rd Doctor"
                entry.airDate = "21 March 1970"
                entry.url = "dwepisode://theambassadorsofdeath"
            } else if selectedEp == "54" {
                entry.name = "Inferno"
                entry.image = "Inferno"
                entry.story = "54"
                entry.writer = "Don Houghton"
                entry.doctor = "3rd Doctor"
                entry.airDate = "9 May 1970"
                entry.url = "dwepisode://inferno"
            } else if selectedEp == "55" {
                entry.name = "Terror Of The Autons"
                entry.image = "TerrorOfTheAutons"
                entry.story = "55"
                entry.writer = "Robert Holmes"
                entry.doctor = "3rd Doctor"
                entry.airDate = "2 January 1971"
                entry.url = "dwepisode://terroroftheautons"
            } else if selectedEp == "56" {
                entry.name = "The Mind Of Evil"
                entry.image = "TheMindOfEvil"
                entry.story = "56"
                entry.writer = "Don Houghton"
                entry.doctor = "3rd Doctor"
                entry.airDate = "30 January 1971"
                entry.url = "dwepisode://themindofevil"
            } else if selectedEp == "57" {
                entry.name = "The Claws Of Axos"
                entry.image = "TheClawsOfAxos"
                entry.story = "57"
                entry.writer = "Bob Baker And Dave Martin"
                entry.doctor = "3rd Doctor"
                entry.airDate = "13 March 1971"
                entry.url = "dwepisode://theclawsofaxos"
            } else if selectedEp == "58" {
                entry.name = "Colony In Space"
                entry.image = "ColonyInSpace"
                entry.story = "58"
                entry.writer = "Malcolm Hulke"
                entry.doctor = "3rd Doctor"
                entry.airDate = "10 April 1971"
                entry.url = "dwepisode://colonyinspace"
            } else if selectedEp == "59" {
                entry.name = "The Daemons"
                entry.image = "TheDaemons"
                entry.story = "59"
                entry.writer = "Guy Leopold"
                entry.doctor = "3rd Doctor"
                entry.airDate = "22 May 1971"
                entry.url = "dwepisode://thedaemons"
            } else if selectedEp == "60" {
                entry.name = "Day Of The Daleks"
                entry.image = "DayOfTheDaleks"
                entry.story = "60"
                entry.writer = "Louis Marks"
                entry.doctor = "3rd Doctor"
                entry.airDate = "1 January 1972"
                entry.url = "dwepisode://dayofthedaleks"
            } else if selectedEp == "61" {
                entry.name = "The Curse Of Peladon"
                entry.image = "TheCurseOfPeladon"
                entry.story = "60"
                entry.writer = "Brian Hayles"
                entry.doctor = "3rd Doctor"
                entry.airDate = "29 January 1972"
                entry.url = "dwepisode://thecurseofpeladon"
            } else if selectedEp == "62" {
                entry.name = "The Sea Devils"
                entry.image = "TheSeaDevils"
                entry.story = "62"
                entry.writer = "Malcolm Hulke"
                entry.doctor = "3rd Doctor"
                entry.airDate = "26 February 1972"
                entry.url = "dwepisode://theseadevils"
            } else if selectedEp == "63" {
                entry.name = "The Mutants"
                entry.image = "TheMutants"
                entry.story = "63"
                entry.writer = "Bob Baker And Dave Martin"
                entry.doctor = "3rd Doctor"
                entry.airDate = "8 April 1972"
                entry.url = "dwepisode://themutants"
            } else if selectedEp == "64" {
                entry.name = "The Time Monster"
                entry.image = "TheTimeMonster"
                entry.story = "64"
                entry.writer = "Robert Sloman"
                entry.doctor = "3rd Doctor"
                entry.airDate = "20 May 1972"
                entry.url = "dwepisode://thetimemonster"
            } else if selectedEp == "65" {
                entry.name = "The Three Doctors"
                entry.image = "TheThreeDoctors"
                entry.story = "65"
                entry.writer = "Bob Baker And Dave Martin"
                entry.doctor = "3rd Doctor"
                entry.airDate = "30 December 1972"
                entry.url = "dwepisode://thethreedoctors"
            } else if selectedEp == "66" {
                entry.name = "Carnival Of Monsters"
                entry.image = "CarnivalOfMonsters"
                entry.story = "66"
                entry.writer = "Robert Holmes"
                entry.doctor = "3rd Doctor"
                entry.airDate = "27 January 1973"
                entry.url = "dwepisode://carnivalofmonsters"
            } else if selectedEp == "67" {
                entry.name = "Frontier In Space"
                entry.image = "FrontierInSpace"
                entry.story = "67"
                entry.writer = "Malcolm Hulke"
                entry.doctor = "3rd Doctor"
                entry.airDate = "24 February 1973"
                entry.url = "dwepisode://frontierinspace"
            } else if selectedEp == "68" {
                entry.name = "Planet Of The Daleks"
                entry.image = "PlanetOfTheDaleks"
                entry.story = "68"
                entry.writer = "Terry Nation"
                entry.doctor = "3rd Doctor"
                entry.airDate = "7 April 1973"
                entry.url = "dwepisode://planetofthedaleks"
            } else if selectedEp == "69" {
                entry.name = "The Green Death"
                entry.image = "TheGreenDeath"
                entry.story = "69"
                entry.writer = "Robert Sloman"
                entry.doctor = "3rd Doctor"
                entry.airDate = "19 May 1973"
                entry.url = "dwepisode://thegreendeath"
            } else if selectedEp == "70" {
                entry.name = "The Time Warrior"
                entry.image = "TheTimeWarrior"
                entry.story = "70"
                entry.writer = "Robert Holmes"
                entry.doctor = "3rd Doctor"
                entry.airDate = "15 December 1973"
                entry.url = "dwepisode://thetimewarrior"
            } else if selectedEp == "71" {
                entry.name = "Invasion Of The Dinosaurs"
                entry.image = "InvasionOfTheDinosaurs"
                entry.story = "71"
                entry.writer = "Malcolm Hulke"
                entry.doctor = "3rd Doctor"
                entry.airDate = "12 January 1974"
                entry.url = "dwepisode://invasionofthedinosaurs"
            } else if selectedEp == "72" {
                entry.name = "Death To The Daleks"
                entry.image = "DeathToTheDaleks"
                entry.story = "72"
                entry.writer = "Terry Nation"
                entry.doctor = "3rd Doctor"
                entry.airDate = "23 February 1974"
                entry.url = "dwepisode://deathtothedaleks"
            } else if selectedEp == "73" {
                entry.name = "The Monster Of Peladon"
                entry.image = "TheMonsterOfPeladon"
                entry.story = "73"
                entry.writer = "Brian Hayles"
                entry.doctor = "3rd Doctor"
                entry.airDate = "23 March 1974"
                entry.url = "dwepisode://themonsterofpeladon"
            } else if selectedEp == "74" {
                entry.name = "Planet Of The Spiders"
                entry.image = "PlanetOfTheSpiders"
                entry.story = "74"
                entry.writer = "Robert Sloman"
                entry.doctor = "3rd Doctor"
                entry.airDate = "4 May 1974"
                entry.url = "dwepisode://planetofthespiders"
            } else if selectedEp == "75" {
                entry.name = "Robot"
                entry.image = "Robot"
                entry.story = "75"
                entry.writer = "Terrance Dicks"
                entry.doctor = "4th Doctor"
                entry.airDate = "28 December 1974"
                entry.url = "dwepisode://robot"
            } else if selectedEp == "76" {
                entry.name = "The Ark In Space"
                entry.image = "TheArkInSpace"
                entry.story = "76"
                entry.writer = "Robert Holmes"
                entry.doctor = "4th Doctor"
                entry.airDate = "25 January 1975"
                entry.url = "dwepisode://thearkinspace"
            } else if selectedEp == "77" {
                entry.name = "The Sontaran Experiment"
                entry.image = "TheSontaranExperiment"
                entry.story = "77"
                entry.writer = "Bob Baker And Dave Martin"
                entry.doctor = "4th Doctor"
                entry.airDate = "22 February 1975"
                entry.url = "dwepisode://thesontaranexperiment"
            } else if selectedEp == "78" {
                entry.name = "Genesis Of The Daleks"
                entry.image = "GenesisOfTheDaleks"
                entry.story = "78"
                entry.writer = "Terry Nation"
                entry.doctor = "4th Doctor"
                entry.airDate = "8 March 1975"
                entry.url = "dwepisode://genesisofthedaleks"
            } else if selectedEp == "79" {
                entry.name = "Revenge Of The Cybermen"
                entry.image = "RevengeOfTheCybermen"
                entry.story = "79"
                entry.writer = "Gerry Davis"
                entry.doctor = "4th Doctor"
                entry.airDate = "19 April 1975"
                entry.url = "dwepisode://revengeofthecybermen"
            } else if selectedEp == "80" {
                entry.name = "Terror Of The Zygons"
                entry.image = "TerrorOfTheZygons"
                entry.story = "80"
                entry.writer = "Robert Banks Stewart"
                entry.doctor = "4th Doctor"
                entry.airDate = "30 August 1975"
                entry.url = "dwepisode://terrorofthezygons"
            } else if selectedEp == "81" {
                entry.name = "Planet Of Evil"
                entry.image = "PlanetOfEvil"
                entry.story = "81"
                entry.writer = "Louis Marks"
                entry.doctor = "4th Doctor"
                entry.airDate = "27 September 1975"
                entry.url = "dwepisode://planetofevil"
            } else if selectedEp == "82" {
                entry.name = "Pyramids Of Mars"
                entry.image = "PyramidsOfMars"
                entry.story = "82"
                entry.writer = "Stephen Harris"
                entry.doctor = "4th Doctor"
                entry.airDate = "25 October 1975"
                entry.url = "dwepisode://pyramidsofmars"
            } else if selectedEp == "83" {
                entry.name = "The Android Invasion"
                entry.image = "TheAndroidInvasion"
                entry.story = "83"
                entry.writer = "Terry Nation"
                entry.doctor = "4th Doctor"
                entry.airDate = "22 November 1975"
                entry.url = "dwepisode://theandroidinvasion"
            } else if selectedEp == "84" {
                entry.name = "The Brain Of Morbius"
                entry.image = "TheBrainOfMorbius"
                entry.story = "84"
                entry.writer = "Robin Bland"
                entry.doctor = "4th Doctor"
                entry.airDate = "3 January 1976"
                entry.url = "dwepisode://thebrainofmorbius"
            } else if selectedEp == "85" {
                entry.name = "The Seeds Of Doom"
                entry.image = "TheSeedsOfDoom"
                entry.story = "85"
                entry.writer = "Robert Banks Stewart"
                entry.doctor = "4th Doctor"
                entry.airDate = "31 January 1976"
                entry.url = "dwepisode://theseedsofdoom"
            } else if selectedEp == "86" {
                entry.name = "The Masque Of Mandragora"
                entry.image = "TheMasqueOfMandragora"
                entry.story = "86"
                entry.writer = "Louis Marks"
                entry.doctor = "4th Doctor"
                entry.airDate = "4 September 1976"
                entry.url = "dwepisode://themasqueofmandragora"
            } else if selectedEp == "87" {
                entry.name = "The Hand Of Fear"
                entry.image = "TheHandOfFear"
                entry.story = "87"
                entry.writer = "Bob Baker And Dave Martin"
                entry.doctor = "4th Doctor"
                entry.airDate = "2 October 1976"
                entry.url = "dwepisode://thehandoffear"
            } else if selectedEp == "88" {
                entry.name = "The Deadly Assassin"
                entry.image = "TheDeadlyAssassin"
                entry.story = "88"
                entry.writer = "Robert Holmes"
                entry.doctor = "4th Doctor"
                entry.airDate = "30 October 1976"
                entry.url = "dwepisode://thedeadlyassassin"
            } else if selectedEp == "89" {
                entry.name = "The Face Of Evil"
                entry.image = "TheFaceOfEvil"
                entry.story = "89"
                entry.writer = "Chris Boucher"
                entry.doctor = "4th Doctor"
                entry.airDate = "1 January 1977"
                entry.url = "dwepisode://thefaceofevil"
            } else if selectedEp == "90" {
                entry.name = "The Robots Of Death"
                entry.image = "TheRobotsOfDeath"
                entry.story = "90"
                entry.writer = "Chris Boucher"
                entry.doctor = "4th Doctor"
                entry.airDate = "29 January 1977"
                entry.url = "dwepisode://therobotsofdeath"
            } else if selectedEp == "91" {
                entry.name = "The Talons Of Weng-Chiang"
                entry.image = "TheTalonsOfWengChiang"
                entry.story = "91"
                entry.writer = "Robert Holmes"
                entry.doctor = "4th Doctor"
                entry.airDate = "26 February 1977"
                entry.url = "dwepisode://thetalonsofwengchiang"
            } else if selectedEp == "92" {
                entry.name = "Horror Of Fang Rock"
                entry.image = "HorrorOfFangRock"
                entry.story = "92"
                entry.writer = "Terrance Dicks"
                entry.doctor = "4th Doctor"
                entry.airDate = "3 September 1977"
                entry.url = "dwepisode://horroroffangrock"
            } else if selectedEp == "93" {
                entry.name = "The Invisible Enemy"
                entry.image = "TheInvsibleEnemy"
                entry.story = "93"
                entry.writer = "Bob Baker And Dave Martin"
                entry.doctor = "4th Doctor"
                entry.airDate = "1 October 1977"
                entry.url = "dwepisode://theinvisibleenemy"
            } else if selectedEp == "94" {
                entry.name = "Image Of The Fendahl"
                entry.image = "ImageOfTheFendahl"
                entry.story = "94"
                entry.writer = "Chris Boucher"
                entry.doctor = "4th Doctor"
                entry.airDate = "29 October 1977"
                entry.url = "dwepisode://imageofthefendahl"
            } else if selectedEp == "95" {
                entry.name = "The Sun Makers"
                entry.image = "TheSunMakers"
                entry.story = "95"
                entry.writer = "Robert Holmes"
                entry.doctor = "4th Doctor"
                entry.airDate = "26 November 1977"
                entry.url = "dwepisode://thesunmakers"
            } else if selectedEp == "96" {
                entry.name = "Underworld"
                entry.image = "Underworld"
                entry.story = "96"
                entry.writer = "Bob Baker And Dave Martin"
                entry.doctor = "4th Doctor"
                entry.airDate = "7 January 1978"
                entry.url = "dwepisode://underworld"
            } else if selectedEp == "97" {
                entry.name = "The Invasion Of Time"
                entry.image = "TheInvasionOfTime"
                entry.story = "97"
                entry.writer = "David Agnew"
                entry.doctor = "4th Doctor"
                entry.airDate = "4 February 1978"
                entry.url = "dwepisode://theinvasionoftime"
            } else if selectedEp == "98" {
                entry.name = "The Ribos Operation"
                entry.image = "TheRibosOperation"
                entry.story = "98"
                entry.writer = "Robert Holmes"
                entry.doctor = "4th Doctor"
                entry.airDate = "2 September 1978"
                entry.url = "dwepisode://theribosoperation"
            } else if selectedEp == "99" {
                entry.name = "The Pirate Planet"
                entry.image = "ThePiratePlanet"
                entry.story = "99"
                entry.writer = "Douglas Adams"
                entry.doctor = "4th Doctor"
                entry.airDate = "30 September 1978"
                entry.url = "dwepisode://thepirateplanet"
            } else if selectedEp == "100" {
                entry.name = "The Stones Of Blood"
                entry.image = "TheStonesOfBlood"
                entry.story = "100"
                entry.writer = "David Fisher"
                entry.doctor = "4th Doctor"
                entry.airDate = "28 October 1978"
                entry.url = "dwepisode://thestonesofblood"
            } else if selectedEp == "101" {
                entry.name = "The Androids Of Tara"
                entry.image = "TheAndroidsOfTara"
                entry.story = "101"
                entry.writer = "David Fisher"
                entry.doctor = "4th Doctor"
                entry.airDate = "25 November 1978"
                entry.url = "dwepisode://theandroidsoftara"
            } else if selectedEp == "102" {
                entry.name = "The Power Of Kroll"
                entry.image = "ThePowerOfKroll"
                entry.story = "102"
                entry.writer = "Robert Holmes"
                entry.doctor = "4th Doctor"
                entry.airDate = "23 December 1978"
                entry.url = "dwepisode://thepowerofkroll"
            } else if selectedEp == "103" {
                entry.name = "The Armageddon Factor"
                entry.image = "TheArmageddonFactor"
                entry.story = "103"
                entry.writer = "Bob Baker And Dave Martin"
                entry.doctor = "4th Doctor"
                entry.airDate = "20 January 1979"
                entry.url = "dwepisode://thearmageddonfactor"
            } else if selectedEp == "104" {
                entry.name = "Destiny Of The Daleks"
                entry.image = "DestinyOfTheDaleks"
                entry.story = "104"
                entry.writer = "Terry Nation"
                entry.doctor = "4th Doctor"
                entry.airDate = "1 September 1979"
                entry.url = "dwepisode://destinyofthedaleks"
            } else if selectedEp == "105" {
                entry.name = "City Of Death"
                entry.image = "CityOfDeath"
                entry.story = "105"
                entry.writer = "David Agnew"
                entry.doctor = "4th Doctor"
                entry.airDate = "29 September 1979"
                entry.url = "dwepisode://cityofdeath"
            } else if selectedEp == "106" {
                entry.name = "The Creature From The Pit"
                entry.image = "TheCreatureFromThePit"
                entry.story = "106"
                entry.writer = "David Fisher"
                entry.doctor = "4th Doctor"
                entry.airDate = "27 October 1979"
                entry.url = "dwepisode://thecreaturefromthepit"
            } else if selectedEp == "107" {
                entry.name = "Nightmare Of Eden"
                entry.image = "NightmareOfEden"
                entry.story = "107"
                entry.writer = "Bob Baker"
                entry.doctor = "4th Doctor"
                entry.airDate = "24 November 1979"
                entry.url = "dwepisode://nightmareofeden"
            } else if selectedEp == "108" {
                entry.name = "The Horns Of Nimon"
                entry.image = "TheHornsOfNimon"
                entry.story = "108"
                entry.writer = "Anthony Read"
                entry.doctor = "4th Doctor"
                entry.airDate = "22 December 1979"
                entry.url = "dwepisode://thehornsofnimon"
            } else if selectedEp == "109" {
                entry.name = "Shada"
                entry.image = "Shada"
                entry.story = "108.5"
                entry.writer = "Douglas Adams"
                entry.doctor = "4th Doctor"
                entry.airDate = "N/A"
                entry.url = "dwepisode://shada"
            } else if selectedEp == "110" {
                entry.name = "The Leisure Hive"
                entry.image = "TheLeisureHive"
                entry.story = "109"
                entry.writer = "David Fisher"
                entry.doctor = "4th Doctor"
                entry.airDate = "30 August 1980"
                entry.url = "dwepisode://theleisurehive"
            } else if selectedEp == "111" {
                entry.name = "Meglos"
                entry.image = "Meglos"
                entry.story = "110"
                entry.writer = "John Flanagan And Andrew McCulloch"
                entry.doctor = "4th Doctor"
                entry.airDate = "27 September 1980"
                entry.url = "dwepisode://meglos"
            } else if selectedEp == "112" {
                entry.name = "Full Circle"
                entry.image = "FullCircle"
                entry.story = "111"
                entry.writer = "Andrew Smith"
                entry.doctor = "4th Doctor"
                entry.airDate = "25 October 1980"
                entry.url = "dwepisode://fullcircle"
            } else if selectedEp == "113" {
                entry.name = "State Of Decay"
                entry.image = "StateOfDecay"
                entry.story = "112"
                entry.writer = "Terrance Dicks"
                entry.doctor = "4th Doctor"
                entry.airDate = "22 November 1980"
                entry.url = "dwepisode://stateofdecay"
            } else if selectedEp == "114" {
                entry.name = "Warriors' Gate"
                entry.image = "WarriorsGate"
                entry.story = "113"
                entry.writer = "Stephen Gallagher"
                entry.doctor = "4th Doctor"
                entry.airDate = "3 January 1981"
                entry.url = "dwepisode://warriorsgate"
            } else if selectedEp == "115" {
                entry.name = "The Keeper Of Traken"
                entry.image = "TheKeeperOfTraken"
                entry.story = "114"
                entry.writer = "Johnny Byrne"
                entry.doctor = "4th Doctor"
                entry.airDate = "31 January 1981"
                entry.url = "dwepisode://thekeeperoftraken"
            } else if selectedEp == "116" {
                entry.name = "Logopolis"
                entry.image = "Logopolis"
                entry.story = "115"
                entry.writer = "Christopher H. Bidmead"
                entry.doctor = "4th Doctor"
                entry.airDate = "28 February 1981"
                entry.url = "dwepisode://logopolis"
            } else if selectedEp == "117" {
                entry.name = "Castrovalva"
                entry.image = "Castrovalva"
                entry.story = "116"
                entry.writer = "Christopher H. Bidmead"
                entry.doctor = "5th Doctor"
                entry.airDate = "4 January 1982"
                entry.url = "dwepisode://castrovalva"
            } else if selectedEp == "118" {
                entry.name = "Four To Doomsday"
                entry.image = "FourToDoomsday"
                entry.story = "117"
                entry.writer = "Terence Dudley"
                entry.doctor = "5th Doctor"
                entry.airDate = "18 January 1982"
                entry.url = "dwepisode://fourtodoomsday"
            } else if selectedEp == "119" {
                entry.name = "Kinda"
                entry.image = "Kinda"
                entry.story = "118"
                entry.writer = "Christopher Bailey"
                entry.doctor = "5th Doctor"
                entry.airDate = "1 February 1982"
                entry.url = "dwepisode://kinda"
            } else if selectedEp == "120" {
                entry.name = "The Visitation"
                entry.image = "TheVisitation"
                entry.story = "119"
                entry.writer = "Eric Saward"
                entry.doctor = "5th Doctor"
                entry.airDate = "15 February 1982"
                entry.url = "dwepisode://thevisitation"
            } else if selectedEp == "121" {
                entry.name = "Black Orchid"
                entry.image = "BlackOrchid"
                entry.story = "120"
                entry.writer = "Terence Dudley"
                entry.doctor = "5th Doctor"
                entry.airDate = "1 March 1982"
                entry.url = "dwepisode://blackorchid"
            } else if selectedEp == "122" {
                entry.name = "Earthshock"
                entry.image = "Earthshock"
                entry.story = "121"
                entry.writer = "Eric Saward"
                entry.doctor = "5th Doctor"
                entry.airDate = "8 March 1982"
                entry.url = "dwepisode://earthshock"
            } else if selectedEp == "123" {
                entry.name = "Time-Flight"
                entry.image = "TimeFlight"
                entry.story = "122"
                entry.writer = "Peter Grimwade"
                entry.doctor = "5th Doctor"
                entry.airDate = "22 March 1982"
                entry.url = "dwepisode://timeflight"
            } else if selectedEp == "124" {
                entry.name = "Arc Of Infinity"
                entry.image = "ArcOfInfinity"
                entry.story = "123"
                entry.writer = "Johnny Byrne"
                entry.doctor = "5th Doctor"
                entry.airDate = "3 January 1983"
                entry.url = "dwepisode://arcofinfinity"
            } else if selectedEp == "125" {
                entry.name = "Snakedance"
                entry.image = "Snakedance"
                entry.story = "124"
                entry.writer = "Christopher Bailey"
                entry.doctor = "5th Doctor"
                entry.airDate = "18 January 1983"
                entry.url = "dwepisode://snakedance"
            } else if selectedEp == "126" {
                entry.name = "Mawdryn Undead"
                entry.image = "MawdrynUndead"
                entry.story = "125"
                entry.writer = "Peter Grimwade"
                entry.doctor = "5th Doctor"
                entry.airDate = "1 February 1983"
                entry.url = "dwepisode://mawdrynundead"
            } else if selectedEp == "127" {
                entry.name = "Terminus"
                entry.image = "Terminus"
                entry.story = "126"
                entry.writer = "Stephen Gallagher"
                entry.doctor = "5th Doctor"
                entry.airDate = "15 February 1983"
                entry.url = "dwepisode://terminus"
            } else if selectedEp == "128" {
                entry.name = "Enlightenment"
                entry.image = "Enlightenment"
                entry.story = "127"
                entry.writer = "Barbara Clegg"
                entry.doctor = "5th Doctor"
                entry.airDate = "1 March 1983"
                entry.url = "dwepisode://enlightenment"
            } else if selectedEp == "129" {
                entry.name = "The King's Demons"
                entry.image = "TheKingsDemons"
                entry.story = "128"
                entry.writer = "Terence Dudley"
                entry.doctor = "5th Doctor"
                entry.airDate = "15 March 1983"
                entry.url = "dwepisode://thekingsdemons"
            } else if selectedEp == "130" {
                entry.name = "The Five Doctors"
                entry.image = "TheFiveDoctors"
                entry.story = "129"
                entry.writer = "Terrance Dicks"
                entry.doctor = "5th Doctor"
                entry.airDate = "23 November 1983"
                entry.url = "dwepisode://thefivedoctors"
            } else if selectedEp == "131" {
                entry.name = "Warriors Of The Deep"
                entry.image = "WarriorsOfTheDeep"
                entry.story = "130"
                entry.writer = "Johnny Byrne"
                entry.doctor = "5th Doctor"
                entry.airDate = "5 January 1984"
                entry.url = "dwepisode://warriorsofthedeep"
            } else if selectedEp == "132" {
                entry.name = "The Awakening"
                entry.image = "TheAwakening"
                entry.story = "131"
                entry.writer = "Eric Pringle"
                entry.doctor = "5th Doctor"
                entry.airDate = "19 January 1984"
                entry.url = "dwepisode://theawakening"
            } else if selectedEp == "133" {
                entry.name = "Frontios"
                entry.image = "Frontios"
                entry.story = "132"
                entry.writer = "Christopher H. Bidmead"
                entry.doctor = "5th Doctor"
                entry.airDate = "26 January 1984"
                entry.url = "dwepisode://frontios"
            } else if selectedEp == "134" {
                entry.name = "Resurrection Of The Daleks"
                entry.image = "ResurrectionOfTheDaleks"
                entry.story = "133"
                entry.writer = "Eric Saward"
                entry.doctor = "5th Doctor"
                entry.airDate = "8 February 1984"
                entry.url = "dwepisode://resurrectionofthedaleks"
            } else if selectedEp == "135" {
                entry.name = "Planet Of Fire"
                entry.image = "PlanetOfFire"
                entry.story = "134"
                entry.writer = "Peter Grimwade"
                entry.doctor = "5th Doctor"
                entry.airDate = "23 February 1984"
                entry.url = "dwepisode://planetoffire"
            } else if selectedEp == "136" {
                entry.name = "The Caves Of Androzani"
                entry.image = "TheCavesOfAndrozani"
                entry.story = "135"
                entry.writer = "Robert Holmes"
                entry.doctor = "5th Doctor"
                entry.airDate = "8 March 1984"
                entry.url = "dwepisode://thecavesofandrozani"
            } else if selectedEp == "137" {
                entry.name = "The Twin Dilemma"
                entry.image = "TheTwinDilemma"
                entry.story = "136"
                entry.writer = "Anthony Steven"
                entry.doctor = "6th Doctor"
                entry.airDate = "22 March 1984"
                entry.url = "dwepisode://thetwindilemma"
            } else if selectedEp == "138" {
                entry.name = "Attack Of The Cybermen"
                entry.image = "AttackOfTheCybermen"
                entry.story = "137"
                entry.writer = "Paula Moore"
                entry.doctor = "6th Doctor"
                entry.airDate = "5 January 1985"
                entry.url = "dwepisode://attackofthecybermen"
            } else if selectedEp == "139" {
                entry.name = "Vengeance On Varos"
                entry.image = "VengeanceOnVaros"
                entry.story = "138"
                entry.writer = "Philip Martin"
                entry.doctor = "6th Doctor"
                entry.airDate = "19 January 1985"
                entry.url = "dwepisode://vengeanceonvaros"
            } else if selectedEp == "140" {
                entry.name = "The Mark Of The Rani"
                entry.image = "TheMarkOfTheRani"
                entry.story = "139"
                entry.writer = "Pip And Jane Baker"
                entry.doctor = "6th Doctor"
                entry.airDate = "2 February 1985"
                entry.url = "dwepisode://themarkoftherani"
            } else if selectedEp == "141" {
                entry.name = "The Two Doctors"
                entry.image = "TheTwoDoctors"
                entry.story = "140"
                entry.writer = "Robert Holmes"
                entry.doctor = "6th Doctor"
                entry.airDate = "16 February 1985"
                entry.url = "dwepisode://thetwodoctors"
            } else if selectedEp == "142" {
                entry.name = "Timelash"
                entry.image = "Timelash"
                entry.story = "141"
                entry.writer = "Glen McCoy"
                entry.doctor = "6th Doctor"
                entry.airDate = "9 March 1985"
                entry.url = "dwepisode://timelash"
            } else if selectedEp == "143" {
                entry.name = "Revelation Of The Daleks"
                entry.image = "RevelationOfTheDaleks"
                entry.story = "142"
                entry.writer = "Eric Saward"
                entry.doctor = "6th Doctor"
                entry.airDate = "23 March 1985"
                entry.url = "dwepisode://revelationofthedaleks"
            } else if selectedEp == "144" {
                entry.name = "The Mysterious Planet"
                entry.image = "TheMysteriousPlanet"
                entry.story = "143a"
                entry.writer = "Robert Holmes"
                entry.doctor = "6th Doctor"
                entry.airDate = "6 September 1986"
                entry.url = "dwepisode://themysteriousplanet"
            } else if selectedEp == "145" {
                entry.name = "Mindwarp"
                entry.image = "Mindwarp"
                entry.story = "143b"
                entry.writer = "Philip Martin"
                entry.doctor = "6th Doctor"
                entry.airDate = "4 October 1986"
                entry.url = "dwepisode://mindwarp"
            } else if selectedEp == "146" {
                entry.name = "Terror Of The Vervoids"
                entry.image = "TerrorOfTheVervoids"
                entry.story = "143c"
                entry.writer = "Pip And Jane Baker"
                entry.doctor = "6th Doctor"
                entry.airDate = "1 November 1986"
                entry.url = "dwepisode://terrorofthevervoids"
            } else if selectedEp == "147" {
                entry.name = "The Ultimate Foe"
                entry.image = "TheUltimateFoe"
                entry.story = "143d"
                entry.writer = "Robert Holmes And Pip And Jane Baker"
                entry.doctor = "6th Doctor"
                entry.airDate = "29 November 1986"
                entry.url = "dwepisode://theultimatefoe"
            } else if selectedEp == "148" {
                entry.name = "Time And The Rani"
                entry.image = "TimeAndTheRani"
                entry.story = "144"
                entry.writer = "Pip And Jane Baker"
                entry.doctor = "7th Doctor"
                entry.airDate = "7 September 1987"
                entry.url = "dwepisode://timeandtherani"
            } else if selectedEp == "149" {
                entry.name = "Paradise Towers"
                entry.image = "ParadiseTowers"
                entry.story = "145"
                entry.writer = "Stephen Wyatt"
                entry.doctor = "7th Doctor"
                entry.airDate = "5 October 1987"
                entry.url = "dwepisode://paradisetowers"
            } else if selectedEp == "150" {
                entry.name = "Delta And The Bannermen"
                entry.image = "DeltaAndTheBannermen"
                entry.story = "146"
                entry.writer = "Malcolm Kohll"
                entry.doctor = "7th Doctor"
                entry.airDate = "2 November 1987"
                entry.url = "dwepisode://deltaandthebannermen"
            } else if selectedEp == "151" {
                entry.name = "Dragonfire"
                entry.image = "Dragonfire"
                entry.story = "147"
                entry.writer = "Ian Briggs"
                entry.doctor = "7th Doctor"
                entry.airDate = "23 November 1987"
                entry.url = "dwepisode://dragonfire"
            } else if selectedEp == "152" {
                entry.name = "Remembrance Of The Daleks"
                entry.image = "RemembranceOfTheDaleks"
                entry.story = "148"
                entry.writer = "Ben Aaronovitch"
                entry.doctor = "7th Doctor"
                entry.airDate = "5 October 1988"
                entry.url = "dwepisode://remembranceofthedaleks"
            } else if selectedEp == "153" {
                entry.name = "The Happiness Patrol"
                entry.image = "TheHappinessPatrol"
                entry.story = "149"
                entry.writer = "Graeme Curry"
                entry.doctor = "7th Doctor"
                entry.airDate = "2 November 1988"
                entry.url = "dwepisode://thehappinesspatrol"
            } else if selectedEp == "154" {
                entry.name = "Silver Nemesis"
                entry.image = "SilverNemesis"
                entry.story = "150"
                entry.writer = "Kevin Clarke"
                entry.doctor = "7th Doctor"
                entry.airDate = "23 November 1988"
                entry.url = "dwepisode://silvernemesis"
            } else if selectedEp == "155" {
                entry.name = "The Greatest Show In The Galaxy"
                entry.image = "TheGreatestShowInTheGalaxy"
                entry.story = "151"
                entry.writer = "Stephen Wyatt"
                entry.doctor = "7th Doctor"
                entry.airDate = "14 December 1988"
                entry.url = "dwepisode://thegreatestshowinthegalaxy"
            } else if selectedEp == "156" {
                entry.name = "Battlefield"
                entry.image = "Battlefield"
                entry.story = "152"
                entry.writer = "Ben Aaronovitch"
                entry.doctor = "7th Doctor"
                entry.airDate = "6 September 1989"
                entry.url = "dwepisode://battlefield"
            } else if selectedEp == "157" {
                entry.name = "Ghost Light"
                entry.image = "GhostLight"
                entry.story = "153"
                entry.writer = "Marc Platt"
                entry.doctor = "7th Doctor"
                entry.airDate = "4 October 1989"
                entry.url = "dwepisode://ghostlight"
            } else if selectedEp == "158" {
                entry.name = "The Curse Of Fenric"
                entry.image = "TheCurseOfFenric"
                entry.story = "154"
                entry.writer = "Ian Briggs"
                entry.doctor = "7th Doctor"
                entry.airDate = "25 October 1989"
                entry.url = "dwepisode://thecurseoffenric"
            } else if selectedEp == "159" {
                entry.name = "Survival"
                entry.image = "Survival"
                entry.story = "155"
                entry.writer = "Rona Munro"
                entry.doctor = "7th Doctor"
                entry.airDate = "22 November 1989"
                entry.url = "dwepisode://survival"
            } else if selectedEp == "160" {
                entry.name = "TV Movie"
                entry.image = "TVMovie"
                entry.story = "156"
                entry.writer = "Matthew Jacobs"
                entry.doctor = "8th Doctor"
                entry.airDate = "27 May 1996"
                entry.url = "dwepisode://tvmovie"
            } else if selectedEp == "161" {
                entry.name = "Rose"
                entry.image = "Rose"
                entry.story = "157"
                entry.writer = "Russell T Davis"
                entry.doctor = "9th Doctor"
                entry.airDate = "26 March 2005"
                entry.url = "dwepisode://rose"
            } else if selectedEp == "162" {
                entry.name = "The End Of The World"
                entry.image = "TheEndOfTheWorld"
                entry.story = "158"
                entry.writer = "Russell T Davis"
                entry.doctor = "9th Doctor"
                entry.airDate = "2 April 2005"
                entry.url = "dwepisode://theendoftheworld"
            } else if selectedEp == "163" {
                entry.name = "The Unquiet Dead"
                entry.image = "TheUnquietDead"
                entry.story = "159"
                entry.writer = "Mark Gatiss"
                entry.doctor = "9th Doctor"
                entry.airDate = "9 April 2005"
                entry.url = "dwepisode://theunquietdead"
            } else if selectedEp == "164" {
                entry.name = "Aliens Of London"
                entry.image = "AliensOfLondon"
                entry.story = "160a"
                entry.writer = "Russell T Davis"
                entry.doctor = "9th Doctor"
                entry.airDate = "16 April 2005"
                entry.url = "dwepisode://aliensoflondon"
            } else if selectedEp == "165" {
                entry.name = "World War Three"
                entry.image = "WorldWarThree"
                entry.story = "160b"
                entry.writer = "Russell T Davis"
                entry.doctor = "9th Doctor"
                entry.airDate = "23 April 2005"
                entry.url = "dwepisode://worldwarthree"
            } else if selectedEp == "166" {
                entry.name = "Dalek"
                entry.image = "Dalek"
                entry.story = "161"
                entry.writer = "Robert Shearman"
                entry.doctor = "9th Doctor"
                entry.airDate = "30 April 2005"
                entry.url = "dwepisode://dalek"
            } else if selectedEp == "167" {
                entry.name = "The Long Game"
                entry.image = "TheLongGame"
                entry.story = "162"
                entry.writer = "Russell T Davis"
                entry.doctor = "9th Doctor"
                entry.airDate = "7 May 2005"
                entry.url = "dwepisode://thelonggame"
            } else if selectedEp == "168" {
                entry.name = "Father's Day"
                entry.image = "FathersDay"
                entry.story = "163"
                entry.writer = "Paul Cornell"
                entry.doctor = "9th Doctor"
                entry.airDate = "14 May 2005"
                entry.url = "dwepisode://fathersday"
            } else if selectedEp == "169" {
                entry.name = "The Empty Child"
                entry.image = "TheEmptyChild"
                entry.story = "164a"
                entry.writer = "Steven Moffat"
                entry.doctor = "9th Doctor"
                entry.airDate = "21 May 2005"
                entry.url = "dwepisode://theemptychild"
            } else if selectedEp == "170" {
                entry.name = "The Doctor Dances"
                entry.image = "TheDoctorDances"
                entry.story = "164b"
                entry.writer = "Steven Moffat"
                entry.doctor = "9th Doctor"
                entry.airDate = "28 May 2005"
                entry.url = "dwepisode://thedoctordances"
            } else if selectedEp == "171" {
                entry.name = "Boom Town"
                entry.image = "BoomTown"
                entry.story = "165"
                entry.writer = "Russell T Davis"
                entry.doctor = "9th Doctor"
                entry.airDate = "4 June 2005"
                entry.url = "dwepisode://boomtown"
            } else if selectedEp == "172" {
                entry.name = "Bad Wolf"
                entry.image = "BadWolf"
                entry.story = "166a"
                entry.writer = "Russell T Davis"
                entry.doctor = "9th Doctor"
                entry.airDate = "11 June 2005"
                entry.url = "dwepisode://badwolf"
            } else if selectedEp == "173" {
                entry.name = "The Parting Of The Ways"
                entry.image = "ThePartingOfTheWays"
                entry.story = "166b"
                entry.writer = "Russell T Davis"
                entry.doctor = "9th Doctor"
                entry.airDate = "18 June 2005"
                entry.url = "dwepisode://thepartingoftheways"
            } else if selectedEp == "174" {
                entry.name = "The Christmas Invasion"
                entry.image = "TheChristmasInvasion"
                entry.story = "167"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "25 December 2005"
                entry.url = "dwepisode://thechristmasinvasion"
            } else if selectedEp == "175" {
                entry.name = "New Earth"
                entry.image = "NewEarth"
                entry.story = "168"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "15 April 2005"
                entry.url = "dwepisode://newearth"
            } else if selectedEp == "176" {
                entry.name = "Tooth And Claw"
                entry.image = "ToothAndClaw"
                entry.story = "169"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "22 April 2006"
                entry.url = "dwepisode://toothandclaw"
            } else if selectedEp == "177" {
                entry.name = "School Reunion"
                entry.image = "SchoolReunion"
                entry.story = "170"
                entry.writer = "Toby Whithouse"
                entry.doctor = "10th Doctor"
                entry.airDate = "29 April 2006"
                entry.url = "dwepisode://schoolreunion"
            } else if selectedEp == "178" {
                entry.name = "The Girl In The Fireplace"
                entry.image = "TheGirlInTheFireplace"
                entry.story = "171"
                entry.writer = "Steven Moffat"
                entry.doctor = "10th Doctor"
                entry.airDate = "6 May 2006"
                entry.url = "dwepisode://thegirlinthefireplace"
            } else if selectedEp == "179" {
                entry.name = "Rise Of The Cybermen"
                entry.image = "RiseOfTheCybermen"
                entry.story = "172a"
                entry.writer = "Tom MacRae"
                entry.doctor = "10th Doctor"
                entry.airDate = "13 May 2006"
                entry.url = "dwepisode://riseofthecybermen"
            } else if selectedEp == "180" {
                entry.name = "The Age Of Steel"
                entry.image = "TheAgeOfSteel"
                entry.story = "172b"
                entry.writer = "Tom MacRae"
                entry.doctor = "10th Doctor"
                entry.airDate = "20 May 2006"
                entry.url = "dwepisode://theageofsteel"
            } else if selectedEp == "181" {
                entry.name = "The Idiot's Lantern"
                entry.image = "TheIdiotsLantern"
                entry.story = "173"
                entry.writer = "Mark Gatiss"
                entry.doctor = "10th Doctor"
                entry.airDate = "27 May 2006"
                entry.url = "dwepisode://theidiotslantern"
            } else if selectedEp == "182" {
                entry.name = "The Impossible Planet"
                entry.image = "TheImpossiblePlanet"
                entry.story = "174a"
                entry.writer = "Matt Jones"
                entry.doctor = "10th Doctor"
                entry.airDate = "3 June 2006"
                entry.url = "dwepisode://theimpossibleplanet"
            } else if selectedEp == "183" {
                entry.name = "The Satan Pit"
                entry.image = "TheSatanPit"
                entry.story = "174b"
                entry.writer = "Matt Jones"
                entry.doctor = "10th Doctor"
                entry.airDate = "10 June 2006"
                entry.url = "dwepisode://thesatanpit"
            } else if selectedEp == "184" {
                entry.name = "Love & Monsters"
                entry.image = "LoveAndMonsters"
                entry.story = "175"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "17 June 2006"
                entry.url = "dwepisode://loveandmonsters"
            } else if selectedEp == "185" {
                entry.name = "Fear Her"
                entry.image = "FearHer"
                entry.story = "176"
                entry.writer = "Matthew Graham"
                entry.doctor = "10th Doctor"
                entry.airDate = "24 June 2006"
                entry.url = "dwepisode://fearher"
            } else if selectedEp == "186" {
                entry.name = "Army Of Ghosts"
                entry.image = "ArmyOfGhosts"
                entry.story = "177a"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "1 July 2006"
                entry.url = "dwepisode://armyofghosts"
            } else if selectedEp == "187" {
                entry.name = "Doomsday"
                entry.image = "Doomsday"
                entry.story = "177b"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "8 July 2006"
                entry.url = "dwepisode://doomsday"
            } else if selectedEp == "188" {
                entry.name = "The Runaway Bride"
                entry.image = "TheRunawayBride"
                entry.story = "178"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "25 December 2006"
                entry.url = "dwepisode://therunawaybride"
            } else if selectedEp == "189" {
                entry.name = "Smith And Jones"
                entry.image = "SmithAndJones"
                entry.story = "179"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "31 March 2007"
                entry.url = "dwepisode://smithandjones"
            } else if selectedEp == "190" {
                entry.name = "The Shakespeare Code"
                entry.image = "TheShakespeareCode"
                entry.story = "180"
                entry.writer = "Gareth Roberts"
                entry.doctor = "10th Doctor"
                entry.airDate = "7 April 2007"
                entry.url = "dwepisode://theshakespearecode"
            } else if selectedEp == "191" {
                entry.name = "Gridlock"
                entry.image = "Gridlock"
                entry.story = "181"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "14 April 2007"
                entry.url = "dwepisode://gridlock"
            } else if selectedEp == "192" {
                entry.name = "Daleks In Manhattan"
                entry.image = "DaleksInManhattan"
                entry.story = "182a"
                entry.writer = "Helen Raynor"
                entry.doctor = "10th Doctor"
                entry.airDate = "21 April 2007"
                entry.url = "dwepisode://daleksinmanhattan"
            } else if selectedEp == "193" {
                entry.name = "Evolution Of The Daleks"
                entry.image = "EvolutionOfTheDaleks"
                entry.story = "182b"
                entry.writer = "Helen Raynor"
                entry.doctor = "10th Doctor"
                entry.airDate = "28 April 2007"
                entry.url = "dwepisode://evolutionofthedaleks"
            } else if selectedEp == "194" {
                entry.name = "The Lazarus Experiment"
                entry.image = "TheLazarusExperiment"
                entry.story = "183"
                entry.writer = "Stephen Greenhorn"
                entry.doctor = "10th Doctor"
                entry.airDate = "5 May 2007"
                entry.url = "dwepisode://thelazarusexperment"
            } else if selectedEp == "195" {
                entry.name = "42"
                entry.image = "42"
                entry.story = "184"
                entry.writer = "Chris Chibnall"
                entry.doctor = "10th Doctor"
                entry.airDate = "19 May 2007"
                entry.url = "dwepisode://42"
            } else if selectedEp == "196" {
                entry.name = "Human Nature"
                entry.image = "HumanNature"
                entry.story = "185a"
                entry.writer = "Paul Cornell"
                entry.doctor = "10th Doctor"
                entry.airDate = "26 May 2007"
                entry.url = "dwepisode://humannature"
            } else if selectedEp == "197" {
                entry.name = "The Family Of Blood"
                entry.image = "TheFamilyOfBlood"
                entry.story = "185b"
                entry.writer = "Paul Cornell"
                entry.doctor = "10th Doctor"
                entry.airDate = "2 June 2007"
                entry.url = "dwepisode://thefamilyofblood"
            } else if selectedEp == "198" {
                entry.name = "Blink"
                entry.image = "Blink"
                entry.story = "186"
                entry.writer = "Steven Moffat"
                entry.doctor = "10th Doctor"
                entry.airDate = "9 June 2007"
                entry.url = "dwepisode://blink"
            } else if selectedEp == "199" {
                entry.name = "Utopia"
                entry.image = "Utopia"
                entry.story = "187a"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "16 June 2007"
                entry.url = "dwepisode://utopia"
            } else if selectedEp == "200" {
                entry.name = "The Sound Of Drums"
                entry.image = "TheSoundOfDrums"
                entry.story = "187b"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "23 June 2007"
                entry.url = "dwepisode://thesoundofdrums"
            } else if selectedEp == "201" {
                entry.name = "Last Of The Time Lords"
                entry.image = "LastOfTheTimeLords"
                entry.story = "187c"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "30 June 2007"
                entry.url = "dwepisode://lastofthetimelords"
            } else if selectedEp == "202" {
                entry.name = "Voyage Of The Damned"
                entry.image = "VoyageOfTheDamned"
                entry.story = "188"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "25 December 2007"
                entry.url = "dwepisode://voyageofthedamned"
            } else if selectedEp == "203" {
                entry.name = "Partners In Crime"
                entry.image = "PartnersInCrime"
                entry.story = "189"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "5 April 2008"
                entry.url = "dwepisode://partnersincrime"
            } else if selectedEp == "204" {
                entry.name = "The Fires Of Pompeii"
                entry.image = "TheFiresOfPompeii"
                entry.story = "190"
                entry.writer = "James Moran"
                entry.doctor = "10th Doctor"
                entry.airDate = "12 April 2008"
                entry.url = "dwepisode://thefiresofpompeii"
            } else if selectedEp == "205" {
                entry.name = "Planet Of The Ood"
                entry.image = "PlanetOfTheOod"
                entry.story = "191"
                entry.writer = "Keith Temple"
                entry.doctor = "10th Doctor"
                entry.airDate = "19 April 2008"
                entry.url = "dwepisode://planetoftheood"
            } else if selectedEp == "206" {
                entry.name = "The Sontaran Stratagem"
                entry.image = "TheSontaranStratagem"
                entry.story = "192a"
                entry.writer = "Helen Raynor"
                entry.doctor = "10th Doctor"
                entry.airDate = "26 April 2008"
                entry.url = "dwepisode://thesontaranstratagem"
            } else if selectedEp == "207" {
                entry.name = "The Poison Sky"
                entry.image = "ThePoisonSky"
                entry.story = "192b"
                entry.writer = "Helen Raynor"
                entry.doctor = "10th Doctor"
                entry.airDate = "3 May 2008"
                entry.url = "dwepisode://thepoisonsky"
            } else if selectedEp == "208" {
                entry.name = "The Doctor's Daughter"
                entry.image = "TheDoctorsDaughter"
                entry.story = "193"
                entry.writer = "Stephen Greenhorn"
                entry.doctor = "10th Doctor"
                entry.airDate = "10 May 2008"
                entry.url = "dwepisode://thedoctorsdaughter"
            } else if selectedEp == "209" {
                entry.name = "The Unicorn And The Wasp"
                entry.image = "TheUnicornAndTheWasp"
                entry.story = "194"
                entry.writer = "Gareth Roberts"
                entry.doctor = "10th Doctor"
                entry.airDate = "17 May 2008"
                entry.url = "dwepisode://theunicornandthewasp"
            } else if selectedEp == "210" {
                entry.name = "Silence In The Library"
                entry.image = "SilenceInTheLibrary"
                entry.story = "195a"
                entry.writer = "Steven Moffat"
                entry.doctor = "10th Doctor"
                entry.airDate = "31 May 2008"
                entry.url = "dwepisode://silenceinthelibrary"
            } else if selectedEp == "211" {
                entry.name = "Forest Of The Dead"
                entry.image = "ForestOfTheDead"
                entry.story = "195b"
                entry.writer = "Steven Moffat"
                entry.doctor = "10th Doctor"
                entry.airDate = "7 June 2008"
                entry.url = "dwepisode://forestofthedead"
            } else if selectedEp == "212" {
                entry.name = "Midnight"
                entry.image = "Midnight"
                entry.story = "196"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "14 June 2008"
                entry.url = "dwepisode://midnight"
            } else if selectedEp == "213" {
                entry.name = "Turn Left"
                entry.image = "TurnLeft"
                entry.story = "197"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "21 June 2008"
                entry.url = "dwepisode://turnleft"
            } else if selectedEp == "214" {
                entry.name = "The Stolen Earth"
                entry.image = "TheStolenEarth"
                entry.story = "198a"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "28 June 2008"
                entry.url = "dwepisode://thestolenearth"
            } else if selectedEp == "215" {
                entry.name = "Journey's Earth"
                entry.image = "JourneysEnd"
                entry.story = "198b"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "5 July 2008"
                entry.url = "dwepisode://journeysend"
            } else if selectedEp == "216" {
                entry.name = "The Next Doctor"
                entry.image = "TheNextDoctor"
                entry.story = "199"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "25 December 2008"
                entry.url = "dwepisode://thenextdoctor"
            } else if selectedEp == "217" {
                entry.name = "Planet Of The Dead"
                entry.image = "PlanetOfTheDead"
                entry.story = "200"
                entry.writer = "Russell T Davis And Gareth Roberts"
                entry.doctor = "10th Doctor"
                entry.airDate = "11 April 2009"
                entry.url = "dwepisode://planetofthedead"
            } else if selectedEp == "218" {
                entry.name = "The Waters Of Mars"
                entry.image = "TheWatersOfMars"
                entry.story = "201"
                entry.writer = "Russell T Davis And Phil Ford"
                entry.doctor = "10th Doctor"
                entry.airDate = "15 November 2009"
                entry.url = "dwepisode://thewatersofmars"
            } else if selectedEp == "219" {
                entry.name = "The End Of Time - Part 1"
                entry.image = "TheEndOfTimePart1"
                entry.story = "202a"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "25 December 2009"
                entry.url = "dwepisode://theendoftimepart1"
            } else if selectedEp == "220" {
                entry.name = "The End Of Time - Part 2"
                entry.image = "TheEndOfTimePart2"
                entry.story = "202b"
                entry.writer = "Russell T Davis"
                entry.doctor = "10th Doctor"
                entry.airDate = "1 January 2010"
                entry.url = "dwepisode://theendoftimepart2"
            } else if selectedEp == "221" {
                entry.name = "The Eleventh Hour"
                entry.image = "TheEleventhHour"
                entry.story = "203"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "3 April 2010"
                entry.url = "dwepisode://theeleventhhour"
            } else if selectedEp == "222" {
                entry.name = "The Beast Below"
                entry.image = "TheBeastBelow"
                entry.story = "204"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "10 April 2010"
                entry.url = "dwepisode://thebeastbelow"
            } else if selectedEp == "223" {
                entry.name = "Victory Of The Daleks"
                entry.image = "VictoryOfTheDaleks"
                entry.story = "205"
                entry.writer = "Mark Gatiss"
                entry.doctor = "11th Doctor"
                entry.airDate = "17 April 2010"
                entry.url = "dwepisode://victoryofthedaleks"
            } else if selectedEp == "224" {
                entry.name = "The Time Of Angels"
                entry.image = "TheTimeOfAngels"
                entry.story = "206a"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "24 April 2010"
                entry.url = "dwepisode://thetimeofangels"
            } else if selectedEp == "225" {
                entry.name = "Flesh And Stone"
                entry.image = "FleshAndStone"
                entry.story = "206b"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "1 May 2010"
                entry.url = "dwepisode://fleshandstone"
            } else if selectedEp == "226" {
                entry.name = "The Vampires Of Venice"
                entry.image = "TheVampiresOfVenice"
                entry.story = "207"
                entry.writer = "Toby Whithouse"
                entry.doctor = "11th Doctor"
                entry.airDate = "8 May 2010"
                entry.url = "dwepisode://thevampiresofvenice"
            } else if selectedEp == "227" {
                entry.name = "Amy's Choice"
                entry.image = "AmysChoice"
                entry.story = "208"
                entry.writer = "Simon Nye"
                entry.doctor = "11th Doctor"
                entry.airDate = "15 May 2010"
                entry.url = "dwepisode://amyschoice"
            } else if selectedEp == "228" {
                entry.name = "The Hungry Earth"
                entry.image = "TheHungryEarth"
                entry.story = "209a"
                entry.writer = "Chris Chibnall"
                entry.doctor = "11th Doctor"
                entry.airDate = "22 May 2010"
                entry.url = "dwepisode://thehungryearth"
            } else if selectedEp == "229" {
                entry.name = "Cold Blood"
                entry.image = "ColdBlood"
                entry.story = "209b"
                entry.writer = "Chris Chibnall"
                entry.doctor = "11th Doctor"
                entry.airDate = "29 May 2010"
                entry.url = "dwepisode://coldblood"
            } else if selectedEp == "230" {
                entry.name = "Vincent And The Doctor"
                entry.image = "VincentAndTheDoctor"
                entry.story = "210"
                entry.writer = "Richard Curtis"
                entry.doctor = "11th Doctor"
                entry.airDate = "5 June 2010"
                entry.url = "dwepisode://vincentandthedoctor"
            } else if selectedEp == "231" {
                entry.name = "The Lodger"
                entry.image = "TheLodger"
                entry.story = "211"
                entry.writer = "Gareth Roberts"
                entry.doctor = "11th Doctor"
                entry.airDate = "12 June 2010"
                entry.url = "dwepisode://thelodger"
            } else if selectedEp == "232" {
                entry.name = "The Pandorica Opens"
                entry.image = "ThePandoricaOpens"
                entry.story = "212a"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "19 June 2010"
                entry.url = "dwepisode://thepandoricaopens"
            } else if selectedEp == "233" {
                entry.name = "The Big Bang"
                entry.image = "TheBigBang"
                entry.story = "212b"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "26 June 2010"
                entry.url = "dwepisode://thebigbang"
            } else if selectedEp == "234" {
                entry.name = "A Christmas Carol"
                entry.image = "AChristmasCarol"
                entry.story = "213"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "25 December 2010"
                entry.url = "dwepisode://achristmascarol"
            } else if selectedEp == "235" {
                entry.name = "The Impossible Astronaut"
                entry.image = "TheImpossibleAstronaut"
                entry.story = "214a"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "23 April 2011"
                entry.url = "dwepisode://theimpossibleastronaut"
            } else if selectedEp == "236" {
                entry.name = "Day Of The Moon"
                entry.image = "DayOfTheMoon"
                entry.story = "214b"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "30 April 2011"
                entry.url = "dwepisode://dayofthemoon"
            } else if selectedEp == "237" {
                entry.name = "The Curse Of The Black Spot"
                entry.image = "TheCurseOfTheBlackSpot"
                entry.story = "215"
                entry.writer = "Stephen Thompson"
                entry.doctor = "11th Doctor"
                entry.airDate = "7 May 2011"
                entry.url = "dwepisode://thecurseoftheblackspot"
            } else if selectedEp == "238" {
                entry.name = "The Doctor's Wife"
                entry.image = "TheDoctorsWife"
                entry.story = "216"
                entry.writer = "Neil Gaiman"
                entry.doctor = "11th Doctor"
                entry.airDate = "14 May 2011"
                entry.url = "dwepisode://thedoctorswife"
            } else if selectedEp == "239" {
                entry.name = "The Rebel Flesh"
                entry.image = "TheRebelFlesh"
                entry.story = "217a"
                entry.writer = "Matthew Graham"
                entry.doctor = "11th Doctor"
                entry.airDate = "21 May 2011"
                entry.url = "dwepisode://therebelflesh"
            } else if selectedEp == "240" {
                entry.name = "The Almost People"
                entry.image = "TheAlmostPeople"
                entry.story = "217b"
                entry.writer = "Matthew Graham"
                entry.doctor = "11th Doctor"
                entry.airDate = "28 May 2011"
                entry.url = "dwepisode://thealmostpeople"
            } else if selectedEp == "241" {
                entry.name = "A Good Man Goes To War"
                entry.image = "AGoodManGoesToWar"
                entry.story = "218"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "4 June 2011"
                entry.url = "dwepisode://agoodmangoestowar"
            } else if selectedEp == "242" {
                entry.name = "Let's Kill Hitler"
                entry.image = "LetsKillHitler"
                entry.story = "219"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "27 August 2011"
                entry.url = "dwepisode://letskillhitler"
            } else if selectedEp == "243" {
                entry.name = "Night Terrors"
                entry.image = "NightTerrors"
                entry.story = "220"
                entry.writer = "Mark Gatiss"
                entry.doctor = "11th Doctor"
                entry.airDate = "3 September 2011"
                entry.url = "dwepisode://nightterrors"
            } else if selectedEp == "244" {
                entry.name = "The Girl Who Waited"
                entry.image = "TheGirlWhoWaited"
                entry.story = "221"
                entry.writer = "Tom MacRae"
                entry.doctor = "11th Doctor"
                entry.airDate = "10 September 2011"
                entry.url = "dwepisode://thegirlwhowaited"
            } else if selectedEp == "245" {
                entry.name = "The God Complex"
                entry.image = "TheGodComplex"
                entry.story = "222"
                entry.writer = "Toby Whithouse"
                entry.doctor = "11th Doctor"
                entry.airDate = "17 September 2011"
                entry.url = "dwepisode://thegodcomplex"
            } else if selectedEp == "246" {
                entry.name = "Closing Time"
                entry.image = "ClosingTime"
                entry.story = "223"
                entry.writer = "Gareth Roberts"
                entry.doctor = "11th Doctor"
                entry.airDate = "24 September 2011"
                entry.url = "dwepisode://closingtime"
            } else if selectedEp == "247" {
                entry.name = "The Wedding Of River Song"
                entry.image = "TheWeddingOfRiverSong"
                entry.story = "224"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "1 October 2011"
                entry.url = "dwepisode://theweddingofriversong"
            } else if selectedEp == "248" {
                entry.name = "The Doctor, The Widow And The Wardrobe"
                entry.image = "TheDoctorTheWidowAndTheWardrobe"
                entry.story = "225"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "25 December 2011"
                entry.url = "dwepisode://thedoctorthewidowandthewardrobe"
            } else if selectedEp == "249" {
                entry.name = "Asylum Of The Daleks"
                entry.image = "AsylumOfTheDaleks"
                entry.story = "226"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "1 September 2012"
                entry.url = "dwepisode://asylumofthedaleks"
            } else if selectedEp == "250" {
                entry.name = "Dinosaurs On A Spaceship"
                entry.image = "DinosaursOnASpaceship"
                entry.story = "227"
                entry.writer = "Chris Chibnall"
                entry.doctor = "11th Doctor"
                entry.airDate = "8 September 2012"
                entry.url = "dwepisode://dinosaursonaspaceship"
            } else if selectedEp == "251" {
                entry.name = "A Town Called Mercy"
                entry.image = "ATownCalledMercy"
                entry.story = "228"
                entry.writer = "Toby Whithouse"
                entry.doctor = "11th Doctor"
                entry.airDate = "15 September 2012"
                entry.url = "dwepisode://atowncalledmercy"
            } else if selectedEp == "252" {
                entry.name = "The Power Of Three"
                entry.image = "ThePowerOfThree"
                entry.story = "229"
                entry.writer = "Chris Chibnall"
                entry.doctor = "11th Doctor"
                entry.airDate = "22 September 2012"
                entry.url = "dwepisode://thepowerofthree"
            } else if selectedEp == "253" {
                entry.name = "The Angels Take Manhattan"
                entry.image = "TheAngelsTakeManhattan"
                entry.story = "230"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "29 September 2012"
                entry.url = "dwepisode://theangelstakemanhattan"
            } else if selectedEp == "254" {
                entry.name = "The Snowmen"
                entry.image = "TheSnowmen"
                entry.story = "231"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "25 December 2012"
                entry.url = "dwepisode://thesnowmen"
            } else if selectedEp == "255" {
                entry.name = "The Bells Of Saint John"
                entry.image = "TheBellsOfSaintJohn"
                entry.story = "232"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "30 March 2013"
                entry.url = "dwepisode://thebellsofsaintjohn"
            } else if selectedEp == "256" {
                entry.name = "The Rings Of Akhaten"
                entry.image = "TheRingsOfAkhaten"
                entry.story = "233"
                entry.writer = "Neil Cross"
                entry.doctor = "11th Doctor"
                entry.airDate = "6 April 2013"
                entry.url = "dwepisode://theringsofakhaten"
            } else if selectedEp == "257" {
                entry.name = "Cold War"
                entry.image = "ColdWar"
                entry.story = "234"
                entry.writer = "Mark Gatiss"
                entry.doctor = "11th Doctor"
                entry.airDate = "13 April 2013"
                entry.url = "dwepisode://coldwar"
            } else if selectedEp == "258" {
                entry.name = "Hide"
                entry.image = "Hide"
                entry.story = "235"
                entry.writer = "Neil Cross"
                entry.doctor = "11th Doctor"
                entry.airDate = "20 April 2013"
                entry.url = "dwepisode://hide"
            } else if selectedEp == "259" {
                entry.name = "Journey To The Centre Of The TARDIS"
                entry.image = "JourneyToTheCentreOfTheTARDIS"
                entry.story = "236"
                entry.writer = "Stephen Thompson"
                entry.doctor = "11th Doctor"
                entry.airDate = "27 April 2013"
                entry.url = "dwepisode://journeytothecentreofthetardis"
            } else if selectedEp == "260" {
                entry.name = "The Crimson Horror"
                entry.image = "TheCrimsonHorror"
                entry.story = "237"
                entry.writer = "Mark Gatiss"
                entry.doctor = "11th Doctor"
                entry.airDate = "4 May 2013"
                entry.url = "dwepisode://thecrimsonhorror"
            } else if selectedEp == "261" {
                entry.name = "Nightmare In Silver"
                entry.image = "NightmareInSilver"
                entry.story = "238"
                entry.writer = "Neil Gaiman"
                entry.doctor = "11th Doctor"
                entry.airDate = "11 May 2013"
                entry.url = "dwepisode://nightmareinsilver"
            } else if selectedEp == "262" {
                entry.name = "The Name Of The Doctor"
                entry.image = "TheNameOfTheDoctor"
                entry.story = "239"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "18 May 2013"
                entry.url = "dwepisode://thenameofthedoctor"
            } else if selectedEp == "263" {
                entry.name = "The Day Of The Doctor"
                entry.image = "TheDayOfTheDoctor"
                entry.story = "240"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "23 November 2013"
                entry.url = "dwepisode://thedayofthedoctor"
            } else if selectedEp == "264" {
                entry.name = "The Time Of The Doctor"
                entry.image = "TheTimeOfTheDoctor"
                entry.story = "241"
                entry.writer = "Steven Moffat"
                entry.doctor = "11th Doctor"
                entry.airDate = "25 December 2013"
                entry.url = "dwepisode://thetimeofthedoctor"
            } else if selectedEp == "265" {
                entry.name = "Deep Breath"
                entry.image = "DeepBreath"
                entry.story = "242"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "23 August 2014"
                entry.url = "dwepisode://deepbreath"
            } else if selectedEp == "266" {
                entry.name = "Into The Dalek"
                entry.image = "IntoTheDalek"
                entry.story = "243"
                entry.writer = "Phil Ford And Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "30 August 2014"
                entry.url = "dwepisode://intothedalek"
            } else if selectedEp == "267" {
                entry.name = "Robot Of Sherwood"
                entry.image = "RobotOfSherwood"
                entry.story = "244"
                entry.writer = "Mark Gatiss"
                entry.doctor = "12th Doctor"
                entry.airDate = "6 September 2014"
                entry.url = "dwepisode://robotofsherwood"
            } else if selectedEp == "268" {
                entry.name = "Listen"
                entry.image = "Listen"
                entry.story = "245"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "13 September 2014"
                entry.url = "dwepisode://listen"
            } else if selectedEp == "269" {
                entry.name = "Time Heist"
                entry.image = "TimeHeist"
                entry.story = "246"
                entry.writer = "Stephen Thompson And Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "20 September 2014"
                entry.url = "dwepisode://timeheist"
            } else if selectedEp == "270" {
                entry.name = "The Caretaker"
                entry.image = "TheCaretaker"
                entry.story = "247"
                entry.writer = "Gareth Roberts And Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "27 September 2014"
                entry.url = "dwepisode://thecaretaker"
            } else if selectedEp == "271" {
                entry.name = "Kill The Moon"
                entry.image = "KillTheMoon"
                entry.story = "248"
                entry.writer = "Peter Harness"
                entry.doctor = "12th Doctor"
                entry.airDate = "4 October 2014"
                entry.url = "dwepisode://killthemoon"
            } else if selectedEp == "272" {
                entry.name = "Mummy On The Orient Express"
                entry.image = "MummyOnTheOrientExpress"
                entry.story = "249"
                entry.writer = "Jamie Mathieson"
                entry.doctor = "12th Doctor"
                entry.airDate = "11 October 2014"
                entry.url = "dwepisode://mummyontheorientexpress"
            } else if selectedEp == "273" {
                entry.name = "Flatline"
                entry.image = "Flatline"
                entry.story = "250"
                entry.writer = "Jamie Mathieson"
                entry.doctor = "12th Doctor"
                entry.airDate = "18 October 2014"
                entry.url = "dwepisode://flatline"
            } else if selectedEp == "274" {
                entry.name = "In The Forest Of The Night"
                entry.image = "InTheForestOfTheNight"
                entry.story = "251"
                entry.writer = "Frank Cottrell-Boyce"
                entry.doctor = "12th Doctor"
                entry.airDate = "25 October 2014"
                entry.url = "dwepisode://intheforestofthenight"
            } else if selectedEp == "275" {
                entry.name = "Dark Water"
                entry.image = "DarkWater"
                entry.story = "252a"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "1 November 2014"
                entry.url = "dwepisode://darkwater"
            } else if selectedEp == "276" {
                entry.name = "Death In Heaven"
                entry.image = "DeathInHeaven"
                entry.story = "252b"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "8 November 2014"
                entry.url = "dwepisode://deathinheaven"
            } else if selectedEp == "277" {
                entry.name = "Last Christmas"
                entry.image = "LastChristmas"
                entry.story = "253"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "25 December 2014"
                entry.url = "dwepisode://lastchristmas"
            } else if selectedEp == "278" {
                entry.name = "The Magician's Apprentice"
                entry.image = "TheMagiciansApprentice"
                entry.story = "254a"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "19 September 2015"
                entry.url = "dwepisode://themagiciansapprentice"
            } else if selectedEp == "279" {
                entry.name = "The Witch's Familiar"
                entry.image = "TheWitchsFamiliar"
                entry.story = "254b"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "26 September 2015"
                entry.url = "dwepisode://thewitchsfamiliar"
            } else if selectedEp == "280" {
                entry.name = "Under The Lake"
                entry.image = "UnderTheLake"
                entry.story = "255a"
                entry.writer = "Toby Whithouse"
                entry.doctor = "12th Doctor"
                entry.airDate = "3 October 2015"
                entry.url = "dwepisode://underthelake"
            } else if selectedEp == "281" {
                entry.name = "Before The Flood"
                entry.image = "BeforeTheFlood"
                entry.story = "255b"
                entry.writer = "Toby Whithouse"
                entry.doctor = "12th Doctor"
                entry.airDate = "10 October 2015"
                entry.url = "dwepisode://beforethefloor"
            } else if selectedEp == "282" {
                entry.name = "The Girl Who Waited"
                entry.image = "TheGirlWhoWaited"
                entry.story = "256"
                entry.writer = "Jamie Mathieson And Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "17 October 2015"
                entry.url = "dwepisode://thegirlwhodied"
            } else if selectedEp == "283" {
                entry.name = "The Woman Who Lived"
                entry.image = "TheWomanWhoLived"
                entry.story = "257"
                entry.writer = "Catherine Tregenna"
                entry.doctor = "12th Doctor"
                entry.airDate = "24 October 2015"
                entry.url = "dwepisode://thewomanwholived"
            } else if selectedEp == "284" {
                entry.name = "The Zygon Invasion"
                entry.image = "TheZygonInvasion"
                entry.story = "258a"
                entry.writer = "Peter Harness"
                entry.doctor = "12th Doctor"
                entry.airDate = "31 October 2015"
                entry.url = "dwepisode://thezygoninvasion"
            } else if selectedEp == "285" {
                entry.name = "The Zygon Inversion"
                entry.image = "TheZygonInversiom"
                entry.story = "258b"
                entry.writer = "Peter Harness And Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "7 November 2015"
                entry.url = "dwepisode://thezygoninversion"
            } else if selectedEp == "286" {
                entry.name = "Sleep No More"
                entry.image = "SleepNoMore"
                entry.story = "259"
                entry.writer = "Mark Gatiss"
                entry.doctor = "12th Doctor"
                entry.airDate = "14 November 2015"
                entry.url = "dwepisode://sleepnomore"
            } else if selectedEp == "287" {
                entry.name = "Face The Raven"
                entry.image = "FaceTheRaven"
                entry.story = "260"
                entry.writer = "Sarah Dollard"
                entry.doctor = "12th Doctor"
                entry.airDate = "21 November 2015"
                entry.url = "dwepisode://facetheraven"
            } else if selectedEp == "288" {
                entry.name = "Heaven Sent"
                entry.image = "HeavenSent"
                entry.story = "261"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "28 November 2015"
                entry.url = "dwepisode://heavensent"
            } else if selectedEp == "289" {
                entry.name = "Hell Bent"
                entry.image = "HellBent"
                entry.story = "262"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "5 December 2015"
                entry.url = "dwepisode://hellbent"
            } else if selectedEp == "290" {
                entry.name = "The Husbands Of River Song"
                entry.image = "TheHusbandsOfRiverSong"
                entry.story = "263"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "25 December 2015"
                entry.url = "dwepisode://thehusbandsofriversong"
            } else if selectedEp == "291" {
                entry.name = "The Return Of Doctor Mysterio"
                entry.image = "TheReturnOfDoctorMysterio"
                entry.story = "264"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "25 December 2016"
                entry.url = "dwepisode://thereturnofdoctormysterio"
            } else if selectedEp == "292" {
                entry.name = "The Pilot"
                entry.image = "ThePilot"
                entry.story = "265"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "15 April 2017"
                entry.url = "dwepisode://thepilot"
            } else if selectedEp == "293" {
                entry.name = "Smile"
                entry.image = "Smile"
                entry.story = "266"
                entry.writer = "Frank Cottrell-Boyce"
                entry.doctor = "12th Doctor"
                entry.airDate = "22 April 2017"
                entry.url = "dwepisode://smile"
            } else if selectedEp == "294" {
                entry.name = "Thin Ice"
                entry.image = "ThinIce"
                entry.story = "267"
                entry.writer = "Sarah Dollard"
                entry.doctor = "12th Doctor"
                entry.airDate = "29 April 2017"
                entry.url = "dwepisode://thinice"
            } else if selectedEp == "295" {
                entry.name = "Knock Knock"
                entry.image = "KnockKnock"
                entry.story = "268"
                entry.writer = "Mike Bartlett"
                entry.doctor = "12th Doctor"
                entry.airDate = "6 May 2017"
                entry.url = "dwepisode://knockknock"
            } else if selectedEp == "296" {
                entry.name = "Oxygen"
                entry.image = "Oxygen"
                entry.story = "269"
                entry.writer = "Jamie Mathieson"
                entry.doctor = "12th Doctor"
                entry.airDate = "13 May 2017"
                entry.url = "dwepisode://oxygen"
            } else if selectedEp == "297" {
                entry.name = "Extremis"
                entry.image = "Extremis"
                entry.story = "270"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "20 May 2017"
                entry.url = "dwepisode://extremis"
            } else if selectedEp == "298" {
                entry.name = "The Pyramid At The End Of The World"
                entry.image = "ThePyramidAtTheEndOfTheWorld"
                entry.story = "271"
                entry.writer = "Peter Harness And Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "27 May 2017"
                entry.url = "dwepisode://thepyramidattheendoftheworld"
            } else if selectedEp == "299" {
                entry.name = "The Lie Of The Land"
                entry.image = "TheLieOfTheLand"
                entry.story = "272"
                entry.writer = "Toby Whithouse"
                entry.doctor = "12th Doctor"
                entry.airDate = "3 June 2017"
                entry.url = "dwepisode://thelieoftheland"
            } else if selectedEp == "300" {
                entry.name = "Empress Of Mars"
                entry.image = "EmpressOfMars"
                entry.story = "273"
                entry.writer = "Mark Gatiss"
                entry.doctor = "12th Doctor"
                entry.airDate = "10 June 2017"
                entry.url = "dwepisode://empressofmars"
            } else if selectedEp == "301" {
                entry.name = "The Eaters Of Light"
                entry.image = "TheEatersOfLight"
                entry.story = "274"
                entry.writer = "Rona Munro"
                entry.doctor = "12th Doctor"
                entry.airDate = "17 June 2017"
                entry.url = "dwepisode://theeatersoflight"
            } else if selectedEp == "302" {
                entry.name = "World Enough And Time"
                entry.image = "WorldEnoughAndTime"
                entry.story = "275a"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "24 June 2017"
                entry.url = "dwepisode://worldenoughandtime"
            } else if selectedEp == "303" {
                entry.name = "The Doctor Falls"
                entry.image = "TheDoctorFalls"
                entry.story = "275b"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "1 July 2017"
                entry.url = "dwepisode://thedoctorfalls"
            } else if selectedEp == "304" {
                entry.name = "Twice Upon A Time"
                entry.image = "TwiceUponATime"
                entry.story = "276"
                entry.writer = "Steven Moffat"
                entry.doctor = "12th Doctor"
                entry.airDate = "25 December 2017"
                entry.url = "dwepisode://twiceuponatime"
            } else if selectedEp == "305" {
                entry.name = "The Woman Who Fell To Earth"
                entry.image = "TheWomanWhoFellToEarth"
                entry.story = "277"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "7 October 2018"
                entry.url = "dwepisode://thewomanwhofelltoearth"
            } else if selectedEp == "306" {
                entry.name = "The Ghost Monument"
                entry.image = "TheGhostMonument"
                entry.story = "278"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "14 October 2018"
                entry.url = "dwepisode://theghostmonument"
            } else if selectedEp == "307" {
                entry.name = "Rosa"
                entry.image = "Rosa"
                entry.story = "279"
                entry.writer = "Malorie Blackman And Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "21 October 2018"
                entry.url = "dwepisode://rosa"
            } else if selectedEp == "308" {
                entry.name = "Arachnids In The UK"
                entry.image = "ArachnidsInTheUK"
                entry.story = "280"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "28 October 2018"
                entry.url = "dwepisode://arachnidsintheuk"
            } else if selectedEp == "309" {
                entry.name = "The Tsuranga Conundrum"
                entry.image = "TheTsurangaConundrum"
                entry.story = "281"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "4 November 2018"
                entry.url = "dwepisode://thetsurangaconundrum"
            } else if selectedEp == "310" {
                entry.name = "Demons Of The Punjab"
                entry.image = "DemonsOfThePunjab"
                entry.story = "282"
                entry.writer = "Vinay Patel"
                entry.doctor = "13th Doctor"
                entry.airDate = "11 November 2018"
                entry.url = "dwepisode://demonsofthepunjab"
            } else if selectedEp == "311" {
                entry.name = "Kerblam!"
                entry.image = "Kerblam"
                entry.story = "283"
                entry.writer = "Pete McTighe"
                entry.doctor = "13th Doctor"
                entry.airDate = "18 November 2018"
                entry.url = "dwepisode://kerblam"
            } else if selectedEp == "312" {
                entry.name = "The Witchfinders"
                entry.image = "TheWitchfinders"
                entry.story = "284"
                entry.writer = "Joy Wilkinson"
                entry.doctor = "13th Doctor"
                entry.airDate = "25 November 2018"
                entry.url = "dwepisode://thewitchfinders"
            } else if selectedEp == "313" {
                entry.name = "It Takes You Away"
                entry.image = "ItTakesYouAway"
                entry.story = "285"
                entry.writer = "Ed Hime"
                entry.doctor = "13th Doctor"
                entry.airDate = "2 December 2018"
                entry.url = "dwepisode://ittakesyouaway"
            } else if selectedEp == "314" {
                entry.name = "The Battle Of Ranskoor Av Kolos"
                entry.image = "TheBattleOfRanskoorAvKolos"
                entry.story = "286"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "9 December 2018"
                entry.url = "dwepisode://thebattleofranskooravkolos"
            } else if selectedEp == "315" {
                entry.name = "Resolution"
                entry.image = "Resolution"
                entry.story = "287"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "1 January 2019"
                entry.url = "dwepisode://resolution"
            } else if selectedEp == "316" {
                entry.name = "Spyfall - Part 1"
                entry.image = "SpyfallPart1"
                entry.story = "288a"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "1 January 2020"
                entry.url = "dwepisode://spyfallpart1"
            } else if selectedEp == "317" {
                entry.name = "Spyfall - Part 2"
                entry.image = "SpyfallPart2"
                entry.story = "288b"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "5 January 2020"
                entry.url = "dwepisode://spyfallpart2"
            } else if selectedEp == "318" {
                entry.name = "Orphan 55"
                entry.image = "Orphan55"
                entry.story = "289"
                entry.writer = "Ed Hime"
                entry.doctor = "13th Doctor"
                entry.airDate = "12 January 2020"
                entry.url = "dwepisode://orphan55"
            } else if selectedEp == "319" {
                entry.name = "Nikola Tesla's Night Of Terror"
                entry.image = "NikolaTeslasNightOfTerror"
                entry.story = "290"
                entry.writer = "Nina Metivier"
                entry.doctor = "13th Doctor"
                entry.airDate = "19 January 2020"
                entry.url = "dwepisode://nikolateslasnightofterror"
            } else if selectedEp == "320" {
                entry.name = "Fugitive Of The Judoon"
                entry.image = "FugitiveOfTheJudoon"
                entry.story = "291"
                entry.writer = "Vinay Patel And Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "26 January 2020"
                entry.url = "dwepisode://fugitiveofthejudoon"
            } else if selectedEp == "321" {
                entry.name = "Praxeus"
                entry.image = "Praxeus"
                entry.story = "292"
                entry.writer = "Pete McTighe And Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "2 February 2020"
                entry.url = "dwepisode://praxeus"
            } else if selectedEp == "322" {
                entry.name = "Can You Hear Me?"
                entry.image = "CanYouHearMe"
                entry.story = "293"
                entry.writer = "Charlene James And Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "9 February 2020"
                entry.url = "dwepisode://canyouhearme"
            } else if selectedEp == "323" {
                entry.name = "The Haunting Of Villa Diodati"
                entry.image = "TheHauntingOfVillaDiodati"
                entry.story = "294"
                entry.writer = "Maxine Alderton"
                entry.doctor = "13th Doctor"
                entry.airDate = "16 February 2020"
                entry.url = "dwepisode://thehauntingofvilladiodati"
            } else if selectedEp == "324" {
                entry.name = "Ascension Of The Cybermen"
                entry.image = "AscensionOfTheCybermen"
                entry.story = "295a"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "23 February 2020"
                entry.url = "dwepisode://ascensionofthecybermen"
            } else if selectedEp == "325" {
                entry.name = "The Timeless Children"
                entry.image = "TheTimelessChildren"
                entry.story = "295b"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "1 March 2020"
                entry.url = "dwepisode://thetimelesschildren"
            } else if selectedEp == "326" {
                entry.name = "Revolution Of The Daleks"
                entry.image = "RevolutionOfTheDaleks"
                entry.story = "296"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "1 January 2021"
                entry.url = "dwepisode://revolutionofthedaleks"
            } else if selectedEp == "327" {
                entry.name = "The Halloween Apocalypse"
                entry.image = "TheHalloweenApocalypse"
                entry.story = "297a"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "31 October 2021"
                entry.url = "dwepisode://thehalloweenapocalypse"
            } else if selectedEp == "328" {
                entry.name = "War Of The Sontarans"
                entry.image = "WarOfTheSontaran"
                entry.story = "297b"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "7 November 2021"
                entry.url = "dwepisode://warofthesontarans"
            } else if selectedEp == "329" {
                entry.name = "Once, Upon Time"
                entry.image = "OnceUponTime"
                entry.story = "297c"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "14 November 2021"
                entry.url = "dwepisode://onceupontime"
            } else if selectedEp == "330" {
                entry.name = "Village Of The Angels"
                entry.image = "VillageOfTheAngels"
                entry.story = "297d"
                entry.writer = "Chris Chibnall And Maxine Alderton"
                entry.doctor = "13th Doctor"
                entry.airDate = "21 November 2021"
                entry.url = "dwepisode://villageoftheangels"
            } else if selectedEp == "331" {
                entry.name = "Survivors Of The Flux"
                entry.image = "SurvivorsOfTheFlux"
                entry.story = "297e"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "28 November 2021"
                entry.url = "dwepisode://survivorsoftheflux"
            } else if selectedEp == "332" {
                entry.name = "The Vanquishers"
                entry.image = "TheVanquishers"
                entry.story = "297f"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "5 December 2021"
                entry.url = "dwepisode://thevanquishers"
            } else if selectedEp == "333" {
                entry.name = "Eve Of The Daleks"
                entry.image = "EveOfTheDaleks"
                entry.story = "298"
                entry.writer = "Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "1 January 2022"
                entry.url = "dwepisode://eveofthedaleks"
            } else if selectedEp == "334" {
                entry.name = "Legend Of The Sea Devils"
                entry.image = "LegendOfTheSeaDevils"
                entry.story = "299"
                entry.writer = "Ella Road And Chris Chibnall"
                entry.doctor = "13th Doctor"
                entry.airDate = "17 April 2022"
                entry.url = "dwepisode://legendoftheseadevils"
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
