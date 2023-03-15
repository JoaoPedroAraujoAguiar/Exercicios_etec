import 'dart:io';

void main(){
  //arrays para guardar os nomes dos estudantes e as notas
  List<String> nome_estudante = [];
  List<double> nota_portugues_list = [];
  List<double> nota_matematica_list = [];
  List<double> nota_biologia_list = [];
  List<double> nota_historia_list = [];

  print("Calculo de média entre 4 componentes dos alunos e se foram reprovados ou aprovados!!");

  //Vai perguntar quantos alunos tem
  print("Quanto(s) estudante(s) você ira informar?");
  String? quantidade_de_alunos = stdin.readLineSync();
  int qtd_alunos = int.parse("$quantidade_de_alunos");

  // //Vai perguntar quantos componentes tem
  // print("Quantidade de componentes a ser calculado:");
  // String? quantidade_de_componentes = stdin.readLineSync();
  // int qtd_componentes = int.parse("$quantidade_de_alunos");

  //Vai perguntar o nome de cada um dos alunos
  for(int loop1 = 1; loop1 <= qtd_alunos; loop1++){
    print("Qual o nome do $loop1º estudante?");
    String estudante = stdin.readLineSync()!;
    nome_estudante.add("$estudante"); //Vou adicionar o nomes doestudante na lista/array

    //Aproveitando que acabamos de perguntar o nome do estudante, vamos perguntar as notas dos componentes
    print("Qual a nota do componente de Português?");
    String? nota_portugues_string = stdin.readLineSync();
    double nota_portugues_double = double.parse("$nota_portugues_string");
    nota_portugues_list.add(nota_portugues_double);

    print("Qual a nota do componente de matematica?");
    String? nota_matematica_string = stdin.readLineSync();
    double nota_matematica_double = double.parse("$nota_matematica_string");
    nota_matematica_list.add(nota_matematica_double);
    
    print("Qual a nota do componente de biologia?");
    String? nota_biologia_string = stdin.readLineSync();
    double nota_biologia_double = double.parse("$nota_biologia_string");
    nota_biologia_list.add(nota_biologia_double);
    
    print("Qual a nota do componente de historia?");
    String? nota_historia_string = stdin.readLineSync();
    double nota_historia_double = double.parse("$nota_historia_string");
    nota_historia_list.add(nota_historia_double);

    //Vai ativar a função da média
    calculo_media();
  }


}

void calculo_media(){

}

//Desenvolvido pelo João Pedro de Araujo Aguiar - 14 de Março de 2023