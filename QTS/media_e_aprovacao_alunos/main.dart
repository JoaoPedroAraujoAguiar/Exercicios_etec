import 'dart:io';

void main(){
  //Listas para guardar os nomes dos estudantes e as notas.
  List<String> nome_aluno = [];
  List<double> nota_portugues_list = [];
  List<double> nota_matematica_list = [];
  List<double> nota_biologia_list = [];
  List<double> nota_historia_list = [];
  List<double> media_aluno_list = [];

  print("Calculo de média entre 4 componentes dos alunos e se foram reprovados ou aprovados!!");

  //Vai perguntar quantos alunos tem para realizar a operação.
  print("Quanto(s) aluno(s) você ira informar?");
  int qtd_alunos = int.parse(stdin.readLineSync()!);


  //Vai perguntar o nome de cada um dos alunos.
  for(int loop1 = 1; loop1 <= qtd_alunos; loop1++){
    print("Qual o nome do $loop1º aluno(a)?");
    String estudante = stdin.readLineSync()!;
    nome_aluno.add("$estudante"); //Vou adicionar o nomes doestudante na list "nome_estudante".

    //Aproveitando que acabamos de perguntar o nome do estudante, vamos perguntar as notas dos componentes.
    print("Qual a nota do componente de Português?");
    double nota_portugues_double = double.parse(stdin.readLineSync()!);
    nota_portugues_list.add(nota_portugues_double);//Vai adicionar a nota de portugues na list "nota_portugues_list".

    print("Qual a nota do componente de matematica?");
    double nota_matematica_double = double.parse(stdin.readLineSync()!);
    nota_matematica_list.add(nota_matematica_double);//Vai adicionar a nota de matematica na list "nota_matematica_list".
    
    print("Qual a nota do componente de biologia?");
    double nota_biologia_double = double.parse(stdin.readLineSync()!);
    nota_biologia_list.add(nota_biologia_double);//Vai adicionar a nota de biologia na list "nota_biologia_list".
    
    print("Qual a nota do componente de historia?");
    double nota_historia_double = double.parse(stdin.readLineSync()!);
    nota_historia_list.add(nota_historia_double);//Vai adicionar a nota de historia na list "nota_historia_list".

    //Vai ativar a função da média
    calculo_media(media_aluno_list,nota_portugues_double,nota_matematica_double,nota_biologia_double,nota_historia_double);
  }

  double media_aprovacao = 7.0;//media das notas para ser aprovado

  //usei o while para o usuário conseguir fazer mais de uma vez a pesquisa de alunos aprovados
  int loop3 = 1;
  int visualizacao_list = 1;
  while(loop3 == 1){
    print("Se dejesa ver a lista dos alunos digite [1], caso ao contrario digite [0]");
    int visualizacao_list = int.parse(stdin.readLineSync()!);

    while(visualizacao_list == 1){
      print("$nome_aluno"); //mostrar todos os nomes da lista "nome_aluno".
      visualizacao_list = 0; //vou zerar para não ficar no infinito.
    }

    print("Qual estudante você quer saber se foi reprovado ou aprovado que está na lista?");
    String pesquisa_estudante = stdin.readLineSync()!;

    //nesse if, só vai entrar se o nome pesquisado estiver na lista que guarda os nomes dos estudantes.
    if (nome_aluno.contains(pesquisa_estudante) == true) { 
      var posicao = nome_aluno.indexOf(pesquisa_estudante); //decobrir a posição que o nome está na lista.
      var media_aluno_verificacao = media_aluno_list[posicao]; //vamos pegar a posição que o nome esta na outra lista, e pesquisar essa posição na lista das médias.

      //if para verificar se o aluno(a) foi aprovado ou reprovado.
      if(media_aluno_verificacao >= media_aprovacao){
        print("O(A) aluno(a) $pesquisa_estudante foi Aprovado(a)!");
      }
      else{
        print("O(A) aluno(a) $pesquisa_estudante foi Reprovado(a)!");
      }
    }
    else{ //caso o nome não esteja na lista, vai informar ao usuário nesse else.
      print("Esse nome não consta na lista!");
    }


    //perguntando se o usuário vai querer fazer outra pesquisa de aprovado ou reprovados ou vai parar.
    print("Se deseja fazer outra pesquisa digite [1], se desejar parar, digite [0]");
    loop3 = int.parse(stdin.readLineSync()!);
  }
}

//Vai fazer a média das notas do estudante, e adicionar na List "media_aluno_list".
void calculo_media(media_aluno_list,nota_portugues_double,nota_matematica_double,nota_biologia_double,nota_historia_double){
  double media_aluno_double = ((nota_portugues_double+nota_matematica_double+nota_biologia_double+nota_historia_double)/4);
  media_aluno_list.add(media_aluno_double);
}

//Desenvolvido pelo João Pedro de Araujo Aguiar - 14 de Março de 2023 até 15 de Março de 2023
