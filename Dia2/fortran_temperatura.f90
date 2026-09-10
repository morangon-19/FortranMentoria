program temperatura

    implicit none
    character*1 :: unid_entrada, unid_saida
    real :: temp_entrada, temp_saida
    
    print *, "Digite a unidade de entrada (C/K/F)"
    read(*,*) unid_entrada
    print *, "Digite a unidade de saida (C/K/F)"
    read(*,*) unid_saida
    print *, "Digite o valor da temperatura"
    read(*,*) temp_entrada
    
    if (unid_entrada == "C" .and. unid_saida == "K") then
        temp_saida = temp_entrada + 273
    elseif (unid_entrada == "K" .and. unid_saida == "C") then
        temp_saida = temp_entrada - 273
    elseif (unid_entrada == "F" .and. unid_saida == "C") then
        temp_saida = (temp_entrada - 32)*5E0/9
    elseif (unid_entrada == "C" .and. unid_saida == "F") then
        temp_saida = (9.0/5)*temp_entrada + 32
    elseif (unid_entrada == "K" .and. unid_saida == "F") then
        temp_saida = 9.0/5*(temp_entrada - 273) + 32
    elseif (unid_entrada == "F" .and. unid_saida == "K") then
        temp_saida = (temp_entrada - 32)*5.0/9 + 273
    else
        print *, "unidades não listadas"
        stop
    end if
    
    print *, "Temperatura convertida é... ", temp_saida
    
end program