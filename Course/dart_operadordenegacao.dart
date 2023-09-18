void main() {
//operador de negação
  var variavel1 = true;
  print(variavel1);
  print(!variavel1); // ! é usado como se fosse not
  print(!(variavel1)); // pode usar parentêses também, ! tem alta precedência

  var a = true;
  var b = false;
  var c = true;

  var resultado = (a && b) || (c && !b);
  print(resultado);
}
