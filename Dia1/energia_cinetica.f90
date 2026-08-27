program cinetica

    implicit none
        ! Torna obrigatória a declaração de TODAS as variáveis utilizadas
    
    Real :: massa, energ_cin
    Real :: veloc
        ! Pode-se declarar variáveis na mesma linha ou em linhas diferentes
    
    !g = 10
        ! Se remover o comentário, vai acusar erro porque g não está declarado
    
    print *, "Insira uma massa (kg)"
    Read(*,*) massa
    
    print *, "Insira uma velocidade (m/s)"
    Read(*,*) veloc
        ! Real(*,*) velocidade daria erro porque "velocidade" não está declarado
        
    energ_cin = 0.5*massa*veloc**2
        ! Se usar 1/2*massa*veloc**2 dá 0 porque 1/2 é int/int e arredonda pra baixo = 0
        
    print *, "A energia cinética é ", energ_cin, "em Joules"
    
end program