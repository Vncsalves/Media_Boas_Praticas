import 'dart:io';

void main() {
  List<String> strAlunos = []; //lista de alunos
  List<double> lisDouPortugues = []; //lista de notas na materia de português
  List<double> lisDouMatematica = []; //lista de notas na materia de matemática

  for (int i = 0; i < 10; i++) {
    print("nome do aluno ");
    String? aluno = stdin.readLineSync(); //receber o nome do aluno
    strAlunos.add("$aluno"); //add na alista de alunos

    print("nota em Portugues ");
    String portugues = stdin.readLineSync()!; //receber a nota do aluno
    double port = double.parse(portugues); //converte para int
    lisDouPortugues.add(port); //add na lista de nota de portugues

    print("nota em Matematica ");
    String matematica = stdin.readLineSync()!; //receber a nota do aluno
    double mate = double.parse(matematica); //converte para int
    lisDouMatematica.add(mate); //add na alista de nota de matematica
  }

  CalcuMedia(strAlunos, lisDouPortugues, lisDouMatematica); //chamar função
}

void CalcuMedia(strAlunos, lisDouPortugues, lisDouMatematica) {
  print("Quer descobrir se passou de ano? Escreva o nome do(a) aluno(a) aqui:");
  String nomeAluno =
      stdin.readLineSync()!; //qual aluno você quer saber se passou

  if (strAlunos.contains(nomeAluno) == true) {
    const double conMEDIA = 6.0;
    //se o nome estiver na lista
    var posiarry = strAlunos.indexOf(
        nomeAluno); // pega a posição de cada item para fazer a soma e saber a media
    var nota1 = lisDouPortugues[posiarry];
    var nota2 = lisDouMatematica[posiarry];
    var media = nota1 + nota2;
    var resultado = media / 2;

    if (resultado >= conMEDIA) {
      print("Parabéns, o aluno(a) $nomeAluno foi aprovado com média :  $resultado .");
    } else {
      print("O aluno $nomeAluno infelizmente reprovou com média : $resultado .");
    }
  } else {
    //se o nome não estiver
    print(
        "Este aluno não está na lista, por favor pesquise um nome que esteja na lista ou add o nome e notas nela ");
  }
}
