program exemplo_open

    implicit none
    character*10 :: item1, item2
    integer :: i
    
    open(unit=199, file = "lista_compras.txt", status = "old")
    open(unit=200, file = "copia_lista.txt", status = "replace")
    
    do i = 1, 6
        read(199,*) item1
        write(200,*) item1
        print *, item1
    end do
    
    close(199)
    close(200)

end program

---

banana
aveia
leite
lactovacilos
batata
pão