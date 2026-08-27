program hello
! Obrigatoriamente começa com PROGRAM [NOME]
    
    ! Declaração de Variáveis
        ! Indicar pro computador qual tipo de dado aquela variável possui
        ! Deve vir obrigatoriamente no COMEÇO do programa
        
    real*8  :: g_preciso
    real    :: g
    
    print *, "hello, world!"
        ! Isto é um comentário

    g = 10
    print *, g
        ! Dá 10 bonitinho
    
    g = 9.8
    print *, g
    
    g = 2/3
    print *, g
        ! Deu zero...
    
    g = Real(2)/3
    print *, g
        ! Dá certo...
        
    g_preciso = 9.8
    print *, g_preciso


! Obrigatoriamente termina com END PROGRAM
end program