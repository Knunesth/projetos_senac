n1 = int(input("Digite o 1º número: "))
n2 = int(input("Digite o 2º número: "))

if n1 > n2:
    print(f"O primeiro número ({n1}) é maior que o segundo ({n2}).")
elif n2 > n1:
    print(f"O segundo número ({n2}) é maior que o primeiro ({n1}).")
else:
    print("Os números são iguais.")