program area_circulo

    implicit none
    
    Real :: area, raio, pi

    pi = acos(-1E0)
    
    print *, "Insira um raio pro círculo"
    read(*,*) raio

    area = pi*raio**2

    print *, "o círculo tem área"
    print *, area

end program