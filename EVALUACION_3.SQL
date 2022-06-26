--creo las tablas por orden alfabetico

CREATE TABLE Bancos(
    id_banco            NUMBER NOT NULL,
    nombre_banco        VARCHAR2(250) NOT NULL
);

CREATE TABLE Beneficios(
    id_beneficio        NUMBER NOT NULL,
    nombre_beneficio    VARCHAR2(250) NOT NULL,
    canti_max           NUMBER,
    dcto                NUMBER,
    tipo_benef_id       NUMBER NOT NULL,
    transporte_id       NUMBER NOT NULL
);

CREATE TABLE CALCULO_PRIMAS(
    id_prima            NUMBER NOT NULL,
    nombre_prima        VARCHAR2(250) NOT NULL,
    valor_prima         NUMBER NOT NULL,
    dcto                NUMBER NOT NULL,
    año                 NUMBER NOT NULL
);

CREATE TABLE CARGAS(
    id_cargas           NUMBER NOT NULL,
    rut                 NUMBER,
    dv                  CHAR(1),
    primer_nombre       VARCHAR2(250) NOT NULL,
    segundo_nombre      VARCHAR2(250),
    primer_apellido     VARCHAR2(250) NOT NULL,
    segundo_apellido    VARCHAR2(250),
    fecha_nacimiento    DATE NOT NULL,
    pasaporte           VARCHAR2(250),
    es_hijo             CHAR(1) NOT NULL,
    es_pareja           CHAR(1) NOT NULL,
    persona_id          NUMBER NOT NULL,
    tipo_parentesco_id  NUMBER NOT NULL
);

CREATE TABLE CLASE_PAGO(
    id_clase            NUMBER NOT NULL,
    nombre_pago         VARCHAR2(250) NOT NULL,
    valor               NUMBER NOT NULL
);

CREATE TABLE COLORES(
    id_color            NUMBER NOT NULL,
    color               VARCHAR2(250) NOT NULL
);

CREATE TABLE COMUNAS(
    id_comuna           NUMBER NOT NULL,
    nombre_comuna       VARCHAR2(250) NOT NULL,
    provinvia_id        NUMBER NOT NULL
);

CREATE TABLE CURRICULUMS(
    id_curriculum       NUMBER NOT NULL,
    curriculum          BLOB NOT NULL,
    personas_id         NUMBER NOT NULL
);

CREATE TABLE DISCAPACIDAD(
    id_discapacidad     NUMBER NOT NULL,
    nombre_discapacidad VARCHAR2(250) NOT NULL
);

CREATE TABLE ESTADO_SOLICITUD(
    id_estado           NUMBER NOT NULL,
    nombre_estado       VARCHAR2(250) NOT NULL
);

CREATE TABLE FORMA_PAGOS(
    id_forma_pago       NUMBER NOT NULL,
    tipo_pago           VARCHAR2(250) NOT NULL
);

CREATE TABLE GENERO(
    id_genero           NUMBER NOT NULL,
    nombre_genero       VARCHAR2(250) NOT NULL
);

CREATE TABLE MARCAS(
    id_marca            NUMBER NOT NULL,
    nombre_marca        VARCHAR2(250) NOT NULL
);

CREATE TABLE MODELOS(
    id_modelo           NUMBER NOT NULL,
    nombre_mod          VARCHAR2(250) NOT NULL
);

CREATE TABLE PAIS(
    id_pais             NUMBER NOT NULL,
    nombre_pais         VARCHAR2(250) NOT NULL,
    nacionalidad_pais   VARCHAR2(250) NOT NULL
);

