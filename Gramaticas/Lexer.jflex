

%%

%public 
%class Lexer
%standalone
%line
%column

%{
    StringBuffer string = new StringBuffer();

%}

SEPARADOR = \r|\r\n|\n
ESPACIO = {SEPARADOR} | [ \t\f]
MAYOR = ">"
MENOR = "<"
EXCLAMACION = "!"
INI_SOLICITUD = "ini_solicitud"
FIN_SOLICITUD = "fin_solicitud"
PUNTOS = ":"
CADENA_SIN_ESPACIOS = "\""[^\r\t\b\f\n ]+"\""
CORCHETE_A = "["
CORCHETE_C = "]"
LLAVE_A = "{"
LLAVE_C = "}"
COMA = ","
CREDENCIALES_USUARIO = "\""[ \r\t\b\f\n]*"CREDENCIALES_USUARIO"[ \r\t\b\f\n]*"\""
CREAR_USUARIO = "\""[ \r\t\b\f\n]*"CREAR_USUARIO"[ \r\t\b\f\n]*"\""
USUARIO = "\""[ \r\t\b\f\n]*"USUARIO"[ \r\t\b\f\n]*"\""
PASSWORD = "\""[ \r\t\b\f\n]*"PASSWORD"[ \r\t\b\f\n]*"\""
MODIFICAR_USUARIO = "MODIFICAR_USUARIO"
USUARIO_ANTIGUO = "USUARIO_ANTIGUO"
USUARIO_NUEVO = "USUARIO_NUEVO"
NUEVO_PASSWORD = "NUEVO_PASSWORD"
ELIMINAR_USUARIO = "ELIMINAR_USUARIO"
LOGIN_USUARIO = "LOGIN_USUARIO"
COMILLA = "\""


%%

<YYINITIAL> {

    {CREDENCIALES_USUARIO} { 
        System.out.println("Credenciales usuario: "+yytext());
    }
    
    {CREAR_USUARIO} { 
        System.out.println("Crear usuario: "+yytext());
    }

    {USUARIO} { 
        System.out.println("Usuario: "+yytext()); 
    }

    {PASSWORD} { 
        System.out.println("Password: "+yytext()); 
    }

    {MAYOR} { System.out.println("Mayor: "+yytext());}

    {MENOR} { System.out.println("Menor: "+yytext()); }
    
    {COMA} { System.out.println("Coma: "+yytext()); }

    {EXCLAMACION} { System.out.println("Exclamacion: "+yytext()); }


    {INI_SOLICITUD} { System.out.println("Inicio solicitud: "+yytext()); }

    {PUNTOS} { System.out.println("Puntos: "+yytext()); }

    {LLAVE_A} { System.out.println("Llave que abre: "+yytext()); }

    {LLAVE_C} { System.out.println("Llave que cierra: "+yytext()); }

    {CORCHETE_A} { System.out.println("Corchete que abre: "+yytext()); }

    {CORCHETE_C} { System.out.println("Corchete que cierra: "+yytext()); }

    {FIN_SOLICITUD} {  System.out.println("Fin solicitud: "+yytext());  }


    {CADENA_SIN_ESPACIOS} {
        System.out.println("Cadena: "+yytext());
     }   

    {ESPACIO} { }   
}

[^]
{
    System.out.println("Error en "+yytext());
}