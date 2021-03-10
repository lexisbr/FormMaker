

%%

%public 
%class Lexer
%cup
%cupdebug
%line
%column


SEPARADOR = \r|\r\n|\n
ESPACIO = {SEPARADOR} | [ \t\f]
MAYOR = ">"
MENOR = "<"
EXCLAMACION = "!"
SOLICITUD_CI = [Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd]
INI_SOLICITUD = [Ii][Nn][Ii]_{SOLICITUD_CI}
FIN_SOLICITUD = [Ff][Ii][Nn]_{SOLICITUD_CI}
PUNTOS = ":"
CADENA_WS = "\""[^\r\t\b\f\n ]+"\""
CORCHETE_A = "["
CORCHETE_C = "]"
LLAVE_A = "{"
LLAVE_C = "}"
COMA = ","

//Parametros 
CREDENCIALES_USUARIO = "\""[ \r\t\b\f\n]*"CREDENCIALES_USUARIO"[ \r\t\b\f\n]*"\""
USUARIO = "\""[ \r\t\b\f\n]*"USUARIO"[ \r\t\b\f\n]*"\""
PASSWORD = "\""[ \r\t\b\f\n]*"PASSWORD"[ \r\t\b\f\n]*"\""
USUARIO_ANTIGUO = "\""[ \r\t\b\f\n]*"USUARIO_ANTIGUO"[ \r\t\b\f\n]*"\""
USUARIO_NUEVO = "\""[ \r\t\b\f\n]*"USUARIO_NUEVO"[ \r\t\b\f\n]*"\""
NUEVO_PASSWORD = "\""[ \r\t\b\f\n]*"NUEVO_PASSWORD"[ \r\t\b\f\n]*"\""

//Tags para solicitudes
USUARIO_CI = [Uu][Ss][Uu][Aa][Rr][Ii][Oo]
CREAR_USUARIO = "\""[ \r\t\b\f\n]*[Cc][Rr][Ee][Aa][Rr]_{USUARIO_CI}[ \r\t\b\f\n]*"\""
MODIFICAR_USUARIO = "\""[ \r\t\b\f\n]*[Mm][Oo][Dd][Ii][Ff][Ii][Cc][Aa][Rr]_{USUARIO_CI}[ \r\t\b\f\n]*"\""
ELIMINAR_USUARIO = "\""[ \r\t\b\f\n]*[Ee][Ll][Ii][Mm][Ii][Nn][Aa][Rr]_{USUARIO_CI}[ \r\t\b\f\n]*"\""
LOGIN_USUARIO = "\""[ \r\t\b\f\n]*[Ll][Oo][Gg][Ii][Nn]_{USUARIO_CI}[ \r\t\b\f\n]*"\""

%{
    private Symbol symbol(int type, String lexeme) {
        //System.out.printf("Token tipo %d, lexeme %s, en linea %d, columna %d\n", type, lexeme == null ? "" : lexeme, yyline + 1, yycolumn + 1);
        return new Symbol(type, new Token(lexeme, yyline + 1, yycolumn + 1));
    }

%}


%%

<YYINITIAL> {

    {CREAR_USUARIO} { return symbol(CREAR_USUARIO,yytext()); }

    {MODIFICAR_USUARIO} { return symbol(MODIFICAR_USUARIO,yytext()); }

    {ELIMINAR_USUARIO} { return symbol(ELIMINAR_USUARIO,yytext()); }

    {LOGIN_USUARIO} { return symbol(LOGIN_USUARIO,yytext()); }

    {CREDENCIALES_USUARIO} { return symbol(CREDENCIALES_USUARIO,yytext()); }

    {USUARIO} { return symbol(USUARIO,yytext()); }

    {PASSWORD} { return symbol(PASSWORD,yytext()); }

    {USUARIO_ANTIGUO} { return symbol(USUARIO_ANTIGUO,yytext()); }

    {USUARIO_NUEVO} { return symbol(USUARIO_NUEVO,yytext()); }

    {NUEVO_PASSWORD} { return symbol(NUEVO_PASSWORD,yytext()); }

    {MAYOR} { return symbol(MAYOR,yytext()); }

    {MENOR} { return symbol(MENOR,yytext()); }
    
    {COMA} { return symbol(COMA,yytext()); }

    {EXCLAMACION} { return symbol(EXCLAMACION,yytext()); }

    {INI_SOLICITUD} { return symbol(INI_SOLICITUD,yytext()); }

    {PUNTOS} { return symbol(PUNTOS,yytext()); }

    {LLAVE_A} { return symbol(LLAVE_A,yytext()); }

    {LLAVE_C} { return symbol(LLAVE_C,yytext()); }

    {CORCHETE_A} { return symbol(CORCHETE_A,yytext()); }

    {CORCHETE_C} { return symbol(CORCHETE_C,yytext()); }

    {FIN_SOLICITUD} {  return symbol(FIN_SOLICITUD,yytext());  }

    {CADENA_WS} { return symbol(CADENA_WS,yytext()); }   

    {ESPACIO} { }   
}

[^]
{
    System.out.println("Error en "+yytext());
}