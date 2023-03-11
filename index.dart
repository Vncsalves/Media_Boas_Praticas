import 'dart:ffi';
import 'dart:io';


void main(){
List<String> alunos = [];//lista de alunos
List<double> notaport = [];//lista de notas na materia de português 
List<double> notamate = [];//lista de notas na materia de matemática 

  for(int i=0; i <3; i++){

    print("nome do aluno");
    String? aluno= stdin.readLineSync();//receber o nome do aluno
      alunos.add("$aluno");//add na alista de alunos

       print("nota em Portugues");
    String portugues= stdin.readLineSync()!;//receber a nota do aluno
   double port = double.parse(portugues);//converte para int
   notaport.add(port);//add na alista de nota de portugues 
      

       print("nota em matematica");
    String matematica= stdin.readLineSync()!;//receber a nota do aluno
    double mate = double.parse(matematica);//converte para int
   notamate.add(mate);//add na alista de nota de matematica 
  }
  print("Quer descobrir se passou de ano? escreva o nome do(a) aluno(a) aqui.");
   String nomealuno= stdin.readLineSync()!;//qual aluno você quer saber se passou
   
   if(alunos.contains(nomealuno)==true){//se o nome estiver na lista
    var posiarry = alunos.indexOf(nomealuno);// pegra a posição de cada item para fazer a soma e saber a media
 var nota1 =notaport [posiarry];
 var nota2 =notamate[posiarry];
 var media = nota1 + nota2;
 var resultado = media / 2;

 if(resultado >= 5){
  print("parabens, o aluno $nomealuno passou de ano com media  $resultado ");
 }else{
  print("o aluno $nomealuno infelizmente reprovou");
 }
   }else{//se o nome não estiver
    print("este aluno não está na lista, por favor pesquise um nome que esteja na lista ou add o nome e notas nela ");
   }

  
}
void Calcumedia(){

}