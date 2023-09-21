import 'dart:io';
import 'dart:math';

void main() {
  List<String> palavras = [
    "elefante",
    "computador",
    "abacaxi",
    "girafa",
    "programacao"
  ];
  Random random = Random();
  String palavraSecreta = palavras[random.nextInt(palavras.length)];
  int maxTentativas = 6;
  int tentativas = 0;
  String letrasCorretas = "";
  List<String> letrasErradas = [];

  print("Bem-vindo ao Jogo da Forca!");
  print("Tente adivinhar a palavra secreta.");

  while (tentativas < maxTentativas) {
    bool acertou = true;

    for (int i = 0; i < palavraSecreta.length; i++) {
      String letra = palavraSecreta[i];
      if (letrasCorretas.contains(letra)) {
        stdout.write(letra + " ");
      } else {
        stdout.write("_ ");
        acertou = false;
      }
    }

    print("\nTentativas restantes: ${maxTentativas - tentativas}");
    print("Letras erradas: ${letrasErradas.join(', ')}");

    if (acertou) {
      print("\nParabéns! Você acertou a palavra secreta: $palavraSecreta");
      break;
    }

    print("\nDigite uma letra:");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty || entrada.length != 1) {
      print("Por favor, digite apenas uma letra válida.");
      continue;
    }

    if (letrasCorretas.contains(entrada)) {
      print("Você já escolheu essa letra antes.");
      continue;
    }

    if (palavraSecreta.contains(entrada)) {
      print("Letra correta!");
      letrasCorretas += entrada;
    } else {
      print("Letra incorreta!");
      letrasErradas.add(entrada);
      tentativas++;
    }
  }

  if (tentativas == maxTentativas) {
    print("Fim de jogo! Você excedeu o número de tentativas.");
    print("A palavra secreta era: $palavraSecreta");
  }
}
