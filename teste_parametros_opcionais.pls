DECLARE
    PROCEDURE ft_testar_parametros (
        obrigatorio   IN VARCHAR2,
        opcional      IN VARCHAR2 DEFAULT NULL
    )
        IS
    BEGIN
        dbms_output.put_line('obrigatorio: ' || obrigatorio);
        dbms_output.put_line('opcional: ' || opcional);
    END ft_testar_parametros;

BEGIN
    dbms_output.enable(NULL);
    dbms_output.put_line('Teste de parâmetros opcionais em procedures.');
    ft_testar_parametros('este parametro é obrigatório');
    ft_testar_parametros('required','optional');
END;