#include <stdio.h>

int mains(){
    //declaracoes
    int valInt1, valInt2, valIntRes;
    float valFloat, valFloatRes;

    //intruçoes
    //Inicializa as variaveis inteiras

    valInt1 = 5;
    valInt2 = 10;

    //inicializa as variaveis floats

    valFloat = 2.7;

    valIntRes = valInt1 + valInt2; // soma valInt1 com a valInt2 e armazena em val
    // valInt possui o valor 15

    valFloatRes = valFloat / 1.5;
    // valFloatRes possui o valor 1.8

    valFloatRes++; // incrementa o valor de valFloatRes em 1
    // ou seja, valIntRess valia 15, agora tem o valor de 16

    printf("Valor da valIntRes: %d\n", valIntRes);
    printf("Valor da valFloatRes: %f\n", valFloatRes);

    return 0;
}