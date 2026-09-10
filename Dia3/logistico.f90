program logistico

    implicit none
    
    Real :: x, r, ri, rf, dr
    Integer :: i, Nr, j
    
    ri = 3.905
    rf = 3.910
    Nr = 200
    dr = (rf - ri)/Nr
    
    open(unit = 10, file = "saida.dat", status = "replace")
    
    do j = 0, Nr ! Loop variando o r
    
        r = ri + dr*j
        x = 0.8
    
        do i = 1, 100 ! Loop das iterações, sem salvar (período transiente)
            x = r*x*(1-x)
        end do
    
        do i = 1, 50 ! Loop das iterações, salvando
            write(10,*) r, x
            x = r*x*(1-x)
        end do
        
    end do
    
    close(10)

end program