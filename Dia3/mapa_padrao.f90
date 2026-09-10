program mapa_padrao

    implicit none

    Real :: K, p, t, dp, dt, pi
    Integer :: i_p, i_t, i_iter, np, nt
    
    open(unit = 10, file = "saida.dat", status = "replace")
    
    pi = acos(-1E0)
    K = 3
    np = 5
    nt = 5
    
    dp = 2*pi/np
    dt = 2*pi/nt
    
    do i_p = 0, np
        p = dp*i_p
        do i_t = 0, nt
            t = dt*i_t
            
            do i_iter = 1, 100
            
                p = mod(p + K*sin(t), 2*pi)
                t = mod(t + p, 2*pi)
                
                write(10,*) p, t
            
            end do
            
        end do
    end do
    
    close(10)
end program