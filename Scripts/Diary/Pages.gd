extends Control

@onready var left_page = $left_page
@onready var right_page = $right_page

var page = 0
var page_texts := ["Cheguei aqui e logo percebi que essa casa não é nada como nas fotos. Talvez ela fosse daquele jeito antes, mas agora parece tão velha. Mas tudo bem, eu que resolvi vir pra cá, precisava de mudanças na minha vida mesmo.
Ainda bem que eu trouxe esse diário aqui comigo, sem sinal de internet e a TV fora do ar realmente fica sem muito o que fazer. Pelo menos com isso eu posso passar um pouco do tempo, e também não me sinto tão solitário. Vou mostrar esse diário pra minha mãe quando ela vier visitar pra ela ver como eu tô vivendo de boa sozinho.
Mas sinceramente, tem umas coisas que me deixaram meio desconfiado com esse lugar. Tudo bem não ter sinal de internet ainda e tal, recém me mudei pra cá, essas coisas acontecem, mas e aquele papel que eu achei ontem? Quem é essa tal de Helena e o que foi isso que ela tava dizendo? Ainda tô sem sinal, não vou conseguir falar com o Bob sobre isso.
Talvez ela só estivesse vendo coisas mesmo. Ontem eu estava bem cansado e estava um pouco assim também, mas era só o cansaço. Até esqueci de fechar a porta direito.", "É bom que esse gerador pare logo de se desligar, fica muito escuro aqui de noite, preciso da luz se não não enxergo um palmo na minha frente. Ainda bem que trouxe minha lanterna.
Hoje vou ter que começar dando um jeito na bagunça que essa casa tá. Impossível viver num lugar assim por muito tempo, vou terminar de escrever aqui e vou dar uma geral em tudo.", "Eu tive que vir escrever isso porque não tô conseguindo dormir. Hoje, quando eu estava preparando minha pizza, acabei encarando por muito tempo as árvores pela minha janela e comecei a ver umas coisas. Que porra foi aquela que eu vi? Um vulto no meio das árvores, parecia humano, mas diferente.
Eu não sei o que foi aquilo. Será mesmo que eu tô vendo coisa? Pode só ter sido coisa da minha cabeça de novo, já que passei o dia caçando coisas para distrair a mente, pode ser isso aí. Mas eu tô começando a me perguntar se eu que tô ficando louco por estar sozinho, ou esse lugar aqui que não está certo.
Limpando a casa hoje encontrei outro papel, provavelmente escrito por aquela mesma mulher que escreveu o de antes. Ela falou de algumas regras que eu tinha que seguir, mas por quê? Só eu moro aqui, a cidade mais próxima fica longe até. 
Eu poderia pensar que isso é algo que o morador antigo ou até o Bob deixaram pra me dar um sustinho. Poderia, se não fossem dois motivos. Primeiro, eu encontrei o papel bem na saída do meu quarto. Não tinha nada lá quando eu fui dormir, e nem quando o gerador desligou. Eu tenho certeza disso, não tem como eu ter", "deixado um papel assim passar despercebido. Outra coisa, quando eu quebrei a regra 5 e olhei direto pras árvores por muito tempo, aquilo aconteceu.
Não sei o que pensar de tudo isso que tá acontecendo, mas acho que vale a pena seguir essas regras. Não tem como saber o que elas significam, mas talvez existam por um motivo, e eu que não quero descobrir o porquê.
A coisa boa é que o gerador não se desligou até agora, eu não sei se teria coragem de ir lá ver. Mas talvez eu consiga dormir em paz essa noite. Bom, eu tô uma pilha de nervos, então só de dormir já é uma vitória.
Preciso dar um jeito de falar com alguém amanhã.
", "Meu Deus do céu, o que foi isso? Minha mãe… Eles tentaram me enganar usando minha própria mãe. Se transformaram nela. Essas coisas definitivamente não são humanas, eu não sei o que são, mas nada que seja normal. Não é possível que exista algo assim no reino animal, nem nos meus piores pesadelos eu sonharia com algo assim.
Aquela criatura é alta e grande, parece forte também. Parece que de todos os lados tinha algo me vigiando. Me senti como uma presa, um brinquedo. Só não fui pego por causa das regras. Se eu não tivesse sido alertado delas, eu provavelmente já taria morto agora. Ela me salvou. A mulher das cartas estava certa, ela não tava louca. Essas criaturas se transformam. Não posso confiar em nada mais que eu vejo ou que escuto.
A casa parece muito velha, mas parece que pessoas moraram aqui não muito tempo atrás. Quantos já morreram por causa desse monstro? Eu não sei o que fazer, minha mãe vai vir, ela talvez traga ajuda mas eu não sei como vou fazer pra aguentar até lá.
Dois dias. Só dois dias. Eu tenho que dar um jeito. Nem fodendo que eu saio na rua de novo, ainda mais de noite. Se esse gerador parar de novo eu não sei o que vai acontecer.
", "Mas agora eu preciso me manter trancado aqui. Trancar porta e janelas e fechar as cortinas. Só não gosto dessas nuvens que estão se formando, vem chuva por aí…", "Vai tudo ficar bem. Já tá acabando. Minha mãe já vai chegar de verdade. Eu fico repetindo isso pra mim por horas a fio, tentando me convencer disso, enquanto fico enrolado na minha cama, com a única coisa pra me defender daquelas coisas é essa faca de cozinha que eu peguei. Como se isso fosse adiantar algo.
Eu tô escrevendo isso aqui pela última vez, eu espero. Eu espero que amanhã eu esteja na casa da minha mãe e que toda essa merda que tá acontecendo aqui fique no passado. 
Eu não quebrei nenhuma regra, nenhuma. Tirando a vez que eu saí de casa e consegui voltar com vida. Como esse bicho conseguiu entrar na minha casa? Usando a cara da minha mãe, ainda por cima. Ainda bem que eu consegui me esconder embaixo da cama, se não, teria sido meu fim. Quase não consegui controlar minha voz quando ele chegou pertinho de mim.
Agora eu botei o sofá na frente da porta, não sei se ele consegue quebrar as janelas. Espero que não. Nas regras não dizia nada sobre as janelas e eu não abri nenhuma delas. Mas também dizia que ele não entraria se eu mantivesse a porta fechada, e ele entrou. Por
", "quê? Essas coisas ficam me fazendo imaginar várias merdas. Tipo, será que ele consegue entrar por essa janela aqui do segundo andar e me pegar?
Tenho que parar de pensar nessas coisas. Eu tenho só mais algumas horas até tudo isso acabar, até minha estadia nessa droga de casa e lugar chegarem ao fim. Eu só tenho que esperar e rezar pra que tudo dê certo.
"]

func _ready():
	set_visibility(true)

func toggle_visibility():
	set_visibility(not visible)

func set_visibility(is_visible: bool):
	visible = is_visible

func change_page(to_page: int):
	page = to_page
	left_page.text = page_texts[to_page*2]
	right_page.text = page_texts[(to_page*2) + 1]
