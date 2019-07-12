// import 'package:flutter/material.dart';
// import 'package:flutter_linkify/flutter_linkify.dart';

final String url_cry_malware = "https://coinpedia.org/news/firefox-upgrades-to-ban-crypto-mining-malware/";

const String ethTextFonts =
    "\u03BB \n\tgreek lambda \n\u1688 \n\togham tinne \n\u304B \n\tjapanese ka \n\u4E07 \n\tcjk ideograph 10,000"
    "\n\u4DC1 \n\tiching \n\u1300 \n\tethiopic symbol \n\u{13080} \n\tegyptian eye";

const String ethTextIntro =
    "Hello and welcome to ethereum sync. This app aims to provide the information needed to "
    "successfully intall and then synchronise your computer with the ethereum blockchian."
    "\n\nWe will be discussing some the main concepts of the blockchain so that you will have an overview of the "
    "technologies envolved. This app will concentrate on running the blockchain and less about discussing the myriad uses "
    "possible with this new technology."
    "\n\nPrimarily we will be doing this on the Linux and Windows operating systems but there will also "
    "be information for Mac users. Mac users will be able to follow the linux examples to achieve the same results. The file directory"
    "structures are different in the 3 Openting Systems (O.S's from now on) but the results will be the same."
    "\n\nWhat this app will not do: \tThis app is an into into how to sync with the ethereum blochain as its important to get to know the blockchain and" 
    "to begin to trust it through reading and interaction. To run the ethereum blockchain it is not even necessary to have "
    "an ethereum account but this app will show you how to how to do this in 3-5 mins. This app will not focus on mining, another large "
    "area of interest to cryptocurrency enthusiasts, but we will take a look at it because the basic concepts are not that difficult to grasp: serious needs for hardware, software, electricity and GPU thermal cooling"
    "\n\nWe will begin by looking at some of the possible programming languages and clients available for users to "
    "download and work with the ethereum platform. We will be using the Go language because of its stability and ease of use. "
    "This means we will be using the Geth client for ethereum and normal JavaScript to help find out additional information."
    "\n\nWe will also take a quick look at some of the ethereum wallets out there like Mist and online favorite My Ethernet Wallet."
    "\n\nText, images and screenshots will be used to provide glimpses of ethereum in action. Screenshots are from Linux Fedora 30, Windows 10 1903 or Oracle's "
    "VirtualBox but you can "
    "\n\nWe will also take a look at ERC20 coins and what they mean for people, businesses and the greater Ethereum environment in general. "
    "\n\nThe split that happend in 2015 created Etheruem, eth, and Ethereum Classic, etc. We'll take a quick look at etc and how to use "
    "the information in this app to use the exact same processes but using a different blockchain."
    "\n\nAbout setup: System Setup"
    "\n\n";

const String ethTextLinks =
    "\n\nEthereum links to mobile apps and respective websites: "
    "\nWhat apps are helpful for the ethereum enthusias? "
    "\n\nETHNews: This app has been growing steadily over the years. They usually have good articles on the global "
    "eth community. They have now introduced video reports updated daily which are linked to YouTube. There's also "
    "a section on basic explanations of the technologies involved such as EDCCs (smart contracts) and Dapps (decentralized apps) . Their website is \"https://www.ethnews.com/\" and "
    "you can find the android app here: https://play.google.com/store/apps/details?id=com.ethnews.android&hl=en while "
    "the apple app is here: https://itunes.apple.com/us/app/ethnews-ethereum-news-resources/id1163849810?ls=1&mt=8"
    "\n\nCoin Market Cap: They have a web presence here: https://coinmarketcap.com/ but it has as much info in the mobile "
    "apps. This app is good for looking at all the available coins and the associated charts. Android https://goo.gl/2SGzt5 "
    "and Apple https://goo.gl/dkLXEC"
    "\n\nShapeShift and CoinCap are both from French company ShapeShift. ShapeShift is used to convert coins quickly. It is basically "
    "an exchange but without having to sign up for full exchange services. Android app: https://play.google.com/store/apps/details?id=com.shapeshift.droid_shapeshift "
    "and Apple app: https://itunes.apple.com/ie/app/shapeshift-crypto-converter/id996569075?mt=8 "
    "Coincap.io also have an API for any programmers who want to use their live data. Android: https://play.google.com/store/apps/details?id=io.coinCap.coinCap "
    "\n\nEthereum Stats is a small app but gives all the necessary details on Ethereum in a concise format. Android: "
    "https://play.google.com/store/apps/details?id=com.christiangrieger.ethereumstats "
    "The author also has an app for Etherum Classic that is in the same format. Android: https://play.google.com/store/apps/details?id=com.christiangrieger.ethereumclassicstats"
    "\n\nWarning: Do not download any app that off you ethereum by using resources on your mobile phone. These apps promise "
    "to reward with crypto coins of various flavors. Basically, this is a scam to use up processing power and memory on one's phone "
    "but in reality the person or organization benefitting the most is the write of the app and not the person who "
    "has downloaded and installed it. The app will than start to eat your mobile phone computing cycles and not stop. "
    "One may not notice this at first but it will become evident very soon as the battery will start to drain much faster, the phone"
    "will also start to heat heavily. There will then be a competition for network services and, thus, bandwidth will be in short supply. All "
    "of this work is then going to reward the program designer and only a pittance of any generated crypto coins will "
    "be passed on to the mobile phone owner. Note that this is legal as these apps wouldn't be on the Play store if they "
    "were not. However, there are general moves by the web browser companies to stop this very same occurrance from "
    "happening online. 2018.09 saw Firefox forbid \'cryptojacking using cryptocsrypts\' for doing the exact same thing; using up the users\'s "
    "computer processing cycles in the background while the webpage is open. cf link Firefox Upgrades to Ban Crypto Mining Malware "
    "https://coinpedia.org/news/firefox-upgrades-to-ban-crypto-mining-malware/"
    "\n\n";
    // "click this link : ${url_cry_malware}"
    
const String ethTextTop5 = "\n\nHere we have the top 5-8 apps, websites and companies to browse and install:"
    "\n\nWallets - Online "
    "\n\nWallets - Standalone "
    "\n\nWallets - Cold Storage "
    "\n\nExchanges - USA, EU, JP"
    "\n\n ";

const String ethTextFounders = "\n\nWho are the founders of Ethereum?"
    "\n\nEthereum was proposed in late 2013 by programmer Vitalik Buterin. An online crowdsale took place in the summer of 2014 to raise funds. "
    "\n\nThe ethereum system went live in 2015.07.30 and the origianl authors were Vitalik Buterin, Joseph Lubin and Gavin Wood. "
    "\n\nThe collapse of the DAO project in 2016 caused a split, fork between the original chain, ethereum classic ETC, and the new ethereum ETH. "
    "\n\nEthereum was quiet then for another year until mid-end of 2017 when cryptocurrencies in gnereal became noted and admired for their Distributed Ledger Technology "
    "and also as instruments of monetary exchange.\n";

const String ethTextCurrentState = "\n\nWhat is the current state today?";


const String ethTextMiners =
    "\n\nDisclosure: The author is currently not synced with the ethereum or classic blockchain. "
    "\n\nThere are 3 main reasons for this:"
    "\n\n1: Blockchains require electricity and time to execute; cryptograpic computations, "
    "large networking requirements and human input. Like all forms of energy there are environmental costs and consequences. This is just to sync to blockchain "
    "and before any mining is done. "
    "\n\nInstead of spending time to run a blockchain||website it is possible to spend time studying the blockchain technologies, ideas, theories, "
    "conundrums and challenges. It is possible and necessary to also spend time on programming languages. Throw in some finance theories for the fun. "
    "Perhaps start with \'fractional reserve banking\' to get a picture of retail banking and then advance from there."
    "\n\n2: The author doesn't currently have a comfortable computing environment broad enough to stabally sync; large RAM, ROM storage, processors & cores, net bandwidth. "
    "\n\n3: The author is currently not using etheum in a daily, monetary life. Most transactions are for certain expendetures on the "
    "net and are completed using a web wallet, like MyEthernetWallet, an exchange, like Kraken, or a dedicated app (often "
    "in conjunction with a laptop) like Coinbase. Another easy option is to run an ethereum wallet like mist. "
    "\n\nHowever, one is expectantly awaiting the next evolutionary advancement with etherum and proof of stake (p.o.s) and using it "
    "more in daily local, national and international purchases. This may or may not a whole new internet, which some are labelling 3.0."
    "\n\nTo this endit is possible support ethereum, blockchains, crypto-coins and dlt (decentralized ledger technology) overall."
    "\n\n";

const String textShareURL = "www.et.eu";
