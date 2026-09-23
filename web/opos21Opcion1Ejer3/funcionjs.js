let numero;
do {
  numero = parseInt(prompt("Introduce un número"));
  if (isNaN(numero)) {
    alert("Introduce un número.");
  } else if (numero % 2 === 0) {
    alert("Escribe un número impar.");
  }
} while (numero % 2 === 0 || isNaN(numero))
let cuadrado = "";
for (let i = 0; i < numero; i++){
  let fila = "";
  for (let j = 0; j < numero; j++){
    fila = fila + "*";
  }
  cuadrado = cuadrado + "*".repeat(numero) + "\n";
}
alert($(cuadrado))
