program mapa_logistico

    implicit none
    Real :: x, r
    Integer :: i
    
    r = 3.8
    x = 0.7
    
    open(unit=10, file="dados.txt", status="replace")
    
    do i = 1, 500
        write(10,*) x
        x = r*x*(1-x)
    end do
    
end program