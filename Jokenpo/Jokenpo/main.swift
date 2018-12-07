//
//  main.swift
//  Jokenpo
//
//  Created by Daniel Trevisan on 07/12/2018.
//  Copyright © 2018 Daniel Trevisan. All rights reserved.
//Jokenpo é uma brincadeira japonesa, onde dois jogadores escolhem um dentre três possíveis itens: Pedra, Papel ou Tesoura.
//
//O objetivo é fazer um juiz de Jokenpo que dada a jogada dos dois jogadores informa o resultado da partida.
//
//As regras são as seguintes:
//
//Pedra empata com Pedra e ganha de Tesoura
//Tesoura empata com Tesoura e ganha de Papel
//Papel empata com Papel e ganha de Pedra
enum Jogada {
    case Pedra, Tesoura, Papel, null
}

import Foundation

var jogador1 = String();
var jogador2 = String();

var nomeJogada1 = Jogada.null
var nomeJogada2 = Jogada.null


//Jogador 1
print("Jogador 1, digite 1 para Pedra, 2 para Tesoura e 3 para Papel e aperte Enter")
jogador1 = readLine()!;
while (jogador1 != "1" && jogador1 != "2" && jogador1 != "3"){
    print("Jogada Invalida")
    print("Jogador 1, digite 1 para Pedra, 2 para Tesoura e 3 para Papel e aperte Enter")
    jogador1 = readLine()!
}
print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");

//Jogador 2
print("Jogador 2, digite 1 para Pedra, 2 para Tesoura e 3 para Papel e aperte Enter")
jogador2 = readLine()!;
while (jogador2 != "1" && jogador2 != "2" && jogador2 != "3"){
    print("Jogada Invalida")
    print("Jogador 2, digite 1 para Pedra, 2 para Tesoura e 3 para Papel e aperte Enter")
    jogador2 = readLine()!
}
print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");


//
if (jogador1 == "1"){
    nomeJogada1 = Jogada.Pedra
} else if (jogador1 == "2"){
    nomeJogada1 = Jogada.Tesoura
} else{
    nomeJogada1 = Jogada.Papel
}

if (jogador2 == "1"){
    nomeJogada2 = Jogada.Pedra
} else if (jogador2 == "2"){
    nomeJogada2 = Jogada.Tesoura
} else{
    nomeJogada2 = Jogada.Papel
}

print("Jogador 1: " + "\(nomeJogada1)" + " X " + "\(nomeJogada2)" + " :Jogador 2")

//Resultados
if (jogador1 == jogador2){
    print("Empatou!")
} else if ((jogador1 == "1" && jogador2 == "2") || (jogador1 == "2" && jogador2 == "3") || (jogador1 == "3" && jogador2 == "1")){
    print("Jogador 1 ganhou!")

}else{
    print("Jogador 2 ganhou!")

}



