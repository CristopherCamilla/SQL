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
    persona_id         NUMBER NOT NULL
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

CREATE TABLE PERSONAS(
    id_persona          NUMBER NOT NULL,
    rut                 NUMBER,
    dv                  NUMBER,
    fecha_creacion      DATE NOT NULL,
    hora                DATE NOT NULL,
    primer_nombre       VARCHAR2(250) NOT NULL,
    segundo_nombre      VARCHAR2(250),
    apellido_paterno    VARCHAR2(250) NOT NULL,
    apellido_materno    VARCHAR2(250),
    fecha_nacimiento    DATE NOT NULL,
    pasaporte           VARCHAR2(250),
    sueldo              NUMBER NOT NULL,
    direccion           VARCHAR2(250) NOT NULL,
    es_discapacitado    CHAR(1) NOT NULL,
    es_afiliado         CHAR(1) NOT NULL,
    habilitado_ben      CHAR(1) NOT NULL,
    pais_id             NUMBER NOT NULL,
    comuna_id           NUMBER NOT NULL,
    genero_id           NUMBER NOT NULL,
    discapacidad_id     NUMBER NOT NULL,
    sindicato_id        NUMBER NOT NULL
);

CREATE TABLE PROVINCIAS(
    id_provincia        NUMBER NOT NULL,
    nombre_provincia    VARCHAR2(250),
    region_id           NUMBER NOT NULL
);

CREATE TABLE REG_PAGOS(
    id_pago             NUMBER NOT NULL,
    obs_pago            VARCHAR2(250) NOT NULL,
    mes                 NUMBER NOT NULL,
    año                 NUMBER NOT NULL,
    valor_final         NUMBER NOT NULL,
    abono_final         NUMBER NOT NULL,
    fecha               DATE NOT NULL,
    num_cheque          NUMBER NOT NULL,
    clase_id            NUMBER NOT NULL,
    forma_pago_id       NUMBER NOT NULL,
    banco_id            NUMBER NOT NULL,
    persona_id          NUMBER NOT NULL
);

CREATE TABLE REG_SOLICITUD(
    id_solicitud        NUMBER NOT NULL,
    fecha_creacion      DATE NOT NULL,
    hora                DATE NOT NULL,
    estado_id           NUMBER NOT NULL,
    persona_id          NUMBER NOT NULL
);

CREATE TABLE REGIONES(
    id_region           NUMBER NOT NULL,
    nombre_region       VARCHAR2(250) NOT NULL
);

CREATE TABLE REGISTRO_BENEFICIOS(
   id_reg               NUMBER NOT NULL,
   fecha_beneficio      DATE NOT NULL,
   cant_usada           NUMBER NOT NULL,
   beneficio_id         NUMBER NOT NULL,
   persona_id           NUMBER NOT NULL
);

CREATE TABLE SINDICATO(
    id_sindicato        NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL
);

CREATE TABLE TELEFONOS(
    id_telefono         NUMBER NOT NULL,
    numero_telefono     NUMBER NOT NULL,
    obs                 VARCHAR2(250) NOT NULL,
    activo              CHAR(1) NOT NULL,
    tipo_num_id         NUMBER NOT NULL,
    persona_id          NUMBER NOT NULL
);

CREATE TABLE TIPO_BENEFICIO(
    id_tipo_benef       NUMBER NOT NULL,
    nombre_tipo_benef   VARCHAR2(250) NOT NULL                   
);

CREATE TABLE TIPO_NUMEROS(
    id_tipo_num         NUMBER NOT NULL,
    nombre_tipo         VARCHAR2(250) NOT NULL
);

CREATE TABLE TIPO_PARENTESCOS(
    id_tipo_parentesco  NUMBER NOT NULL,
    nombre_parentesco   VARCHAR2(250) NOT NULL
);

CREATE TABLE TIPO_TRANSPORTE(
    id_transporte       NUMBER NOT NULL,
    nombre_trans        VARCHAR2(250) NOT NULL
);

CREATE TABLE TIPO_VEHICULO(
    id_tipo_vehiculo    NUMBER NOT NULL,
    nom_tipo_veh        VARCHAR2(250) NOT NULL
);

CREATE TABLE VEHICULOS(
    id_vehiculo         NUMBER NOT NULL,
    patente             VARCHAR2(250) NOT NULL,
    num_chasis          NUMBER NOT NULL,
    num_motor           NUMBER NOT NULL,
    año                 NUMBER NOT NULL,
    modelo_id           NUMBER NOT NULL,
    color_id            NUMBER NOT NULL,
    tipo_vehiculo_id    NUMBER NOT NULL,
    persona_id          NUMBER NOT NULL,
    prima_id            NUMBER NOT NULL,
    marca_id            NUMBER NOT NULL
);

--creacion de primay key

ALTER TABLE BANCOS ADD CONSTRAINT banco_PK PRIMARY KEY (id_banco);

ALTER TABLE BENEFICIOS ADD CONSTRAINT beneficio_PK PRIMARY KEY (id_beneficio);

ALTER TABLE CALCULO_PRIMAS ADD CONSTRAINT PRIMAS_PK PRIMARY KEY (id_prima);

ALTER TABLE CARGAS ADD CONSTRAINT CARGA_PK PRIMARY KEY (id_cargas);

ALTER TABLE CLASE_PAGO ADD CONSTRAINT CLASE_PAGO_PK PRIMARY KEY (id_clase);

ALTER TABLE COLORES ADD CONSTRAINT COLOR_PK PRIMARY KEY (id_color);

ALTER TABLE COMUNAS ADD CONSTRAINT COMUNA_PK PRIMARY KEY (id_comuna);

ALTER TABLE CURRICULUMS ADD CONSTRAINT CURRICULUM_PK PRIMARY KEY (id_curriculum);

ALTER TABLE DISCAPACIDAD ADD CONSTRAINT DISCAPACIDAD_PK PRIMARY KEY (id_discapacidad);

ALTER TABLE ESTADO_SOLICITUD ADD CONSTRAINT ESTADO_SOLICITUD_PK PRIMARY KEY (id_estado);

ALTER TABLE FORMA_PAGOS ADD CONSTRAINT FORMA_PAGO_PK PRIMARY KEY (id_forma_pago);

ALTER TABLE GENERO ADD CONSTRAINT GENERO_PK PRIMARY KEY (id_genero);

ALTER TABLE MARCAS ADD CONSTRAINT MARCA_PK PRIMARY KEY (id_marca);

ALTER TABLE MODELOS ADD CONSTRAINT MODELO_PK PRIMARY KEY (id_modelo);

ALTER TABLE PAIS ADD CONSTRAINT PAIS_PK PRIMARY KEY (id_pais);

ALTER TABLE PERSONAS ADD CONSTRAINT PERSONA_PK PRIMARY KEY (id_persona);

ALTER TABLE PROVINCIAS ADD CONSTRAINT PROVINCIA_PK PRIMARY KEY (id_provincia);

ALTER TABLE REG_PAGOS ADD CONSTRAINT PAGO_PK PRIMARY KEY (id_pago);

ALTER TABLE REG_SOLICITUD ADD CONSTRAINT SOLICITUD_PK PRIMARY KEY (id_solicitud);

ALTER TABLE REGIONES ADD CONSTRAINT REGION_PK PRIMARY KEY (id_region);

ALTER TABLE REGISTRO_BENEFICIOS ADD CONSTRAINT BENEFICIOS_PK PRIMARY KEY (id_reg);

ALTER TABLE SINDICATO ADD CONSTRAINT SINDICATO_PK PRIMARY KEY (id_sindicato);

ALTER TABLE TELEFONOS ADD CONSTRAINT TELEFONO_PK PRIMARY KEY (id_telefono);

ALTER TABLE TIPO_BENEFICIO ADD CONSTRAINT TIP_BENEF_PK PRIMARY KEY (id_tipo_benef);

ALTER TABLE TIPO_NUMEROS ADD CONSTRAINT TIP_NUM_PK PRIMARY KEY (id_tipo_num);

ALTER TABLE TIPO_PARENTESCOS ADD CONSTRAINT TIP_PARENTESCO_PK PRIMARY KEY (id_tipo_parentesco);

ALTER TABLE TIPO_TRANSPORTE ADD CONSTRAINT TIP_TRANSP_PK PRIMARY KEY (id_transporte);

ALTER TABLE TIPO_VEHICULO ADD CONSTRAINT TIP_VEHICULO_PK PRIMARY KEY (id_tipo_vehiculo);

ALTER TABLE VEHICULOS ADD CONSTRAINT VEHICULO_PK PRIMARY KEY (id_vehiculo);


--CREAMOS LAS FOREIGN KEY

--beneficios
ALTER TABLE BENEFICIOS ADD CONSTRAINT TIP_BENEF_FK FOREIGN KEY (tipo_benef_id) 
    REFERENCES TIPO_BENEFICIO (id_tipo_benef);

ALTER TABLE BENEFICIOS ADD CONSTRAINT TIP_TRANS_FK FOREIGN KEY (transporte_id) 
    REFERENCES TIPO_TRANSPORTE (id_transporte);

--cargas
ALTER TABLE CARGAS ADD CONSTRAINT cargas_persona_FK FOREIGN KEY (persona_id) 
    REFERENCES PERSONAS (id_persona);

ALTER TABLE CARGAS ADD CONSTRAINT tipo_parentesco_FK FOREIGN KEY (tipo_parentesco_id) 
    REFERENCES TIPO_PARENTESCOS (id_tipo_parentesco);

--curricumun
ALTER TABLE CURRICULUMS ADD CONSTRAINT curriculum_persona_FK FOREIGN KEY (persona_id) 
    REFERENCES PERSONAS (id_persona);

--personas
ALTER TABLE PERSONAS ADD CONSTRAINT pais_FK FOREIGN KEY (pais_id) 
    REFERENCES PAIS (id_pais);
ALTER TABLE PERSONAS ADD CONSTRAINT comuna_FK FOREIGN KEY (comuna_id) 
    REFERENCES COMUNAS (id_comuna);
ALTER TABLE PERSONAS ADD CONSTRAINT genero_FK FOREIGN KEY (genero_id) 
    REFERENCES GENERO (id_genero);
ALTER TABLE PERSONAS ADD CONSTRAINT discapacidad_FK FOREIGN KEY (discapacidad_id) 
    REFERENCES DISCAPACIDAD (id_discapacidad);
ALTER TABLE PERSONAS ADD CONSTRAINT sindicato_FK FOREIGN KEY (sindicato_id) 
    REFERENCES SINDICATO (id_sindicato);

--provincia
ALTER TABLE PROVINCIAS ADD CONSTRAINT region_FK FOREIGN KEY (region_id) 
    REFERENCES REGIONES (id_region);

--registro de pago
ALTER TABLE REG_PAGOS ADD CONSTRAINT clase_FK FOREIGN KEY (clase_id) 
    REFERENCES CLASE_PAGO (id_clase);
ALTER TABLE REG_PAGOS ADD CONSTRAINT forma_pago_FK FOREIGN KEY (forma_pago_id) 
    REFERENCES FORMA_PAGOS (id_forma_pago);
ALTER TABLE REG_PAGOS ADD CONSTRAINT banco_FK FOREIGN KEY (banco_id) 
    REFERENCES BANCOS (id_banco);
ALTER TABLE REG_PAGOS ADD CONSTRAINT pagos_persona_FK FOREIGN KEY (persona_id) 
    REFERENCES PERSONAS (id_persona);

--REGISTRO SOLICITUD
ALTER TABLE REG_SOLICITUD ADD CONSTRAINT estado_FK FOREIGN KEY (estado_id) 
    REFERENCES ESTADO_SOLICITUD (id_estado);
ALTER TABLE REG_SOLICITUD ADD CONSTRAINT solicitud_persona_FK FOREIGN KEY (persona_id) 
    REFERENCES PERSONAS (id_persona);

--REGISTRO BENEFICIOS
ALTER TABLE REGISTRO_BENEFICIOS ADD CONSTRAINT beneficio_FK FOREIGN KEY (beneficio_id) 
    REFERENCES BENEFICIOS (id_beneficio);
ALTER TABLE REGISTRO_BENEFICIOS ADD CONSTRAINT beneficios_persona_FK FOREIGN KEY (persona_id) 
    REFERENCES PERSONAS (id_persona);

--TELEFONOS
ALTER TABLE TELEFONOS ADD CONSTRAINT tipo_num_FK FOREIGN KEY (tipo_num_id) 
    REFERENCES TIPO_NUMEROS (id_tipo_num);
ALTER TABLE TELEFONOS ADD CONSTRAINT telefono_persona_FK FOREIGN KEY (persona_id) 
    REFERENCES PERSONAS (id_persona);

--vehiculo
ALTER TABLE VEHICULOS ADD CONSTRAINT modelo_FK FOREIGN KEY (modelo_id) 
    REFERENCES MODELOS (id_modelo);
ALTER TABLE VEHICULOS ADD CONSTRAINT color_FK FOREIGN KEY (color_id) 
    REFERENCES COLORES (id_color);
ALTER TABLE VEHICULOS ADD CONSTRAINT tip_vehiculo_FK FOREIGN KEY (tipo_vehiculo_id) 
    REFERENCES TIPO_VEHICULO (id_tipo_vehiculo);
ALTER TABLE VEHICULOS ADD CONSTRAINT vehiculo_personas_FK FOREIGN KEY (persona_id) 
    REFERENCES PERSONAS (id_persona);
ALTER TABLE VEHICULOS ADD CONSTRAINT vehiculo_personas_FK FOREIGN KEY (persona_id) 
    REFERENCES PERSONAS (id_persona);









