programa
{
    funcao inicio()
    {
        inteiro cpf[11]
        inteiro i, soma, resto, digito1, digito2
        
        // Entrada do CPF
        escreva("Digite os 11 dígitos do CPF, um por vez:\n")
        para (i = 0; i < 11; i++)
        {
            escreva("Digite o ", i + 1, "º dígito: ")
            leia(cpf[i])
        }

        // Cálculo do primeiro dígito verificador
        soma = 0
        para (i = 0; i < 9; i++)
        {
            soma = soma + cpf[i] * (10 - i)
        }
        resto = soma % 11
        se (resto < 2)
        {
            digito1 = 0
        }
        senao
        {
            digito1 = 11 - resto
        }

        // Cálculo do segundo dígito verificador
        soma = 0
        para (i = 0; i < 10; i++)
        {
            soma = soma + cpf[i] * (11 - i)
        }
        resto = soma % 11
        se (resto < 2)
        {
            digito2 = 0
        }
        senao
        {
            digito2 = 11 - resto
        }

        // Verificação final
        se (digito1 == cpf[9] e digito2 == cpf[10])
        {
            escreva("CPF válido!")
        }
        senao
        {
            escreva("CPF inválido!")
        }
    }
}
