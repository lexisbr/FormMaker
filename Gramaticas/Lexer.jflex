
package lexer;
import java_cup.runtime.Symbol;
import parser.sym;
import static parser.sym.*;


%%

%public 
%class Lexer
%cup
%cupdebug
%line
%column


//Espacios en blanco
SEPARADOR = \r|\r\n|\n
ESPACIO = {SEPARADOR} | [ \t\f]

//Caracteres validos
INI_SOLICITUDES = [Ii][Nn][Ii]_[Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd][Ee][Ss]
FIN_SOLICITUDES = [Ff][Ii][Nn]_[Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd][Ee][Ss]
MAYOR = ">"
MENOR = "<"
EXCLAMACION = "!"
SOLICITUD_CI = [Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd]
INI_SOLICITUD = [Ii][Nn][Ii]_{SOLICITUD_CI}
FIN_SOLICITUD = [Ff][Ii][Nn]_{SOLICITUD_CI}
PUNTOS = ":"
CADENA_WS = "\""[^\"\r\t\b\f\n ]+"\""
CADENA_S = "\""[^\"]+"\""
CORCHETE_A = "["
CORCHETE_C = "]"
LLAVE_A = "{"
LLAVE_C = "}"
COMA = ","

//Parametros
NUMERO_ENTERO = [0-9]+
ENTERO = [1-9]+ 
DIGITO = [0-9]
ID_CADENA = "\""("$"|"_"|"-")[^\r\t\b\f\n ]+"\""
ANIO = [1-9] {DIGITO} {DIGITO} {DIGITO} 
MES = ([0][1-9] | [1][0-2])
DIA= ([0-2][1-9]|[3][0-1]|[1-2][0])
FECHA = "\""[ \r\t\b\f\n]*{ANIO}"-"{MES}"-"{DIA}[ \r\t\b\f\n]*"\""

FECHA_CREACION = "\""[ \r\t\b\f\n]*"FECHA_CREACION"[ \r\t\b\f\n]*"\""
CREDENCIALES_USUARIO = "\""[ \r\t\b\f\n]*"CREDENCIALES_USUARIO"[ \r\t\b\f\n]*"\""
USUARIO = "\""[ \r\t\b\f\n]*"USUARIO"[ \r\t\b\f\n]*"\""
PASSWORD = "\""[ \r\t\b\f\n]*"PASSWORD"[ \r\t\b\f\n]*"\""
USUARIO_ANTIGUO = "\""[ \r\t\b\f\n]*"USUARIO_ANTIGUO"[ \r\t\b\f\n]*"\""
USUARIO_NUEVO = "\""[ \r\t\b\f\n]*"USUARIO_NUEVO"[ \r\t\b\f\n]*"\""
NUEVO_PASSWORD = "\""[ \r\t\b\f\n]*"NUEVO_PASSWORD"[ \r\t\b\f\n]*"\""
PARAMETROS_FORMULARIO = "\""[ \r\t\b\f\n]*"PARAMETROS_FORMULARIO"[ \r\t\b\f\n]*"\""
ID = "\""[ \r\t\b\f\n]*"ID"[ \r\t\b\f\n]*"\""
TITULO = "\""[ \r\t\b\f\n]*"TITULO"[ \r\t\b\f\n]*"\""
NOMBRE = "\""[ \r\t\b\f\n]*"NOMBRE"[ \r\t\b\f\n]*"\""
TEMA = "\""[ \r\t\b\f\n]*"TEMA"[ \r\t\b\f\n]*"\""
TEMAS = "\""[ \r\t\b\f\n]*("Dark" | "White")[ \r\t\b\f\n]*"\""
USUARIO_CREACION = "\""[ \r\t\b\f\n]*"USUARIO_CREACION"[ \r\t\b\f\n]*"\""
PARAMETROS_COMPONENTE = "\""[ \r\t\b\f\n]*"PARAMETROS_COMPONENTE"[ \r\t\b\f\n]*"\""
NOMBRE_CAMPO = "\""[ \r\t\b\f\n]*"NOMBRE_CAMPO"[ \r\t\b\f\n]*"\""
FORMULARIO = "\""[ \r\t\b\f\n]*"FORMULARIO"[ \r\t\b\f\n]*"\""
CLASE = "\""[ \r\t\b\f\n]*"CLASE"[ \r\t\b\f\n]*"\""
CAMPO_TEXTO = "\""[ \r\t\b\f\n]*"CAMPO_TEXTO"[ \r\t\b\f\n]*"\""
AREA_TEXTO = "\""[ \r\t\b\f\n]*"AREA_TEXTO"[ \r\t\b\f\n]*"\""
CHECKBOX = "\""[ \r\t\b\f\n]*"CHECKBOX"[ \r\t\b\f\n]*"\""
RADIO = "\""[ \r\t\b\f\n]*"RADIO"[ \r\t\b\f\n]*"\""
FICHERO = "\""[ \r\t\b\f\n]*"FICHERO"[ \r\t\b\f\n]*"\""
RADIO = "\""[ \r\t\b\f\n]*"RADIO"[ \r\t\b\f\n]*"\""
IMAGEN = "\""[ \r\t\b\f\n]*"IMAGEN"[ \r\t\b\f\n]*"\""
COMBO = "\""[ \r\t\b\f\n]*"COMBO"[ \r\t\b\f\n]*"\""
BOTON = "\""[ \r\t\b\f\n]*"BOTON"[ \r\t\b\f\n]*"\""
TEXTO_VISIBLE = "\""[ \r\t\b\f\n]*"TEXTO_VISIBLE"[ \r\t\b\f\n]*"\""
ALINEACION = "\""[ \r\t\b\f\n]*"ALINEACION"[ \r\t\b\f\n]*"\""
ALINEACION_CADENA = "\""[ \r\t\b\f\n]*("CENTRO"|"IZQUIERDA"|"DERECHA"|"JUSTIFICAR")[ \r\t\b\f\n]*"\""
REQUERIDO = "\""[ \r\t\b\f\n]*"REQUERIDO"[ \r\t\b\f\n]*"\""
SI = "\""[ \r\t\b\f\n]*"SI"[ \r\t\b\f\n]*"\""
NO = "\""[ \r\t\b\f\n]*"NO"[ \r\t\b\f\n]*"\""
OPCIONES = "\""[ \r\t\b\f\n]*"OPCIONES"[ \r\t\b\f\n]*"\""
FILAS = "\""[ \r\t\b\f\n]*"FILAS"[ \r\t\b\f\n]*"\""
COLUMNAS = "\""[ \r\t\b\f\n]*"COLUMNAS"[ \r\t\b\f\n]*"\""
URL = "\""[ \r\t\b\f\n]*"URL"[ \r\t\b\f\n]*"\""
INDICE = "\""[ \r\t\b\f\n]*"INDICE"[ \r\t\b\f\n]*"\""




//Tags para solicitudes
CREAR_USUARIO = "\""[ \r\t\b\f\n]*"CREAR_USUARIO"[ \r\t\b\f\n]*"\""
MODIFICAR_USUARIO = "\""[ \r\t\b\f\n]*"MODIFICAR_USUARIO"[ \r\t\b\f\n]*"\""
ELIMINAR_USUARIO = "\""[ \r\t\b\f\n]*"ELIMINAR_USUARIO"[ \r\t\b\f\n]*"\""
LOGIN_USUARIO = "\""[ \r\t\b\f\n]*"LOGIN_USUARIO"[ \r\t\b\f\n]*"\""
NUEVO_FORMULARIO = "\""[ \r\t\b\f\n]*"NUEVO_FORMULARIO"[ \r\t\b\f\n]*"\""
ELIMINAR_FORMULARIO = "\""[ \r\t\b\f\n]*"ELIMINAR_FORMULARIO"[ \r\t\b\f\n]*"\""
MODIFICAR_FORMULARIO = "\""[ \r\t\b\f\n]*"MODIFICAR_FORMULARIO"[ \r\t\b\f\n]*"\""
AGREGAR_COMPONENTE = "\""[ \r\t\b\f\n]*"AGREGAR_COMPONENTE"[ \r\t\b\f\n]*"\""
ELIMINAR_COMPONENTE = "\""[ \r\t\b\f\n]*"ELIMINAR_COMPONENTE"[ \r\t\b\f\n]*"\""
MODIFICAR_COMPONENTE = "\""[ \r\t\b\f\n]*"MODIFICAR_COMPONENTE"[ \r\t\b\f\n]*"\""

%{
    private Symbol symbol(int type, String lexeme) {
        System.out.println("\n*************************************");
        System.out.printf("Token >> Tipo: %d | Lexeme: %s | Linea: %d | Columna: %d\n", type, lexeme == null ? "" : lexeme, yyline + 1, yycolumn + 1);
        return new Symbol(type, new Token(lexeme, yyline + 1, yycolumn + 1));
    }

%}


%%

<YYINITIAL> {

    {NUMERO_ENTERO} { return symbol(NUMERO_ENTERO,yytext()); }

    {INI_SOLICITUDES} { return symbol(INI_SOLICITUDES,yytext()); }

    {FIN_SOLICITUDES} { return symbol(FIN_SOLICITUDES,yytext()); }

    {FECHA_CREACION} { return symbol(FECHA_CREACION,yytext()); }

    {FECHA} { return symbol(FECHA,yytext()); }

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

    {PARAMETROS_FORMULARIO} { return symbol(PARAMETROS_FORMULARIO,yytext()); }

    {ID} { return symbol(ID,yytext()); }

    {ID_CADENA} {  return symbol(ID_CADENA,yytext()); }

    {TITULO} { return symbol(TITULO,yytext()); }

    {NOMBRE} { return symbol(NOMBRE,yytext()); }

    {TEMA} { return symbol(TEMA,yytext()); }

    {TEMAS} { return symbol(TEMAS,yytext()); }

    {PARAMETROS_COMPONENTE} { return symbol(PARAMETROS_COMPONENTE,yytext()); }

    {NOMBRE_CAMPO} { return symbol(NOMBRE_CAMPO,yytext()); }

    {FORMULARIO} { return symbol(FORMULARIO,yytext()); }

    {CLASE} { return symbol(CLASE,yytext()); }

    {CAMPO_TEXTO} { return symbol(CAMPO_TEXTO,yytext()); }

    {AREA_TEXTO} { return symbol(AREA_TEXTO,yytext()); }

    {CHECKBOX} { return symbol(CHECKBOX,yytext()); }

    {FICHERO} { return symbol(FICHERO,yytext()); }

    {RADIO} { return symbol(RADIO,yytext()); }

    {IMAGEN} { return symbol(IMAGEN,yytext()); }

    {COMBO} { return symbol(COMBO,yytext()); }

    {BOTON} { return symbol(BOTON,yytext()); }

    {TEXTO_VISIBLE} { return symbol(TEXTO_VISIBLE,yytext()); }

    {ALINEACION} { return symbol(ALINEACION,yytext()); }

    {ALINEACION_CADENA} { return symbol(ALINEACION_CADENA,yytext()); }

    {REQUERIDO} { return symbol(REQUERIDO,yytext()); }

    {SI} { return symbol(SI,yytext()); }

    {NO} { return symbol(NO,yytext()); }

    {OPCIONES} { return symbol(OPCIONES,yytext()); }

    {FILAS} { return symbol(FILAS,yytext()); }

    {COLUMNAS} { return symbol(COLUMNAS,yytext()); }

    {URL} { return symbol(URL,yytext()); }

    {INDICE} { return symbol(INDICE,yytext()); }

    {NUEVO_FORMULARIO} { return symbol(NUEVO_FORMULARIO,yytext()); }

    {ELIMINAR_FORMULARIO} { return symbol(ELIMINAR_FORMULARIO,yytext()); }

    {MODIFICAR_FORMULARIO} { return symbol(MODIFICAR_FORMULARIO,yytext()); }

    {AGREGAR_COMPONENTE} { return symbol(AGREGAR_COMPONENTE,yytext()); }

    {ELIMINAR_COMPONENTE} { return symbol(ELIMINAR_COMPONENTE,yytext()); }

    {MODIFICAR_COMPONENTE} { return symbol(MODIFICAR_COMPONENTE,yytext()); }

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

    {CADENA_S} {  return symbol(CADENA_S,yytext()); }

    {ESPACIO} { }   
}

[^]
{
    System.out.println("Error en "+yytext());
}