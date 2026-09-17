set terminal png size 700, 500
    # Especifica onde o plot será feito

set output "saida.png"
    # Especifica o nome do arquivo de saída

    #
        # set samples 500
        #     # Nº de pontos de amostra para a função

        # plot x**2 w l lw 2

        # set output "saida2.png"

        # plot    sin(1/x) w l lw 1 ,\
        #         cos(x) w l lw 1

# PLOTANDO DADOS DO MAPA LOGÍSTICO

plot "dados_logistico_x0_8e-1.txt" u 1:2 w l lw 1 ,\
    "dados_logistico_x0_81e-2.txt" u 1:2 w l lw 1

