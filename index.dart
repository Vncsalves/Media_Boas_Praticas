import 'dart:io';

void main() {
  List<String> strAlunos = []; //lista de alunos
  List<double> lisDouPortugues = []; //lista de notas na materia de português
  List<double> lisDouMatematica = []; //lista de notas na materia de matemática

  for (int i = 0; i < 3; i++) {
    print("nome do aluno");
    String? aluno = stdin.readLineSync(); //receber o nome do aluno
    strAlunos.add("$aluno"); //add na alista de alunos

    print("nota em Portugues");
    String portugues = stdin.readLineSync()!; //receber a nota do aluno
    double port = double.parse(portugues); //converte para int
    lisDouPortugues.add(port); //add na alista de nota de portugues

    print("nota em matematica");
    String matematica = stdin.readLineSync()!; //receber a nota do aluno
    double mate = double.parse(matematica); //converte para int
    lisDouMatematica.add(mate); //add na alista de nota de matematica
  }

  Calcumedia(strAlunos, lisDouPortugues, lisDouMatematica);
}

void Calcumedia(strAlunos, lisDouPortugues, lisDouMatematica) {
  print("Quer descobrir se passou de ano? escreva o nome do(a) aluno(a) aqui.");
  String nomealuno =
      stdin.readLineSync()!; //qual aluno você quer saber se passou

  if (strAlunos.contains(nomealuno) == true) {
    const double conMEDIA = 6.0;
    //se o nome estiver na lista
    var posiarry = strAlunos.indexOf(
        nomealuno); // pegra a posição de cada item para fazer a soma e saber a media
    var nota1 = lisDouPortugues[posiarry];
    var nota2 = lisDouMatematica[posiarry];
    var media = nota1 + nota2;
    var resultado = media / 2;

    if (resultado >= conMEDIA) {
      print(
          "parabens, o aluno $nomealuno passou de ano com media  $resultado ");
    } else {
      print("o aluno $nomealuno infelizmente reprovou");
    }
  } else {
    //se o nome não estiver
    print(
        "este aluno não está na lista, por favor pesquise um nome que esteja na lista ou add o nome e notas nela ");
  }
}
