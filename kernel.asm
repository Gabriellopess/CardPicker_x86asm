org 0x7e00
jmp 0x0000:start

data:
  ;MENU
  title db 'R U LUCKY?', 0

  help1 db 'Digite um numero de 1-4 para escolher o box desejado', 0
  help2 db 'Dentre os boxes, existe uma bomba.', 0
  help3 db 'O objetivo eh nunca encontrar uma bomba.', 0
  help4 db 'Boa sorte!', 0
  help5 db 'Pressione b para voltar ao menu', 0

  nome1 db 'Gabriel Lopes de Souza', 0
  nome3 db 'Mario da Mota Limeira Neto', 0
  nome2 db 'Lorenzo Fontenelle Chaves', 0

  strPlay db 'Play', 0
  strHelp db 'Help', 0
  strRef db 'Alunos', 0

  arrow db 2, 0

  ;GAME
  string db 'VOCE ZEROU O JOGO, SORTUDO', 0
  nextLevel db 'BOA, PASSOU DE FASE', 0
  chooseNumber db 'ESCOLHA O NUMERO DA CARTA DESEJADA (1-4)', 0
  losing db 'DERROTADO, TRY AGAIN', 0
  transition db 'PRESSIONE QUALQUER TECLA PARA CONTINUAR', 0
  num1 db '(1)', 0
  num2 db '(2)', 0
  num3 db '(3)', 0
  num4 db '(4)', 0

  color db 1, 1, 1

  ;BOXES (CARDS)
  bomb db 30, 33, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 8, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 0, 8, 14, 14, 14, 14, 14, 8, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 14, 14, 14, 8, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 14, 14, 14, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 14, 14, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 14, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14
  box db 50, 50, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 6, 6, 6, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 8, 8, 8, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 8, 8, 6, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 8, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 8, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 8, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 8, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 6, 6, 6, 12, 14, 14, 14, 14, 14, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 12, 12, 12, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 12, 12, 12, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 0, 0, 0, 8, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6, 6, 6, 6, 6, 12, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 0, 0, 0, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 4, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 0, 0, 0, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 4, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 0, 0, 0, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 4, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 0, 0, 0, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 4, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 0, 0, 0, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 4, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 6, 0, 0, 0, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 4, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 14, 14, 14, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 14, 14, 14, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 14, 14, 14, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 0, 0, 0, 6, 12, 12, 12, 12, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 12, 12, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 12, 12, 6, 6, 6, 6, 6, 6, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 6, 6, 6, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 6, 6, 6, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 12, 12, 6, 6, 6, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 8, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 8, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 8, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 8, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 8, 8, 8, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 8, 8, 8, 8, 8, 12, 14, 14, 14, 14, 14, 14, 14, 14, 6, 8, 8, 8, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 0, 0, 0, 6, 6, 6, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  heart db 35, 33, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 12, 12, 12, 12, 12, 12, 4, 4, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 12, 12, 12, 15, 15, 12, 12, 4, 4, 4, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 12, 12, 12, 12, 12, 12, 12, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 4, 4, 12, 12, 12, 15, 7, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 4, 4, 12, 12, 12, 7, 7, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 4, 4, 12, 15, 12, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 4, 4, 12, 15, 12, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 4, 4, 12, 12, 12, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 4, 4, 12, 12, 12, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 4, 4, 4, 4, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14



%macro position 2
	push dx
	push cx
	mov ah, 0ch
	add dx, %1
	add cx, %2
	int 10h
	pop cx
	pop dx
%endmacro

start:
  call menu
  
  call initialPage
  call levels
  call final_level

;----------------COMMON FUNC------------------
getchar:
  mov ah, 0x00
  int 16h
ret

zerar:
  xor ax, ax  ;zera ax, xor é mais rápido que mov
  mov ds, ax  ;zera ds (não pode ser zerado diretamente)
  mov cx, ax  ;zera cx
  mov es, ax  ;zera es
  mov dx, ax
  ret

initVideo:
	mov al, 13h
	mov ah, 0
	int 10h
  
	ret

set_videomode:
  mov ah, 0 ;escolhe modo video
  mov al, 13h ;modo VGA
  int 10h

  mov ah, 0xb ;scolhe cor da tela
  mov bh, 2
  mov bl, 2 ;cor da tela
  int 10h

  mov ah, 0xe ;escolhe cor da letra
  mov bh, 0   ;numero da pagina
  mov bl, 0xf ;cor branca da letra

  ret


putchar:
    mov ah, 0x0e
    int 10h
ret

prints:                            ; mov si, string
    .loop4:
        lodsb                    ; bota character em al, vai tirando de si e põe em al
        cmp al, 0
        je .endloop4
        call putchar
        jmp .loop4      
    .endloop4:
    ret


stoi:                ; mov si, string => stores color in ax
  xor cx, cx
  xor ax, ax
  .loop1:
    push ax
    lodsb
    mov cl, al
    pop ax
    cmp cl, 0        ; check EOF(NULL)
    je .endloop1
    sub cl, 48       ; '9'-'0' = 9
    mov bx, 10
    mul bx           ; 999*10 = 9990
    add ax, cx       ; 9990+9 = 9999
    jmp .loop1
  .endloop1:
    ret


;----------------MENU------------------
menu:
  call zerar
	call set_videomode

  call printa_titulo
  call printa_play
  call printa_help
  call printa_cred
  call tela_up

  ret

tela_up:
  call apaga_arrow_down
  call apaga_arrow_middle
  call printa_arrow_up
  call getchar
  cmp al, 13
  je .end ;retornar para o start onde tem o jogo
  cmp al, 's'
  je tela_middle
  jmp tela_up

  .end:
    ret

tela_down:
  call apaga_arrow_up
  call apaga_arrow_middle
  call printa_arrow_down
  call getchar
  cmp al, 13
  je tela_cred
  cmp al, 'w'
  je tela_middle
  jmp tela_down
  ret

tela_middle:
  call apaga_arrow_up
  call apaga_arrow_down
  call printa_arrow_middle
  call getchar
  cmp al, 13
  je tela_help
  cmp al, 'w'
  je tela_up
  cmp al, 's'
  je tela_down
  jmp tela_middle
  ret

printa_titulo:
  mov ah,02h
  mov dh,4    ;row
  mov dl,12    ;column
  mov bl, 11
  int 10h

  mov si, title
  call prints
  ret

printa_play:
  mov ah,02h
  mov dh,10    ;row
  mov dl,15     ;column
  mov bl, 4
  int 10h

  mov si, strPlay
  call prints
  ret

printa_help:
  mov ah,02h
  mov dh,12    ;row
  mov dl,15     ;column
  mov bl, 4
  int 10h

  mov si, strHelp
  call prints
  ret

printa_cred:
  mov ah,02h
  mov dh,14    ;row
  mov dl,15     ;column
  mov bl, 4
  int 10h

  mov si, strRef
  call prints
  ret

printa_arrow_up:
  mov ah,02h
  mov dh,10    ;row
  mov dl,13     ;column
  mov bl, 9
  int 10h

  mov si, arrow
  call prints

  mov ah,02h
  mov dh,10    ;row
  mov dl,15     ;column
  mov bl, 10
  int 10h

  mov si, strPlay
  call prints
  ret

  printa_arrow_middle:
    mov ah,02h
    mov dh,12    ;row
    mov dl,13     ;column
    mov bl, 9
    int 10h

    mov si, arrow
    call prints

    mov ah,02h
    mov dh,12    ;row
    mov dl,15     ;column
    mov bl, 10
    int 10h

    mov si, strHelp
    call prints
    ret

printa_arrow_down:
  mov ah,02h
  mov dh,14    ;row
  mov dl,13     ;column
  mov bl, 9
  int 10h

  mov si, arrow
  call prints

  mov ah,02h
  mov dh,14    ;row
  mov dl,15     ;column
  mov bl, 10
  int 10h

  mov si, strRef
  call prints
  ret

tela_help:

	call set_videomode

	mov ah,02h
	mov dh,1 ;row
	mov dl,17 ;column
	mov bl,11
	int 10h

	mov si, strHelp
	call prints

  mov ah,02h
	mov dh,4 ;row
	mov dl,0 ;column
	mov bl,9
	int 10h

	mov si, help1
	call prints

  mov ah,02h
  mov dh,8 ;row
  mov dl,0 ;column
  mov bl,9
  int 10h

  mov si, help2
  call prints

  mov ah,02h
  mov dh,11 ;row
  mov dl,0 ;column
  mov bl,9
  int 10h

  mov si, help3
  call prints

  mov ah,02h
  mov dh,14 ;row
  mov dl,12 ;column
  mov bl,9
  int 10h

  mov si, help4
  call prints

  mov ah,02h
  mov dh,20 ;row
  mov dl,0 ;column
  mov bl,10
  int 10h

  mov si, help5
  call prints

	call getchar
    cmp al, 'b'
    je start
	jmp tela_help

tela_cred:
  call set_videomode

  mov ah,02h
  mov dh,1 ;row
  mov dl,15 ;column
  mov bl,11
  int 10h

  mov si, strRef
  call prints

  mov ah,02h
  mov dh,4 ;row
  mov dl,5 ;column
  mov bl,9
  int 10h

  mov si, nome1
  call prints

  mov ah,02h
  mov dh,9 ;row
  mov dl,5 ;column
  mov bl,9
  int 10h

  mov si, nome2
  call prints

  mov ah,02h
  mov dh,14 ;row
  mov dl,5 ;column
  mov bl,9
  int 10h

  mov si, nome3
  call prints

  mov ah,02h
  mov dh,20 ;row
  mov dl,0 ;column
  mov bl,10
  int 10h

  mov si, help5
  call prints

  call getchar
    cmp al, 'b'
    je start
  jmp tela_cred

apaga_arrow_down:
  mov ah,02h
  mov dh,14    ;row
  mov dl,13     ;column
  mov bl, 1
  int 10h

  mov al, ' '
  call putchar


  mov ah,02h
  mov dh,14    ;row
  mov dl,15     ;column
  mov bl, 4
  int 10h

  mov si, strRef
  call prints
  ret

apaga_arrow_middle:
  mov ah,02h
  mov dh,12    ;row
  mov dl,13     ;column
  mov bl, 1
  int 10h

  mov al, ' '
  call putchar


  mov ah,02h
  mov dh,12    ;row
  mov dl,15     ;column
  mov bl, 4
  int 10h

  mov si, strHelp
  call prints
  ret

apaga_arrow_up:
  mov ah,02h
  mov dh,10    ;row
  mov dl,13     ;column
  mov bl, 1
  int 10h

  mov al, ' '
  call putchar

  mov ah,02h
  mov dh,10    ;row
  mov dl,15     ;column
  mov bl, 4
  int 10h

  mov si, strPlay
  call prints
  ret


;----------------GAME------------------
initialPage: ;initial layout
  call zerar
  call initVideo

  call background_green
  call stoi
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 20    ;row
  mov bl, 9
  int 10h

  mov si, chooseNumber
  call prints

  call zerar
  call draw_boxes

  ret


transitionPage1:
  call zerar
  call initVideo

  call background_green
  call stoi
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 20    ;row
  mov dl, 0  ;column
  mov bl, 4
  int 10h

  mov si, transition
  call prints

  call zerar
  call bomb1
  
  call getchar
  ret

transitionPage2:
  call zerar
  call initVideo

  call background_green
  call zerar
  call stoi
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 20    ;row
  mov dl, 0  ;column
  mov bl, 4
  int 10h

  mov si, transition
  call prints

  call zerar
  call bomb2
  
  call getchar
  ret

transitionPage3:
  call zerar
  call initVideo

  call background_green
  call stoi
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 20    ;row
  mov dl, 0  ;column
  mov bl, 4
  int 10h

  mov si, transition
  call prints

  call zerar
  call bomb3
  
  call getchar
  ret

transitionPage4:
  call zerar
  call initVideo

  call background_green
  call stoi
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 20    ;row
  mov dl, 0  ;column
  mov bl, 4
  int 10h

  mov si, transition
  call prints

  call zerar
  call bomb4
  
  call getchar
  ret


level1:
  call zerar
  call getchar
    cmp al, 50 ;2 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
      je .transitionLose
    cmp al, 49
      je .transitionWin
    cmp al, 51
      je .transitionWin
    cmp al, 52
      je .transitionWin
  jmp level1

  .transitionLose:
    call transitionPage2
    jmp .lose
  .transitionWin:
    call transitionPage2
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
    
ret
            
level2:
  call zerar
  call getchar
    cmp al, 51 ;3 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
      je .transitionLose
    cmp al, 49
      je .transitionWin
    cmp al, 50
      je .transitionWin
    cmp al, 52
      je .transitionWin
  jmp level2

  .transitionLose:
    call transitionPage3
    jmp .lose
  .transitionWin:
    call transitionPage3
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret

level3:
  call zerar
  call getchar 
    cmp al, 49 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 52
    je .transitionWin
    cmp al, 50
    je .transitionWin
    cmp al, 51
    je .transitionWin
  jmp level3

  .transitionLose:
    call transitionPage1
    jmp .lose
  .transitionWin:
    call transitionPage1
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret

level4:
  call zerar
  call getchar 
    cmp al, 49 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 52
    je .transitionWin
    cmp al, 50
    je .transitionWin
    cmp al, 51
    je .transitionWin
  jmp level4

  .transitionLose:
    call transitionPage1
    jmp .lose
  .transitionWin:
    call transitionPage1
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret

level5:
  call zerar
  call getchar 
    cmp al, 52 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 49
    je .transitionWin
    cmp al, 50
    je .transitionWin
    cmp al, 51
    je .transitionWin
  jmp level5

  .transitionLose:
    call transitionPage4
    jmp .lose
  .transitionWin:
    call transitionPage4
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret

level6:
  call zerar
  call getchar 
    cmp al, 50 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 52
    je .transitionWin
    cmp al, 49
    je .transitionWin
    cmp al, 51
    je .transitionWin
  jmp level6

  .transitionLose:
    call transitionPage2
    jmp .lose
  .transitionWin:
    call transitionPage2
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret

level7:
  call zerar
  call getchar 
    cmp al, 49 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 52
    je .transitionWin
    cmp al, 50
    je .transitionWin
    cmp al, 51
    je .transitionWin
  jmp level7

  .transitionLose:
    call transitionPage1
    jmp .lose
  .transitionWin:
    call transitionPage1
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret

level8:
  call zerar
  call getchar 
    cmp al, 51 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 52
    je .transitionWin
    cmp al, 50
    je .transitionWin
    cmp al, 49
    je .transitionWin
  jmp level8

  .transitionLose:
    call transitionPage3
    jmp .lose
  .transitionWin:
    call transitionPage3
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret


level9:
  call zerar
  call getchar 
    cmp al, 52 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 49
    je .transitionWin
    cmp al, 50
    je .transitionWin
    cmp al, 51
    je .transitionWin
  jmp level9

  .transitionLose:
    call transitionPage4
    jmp .lose
  .transitionWin:
    call transitionPage4
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret


level10:
  call zerar
  call getchar 
    cmp al, 52 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 49
    je .transitionWin
    cmp al, 50
    je .transitionWin
    cmp al, 51
    je .transitionWin
  jmp level10

  .transitionLose:
    call transitionPage4
    jmp .lose
  .transitionWin:
    call transitionPage4
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret


level11:
  call zerar
  call getchar 
    cmp al, 49 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 52
    je .transitionWin
    cmp al, 50
    je .transitionWin
    cmp al, 51
    je .transitionWin
  jmp level11

  .transitionLose:
    call transitionPage1
    jmp .lose
  .transitionWin:
    call transitionPage1
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret


level12:
  call zerar
  call getchar 
    cmp al, 50 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 52
    je .transitionWin
    cmp al, 49
    je .transitionWin
    cmp al, 51
    je .transitionWin
  jmp level12

  .transitionLose:
    call transitionPage2
    jmp .lose
  .transitionWin:
    call transitionPage2
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret


level13:
  call zerar
  call getchar 
    cmp al, 51 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 52
    je .transitionWin
    cmp al, 50
    je .transitionWin
    cmp al, 49
    je .transitionWin
  jmp level13

  .transitionLose:
    call transitionPage3
    jmp .lose
  .transitionWin:
    call transitionPage3
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret


level14:
  call zerar
  call getchar 
    cmp al, 49 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .transitionLose
    cmp al, 52
    je .transitionWin
    cmp al, 50
    je .transitionWin
    cmp al, 51
    je .transitionWin
  jmp level14

  .transitionLose:
    call transitionPage1
    jmp .lose
  .transitionWin:
    call transitionPage1
    jmp .win

  .lose:
    call loser
  .win:
    call winFunc
ret


final_level:
  call zerar
  call getchar
  cmp al, 50 ;define where the bomb is
    je .transitionLose
  cmp al, 49
    je .transitionWin
  cmp al, 52
    je .transitionWin
  cmp al, 51
    je .transitionWin
  jmp final_level

  .transitionLose:
    call transitionPage2
    jmp .lose
  .transitionWin:
    call transitionPage2
    jmp .winFinal

  .lose:
      call loser
  .winFinal:
      call zerar
      call initVideo
      call background_yellow

      call zerar
      mov bl, al
      mov al, 13h
      mov ah, 2
      mov bl, 9
      mov dh, 11    ;row
      mov dl, 8  ;column
      int 10h
      mov si, string
      call prints

      call zerar
      mov bl, al
      mov al, 13h
      mov ah, 2
      mov bl, 9
      mov dh, 23    ;row
      mov dl,0  ;column
      int 10h
      mov si, transition
      call prints

      call zerar
      call draw_heartfinal

      call getchar
      jmp start


winFunc:
  call zerar
  call initVideo

  call background_green
  call stoi
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 20    ;row
  mov bl, 9
  int 10h

  mov si, chooseNumber
  call prints

  call zerar
  call draw_boxes

ret

loser:
  call zerar
  call initVideo
  call background_yellow
  
  call zerar
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov bl, 9
  mov dh, 12    ;row
  mov dl,10  ;column
  int 10h
  mov si, losing
  call prints

  call zerar
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov bl, 9
  mov dh, 23    ;row
  mov dl,0  ;column
  int 10h
  mov si, transition
  call prints

  call zerar
  call draw_bombfinal

  call getchar
  jmp start
ret

levels:
  call level1
  call level2
  call level3
  call level4
  call level5
  call level6
  call level7
  call level8
  call level9
  call level10
  call level11
  call level12
  call level13
  call level14
ret

end:
  jmp $


;----------------BOXES------------------
;----------------BOXES------------------
;----------------BOXES------------------
;----------------BOXES------------------


box_positions:
	position 60, 60
	position 60, 120
	position 60, 180
	position 60, 240
ret

heart_position1:
	position 69, 127
	position 69, 187
	position 69, 247
ret

heart_position2:
	position 69, 67
	position 69, 187
	position 69, 247
ret

heart_position3:
	position 69, 67
	position 69, 127
	position 69, 247
ret

heart_position4:
	position 69, 67
	position 69, 127
	position 69, 187
ret

bomb_positions1:
	position 69, 69
ret

bomb_positions2:
	position 69, 129
ret

bomb_positions3:
	position 69, 189
ret

bomb_positions4:
	position 69, 249
ret

draw_boxes:

  call stoi
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 6    ;row
  mov dl, 9  ;column
  mov bl, 9
  int 10h

  mov si, num1
  call prints

  call stoi
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 6    ;row
  mov dl, 17  ;column
  mov bl, 9
  int 10h
  mov si, num2
  call prints

  call stoi
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 6    ;row
  mov dl, 24  ;column
  mov bl, 9
  int 10h
  mov si, num3
  call prints

  call stoi
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 6    ;row
  mov dl, 32  ;column
  mov bl, 9
  int 10h
  mov si, num4
  call prints


  call zerar
	mov si, box
	mov dx, 0            
	mov bx, si
	add si, 2
	.for1:
		cmp dl, byte[bx+1]
		je .endfor1
		mov cx, 0        
	.for2:
		cmp cl, byte[bx]
		je .endfor2
		lodsb
		call box_positions
		inc cx
		jmp .for2
	.endfor2:
		inc dx
		jmp .for1
	.endfor1:
ret

draw_bomb1: 
	mov si, bomb
	mov dx, 0            
	mov bx, si
	add si, 2
	.for1:
		cmp dl, byte[bx+1]
		je .endfor1
		mov cx, 0        
	.for2:
		cmp cl, byte[bx]
		je .endfor2
		lodsb
		call bomb_positions1
		inc cx
		jmp .for2
	.endfor2:
		inc dx
		jmp .for1
	.endfor1:
ret

draw_bomb2: 
	mov si, bomb
	mov dx, 0            
	mov bx, si
	add si, 2
	.for1:
		cmp dl, byte[bx+1]
		je .endfor1
		mov cx, 0        
	.for2:
		cmp cl, byte[bx]
		je .endfor2
		lodsb
		call bomb_positions2
		inc cx
		jmp .for2
	.endfor2:
		inc dx
		jmp .for1
	.endfor1:
ret

draw_bomb3: 
	mov si, bomb
	mov dx, 0            
	mov bx, si
	add si, 2
	.for1:
		cmp dl, byte[bx+1]
		je .endfor1
		mov cx, 0        
	.for2:
		cmp cl, byte[bx]
		je .endfor2
		lodsb
		call bomb_positions3
		inc cx
		jmp .for2
	.endfor2:
		inc dx
		jmp .for1
	.endfor1:
ret

draw_bomb4: 
	mov si, bomb
	mov dx, 0            
	mov bx, si
	add si, 2
	.for1:
		cmp dl, byte[bx+1]
		je .endfor1
		mov cx, 0        
	.for2:
		cmp cl, byte[bx]
		je .endfor2
		lodsb
		call bomb_positions4
		inc cx
		jmp .for2
	.endfor2:
		inc dx
		jmp .for1
	.endfor1:
ret

draw_heart1: 
	mov si, heart
	mov dx, 0            
	mov bx, si
	add si, 2
	.for1:
		cmp dl, byte[bx+1]
		je .endfor1
		mov cx, 0        
	.for2:
		cmp cl, byte[bx]
		je .endfor2
		lodsb
		call heart_position1
		inc cx
		jmp .for2
	.endfor2:
		inc dx
		jmp .for1
	.endfor1:
ret

draw_heart2: 
	mov si, heart
	mov dx, 0            
	mov bx, si
	add si, 2
	.for1:
		cmp dl, byte[bx+1]
		je .endfor1
		mov cx, 0        
	.for2:
		cmp cl, byte[bx]
		je .endfor2
		lodsb
		call heart_position2
		inc cx
		jmp .for2
	.endfor2:
		inc dx
		jmp .for1
	.endfor1:
ret

draw_heart3: 
	mov si, heart
	mov dx, 0            
	mov bx, si
	add si, 2
	.for1:
		cmp dl, byte[bx+1]
		je .endfor1
		mov cx, 0        
	.for2:
		cmp cl, byte[bx]
		je .endfor2
		lodsb
		call heart_position3
		inc cx
		jmp .for2
	.endfor2:
		inc dx
		jmp .for1
	.endfor1:
ret

draw_heart4: 
	mov si, heart
	mov dx, 0            
	mov bx, si
	add si, 2
	.for1:
		cmp dl, byte[bx+1]
		je .endfor1
		mov cx, 0        
	.for2:
		cmp cl, byte[bx]
		je .endfor2
		lodsb
		call heart_position4
		inc cx
		jmp .for2
	.endfor2:
		inc dx
		jmp .for1
	.endfor1:
ret

bomb1:
  call draw_boxes
	call draw_heart1
	call draw_bomb1
ret

bomb2:
  call draw_boxes
	call draw_heart2
	call draw_bomb2
ret

bomb3:
  call draw_boxes
	call draw_heart3
	call draw_bomb3
ret

bomb4:
  call draw_boxes
	call draw_heart4
	call draw_bomb4
ret

background_green:
	mov ah, 0ch 
	mov al, 2
	mov bh, 0
	mov cx, 0
	mov dx, 0
	.draw_seg:
		int 10h
		inc cx
		cmp cx, 320
		je .jump_row
		jne .draw_seg
	.back_column:
		mov cx, 0
		jmp .draw_seg
	.jump_row:
		inc dx
		cmp dx, 200
		jne .back_column
ret

background_yellow:
	mov ah, 0ch 
	mov al, 14
	mov bh, 0
	mov cx, 0
	mov dx, 0
	.draw_seg:
		int 10h
		inc cx
		cmp cx, 320
		je .jump_row
		jne .draw_seg
	.back_column:
		mov cx, 0
		jmp .draw_seg
	.jump_row:
		inc dx
		cmp dx, 200
		jne .back_column
ret

bomb_final:
    position 20, 10
    position 20, 50
    position 20, 90
    position 20, 130
    position 20, 170
    position 20, 210
    position 20, 250
    position 20, 290
    position 50, 10
    position 50, 50
    position 50, 90
    position 50, 130
    position 50, 170
    position 50, 210
    position 50, 250
    position 50, 290
    position 140, 10
    position 140, 50
    position 140, 90
    position 140, 130
    position 140, 170
    position 140, 210
    position 140, 250
    position 140, 290
    position 110, 10
    position 110, 50
    position 110, 90
    position 110, 130
    position 110, 170
    position 110, 210
    position 110, 250
    position 110, 290
    position 80, 10
    position 80, 290

ret

draw_bombfinal: 
    mov si, bomb
    mov dx, 0            
    mov bx, si
    add si, 2
    .for1:
        cmp dl, byte[bx+1]
        je .endfor1
        mov cx, 0        
    .for2:
        cmp cl, byte[bx]
        je .endfor2
        lodsb
        call bomb_final
        inc cx
        jmp .for2
    .endfor2:
        inc dx
        jmp .for1
    .endfor1:
ret

draw_heartfinal: 
    mov si, heart
    mov dx, 0            
    mov bx, si
    add si, 2
    .for1:
        cmp dl, byte[bx+1]
        je .endfor1
        mov cx, 0        
    .for2:
        cmp cl, byte[bx]
        je .endfor2
        lodsb
        call bomb_final
        inc cx
        jmp .for2
    .endfor2:
        inc dx
        jmp .for1
    .endfor1:
ret




