program contagem

    implicit none
    
    integer :: i
    logical :: condicao
    
    ! Contagem crescente
    do i = 1, 10
        print *, i
    end do
    
    ! Contagem decrescente
    do i = 10, 0, -1
        print *, i
    end do
    
    i = 0
    condicao = .true.
    do while (i <= 10)
        print *, "no alto daquele cume"
        i = i + 1
            ! Incrementa o contador
    end do
    
    
end program