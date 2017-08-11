
-- TABLA BASE DE USUARIOS PARA LOS SISTEMAS DE CABS.

CREATE TABLE USUARIOS_SOPORTE_CABS (
    ID NUMBER NOT NULL,
    NUMERO_EMPLEADO VARCHAR2(10) NOT NULL,
    NOMBRE VARCHAR2(50) NOT NULL,
    PERMISOS NUMBER,
    ACTIVO NUMBER DEFAULT 0 NOT NULL,
    PERFIL VARCHAR2(20),
    CONSTRAINT USUARIOS_SOPORTE_CABS_PK PRIMARY KEY (ID) ENABLE 
);

INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (1,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 0, 'DESARROLLADOR WEB');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (2,'60042774', 'ARTURO GARCIA GRACIA', 0, 'DESARROLLADOR');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (3,'60054274', 'ERNESTO ESPINOZA PONCE', 0, 'DESARROLLADOR WEB');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (4,'60053502', 'LIZETH GARCIA GAYOSSO', 0, 'DESARROLLADOR');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (5,'60053925', 'JOSUE LEONEL MOTA SOLIS', 0, 'INGENIERO DE SOPORTE');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (6,'60053717', 'LUIS MIGUEL GONZALEZ MIRANDA', 0, 'INGENIERO DE SOPORTE');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (7,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 0, 'DESARROLLADOR WEB');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (8,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 0, 'DESARROLLADOR WEB');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (9,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 0, 'DESARROLLADOR WEB');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (10,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 0, 'DESARROLLADOR WEB');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (11,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 0, 'DESARROLLADOR WEB');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (12,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 0, 'DESARROLLADOR WEB');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (13,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 0, 'DESARROLLADOR WEB');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (14,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 0, 'DESARROLLADOR WEB');
INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, PERFIL) VALUES (15,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 0, 'DESARROLLADOR WEB');

DELETE FROM USUARIOS_SOPORTE_CABS WHERE ID > 0; 

SELECT NUMERO_EMPLEADO, NOMBRE, PERMISOS, ACTIVO, PERFIL FROM USUARIOS_SOPORTE_CABS WHERE NUMERO_EMPLEADO = '60054274';

INSERT INTO USUARIOS_SOPORTE_CABS(ID, NUMERO_EMPLEADO, NOMBRE, PERMISOS, ACTIVO, PERFIL) VALUES (1,'60054274', 'JOSE DANIEL HERNANDEZ OSORIO', 'SA', 1, 'DESARROLLADOR WEB');

DROP TABLE USUARIOS_SOPORTE_CABS;

-- ESTRUCTURA DE TABLAS DE BITACORA PARA IDENTIFICAR LAS OPERACIONES DE INSERTAR, ACTUALIZAR Y LOGEARSE EN EL SISTEMA.

CREATE TABLE CAT_OPER_INVENT_TESTIGOS(
    ID NUMBER NOT NULL,
    OPERACION VARCHAR2(20) NOT NULL,
    CONSTRAINT CAT_OPER_INVENT_TESTIGOS_PK PRIMARY KEY (ID) ENABLE 
);

INSERT INTO CAT_OPER_INVENT_TESTIGOS(ID, OPERACION) VALUES(1, 'INICIO DE SESION');
INSERT INTO CAT_OPER_INVENT_TESTIGOS(ID, OPERACION) VALUES(2, 'CIERRE DE SESION');
INSERT INTO CAT_OPER_INVENT_TESTIGOS(ID, OPERACION) VALUES(3, 'ERROR USUARIO');
INSERT INTO CAT_OPER_INVENT_TESTIGOS(ID, OPERACION) VALUES(4, 'ERROR CONTRASE�A');
INSERT INTO CAT_OPER_INVENT_TESTIGOS(ID, OPERACION) VALUES(5, 'NO PRIVILEGIOS');
INSERT INTO CAT_OPER_INVENT_TESTIGOS(ID, OPERACION) VALUES(6, 'NO ACTIVO');
INSERT INTO CAT_OPER_INVENT_TESTIGOS(ID, OPERACION) VALUES(7, 'ACTUALIZACION');
INSERT INTO CAT_OPER_INVENT_TESTIGOS(ID, OPERACION) VALUES(8, 'INSERCION');

DROP TABLE CAT_OPER_INVENT_TESTIGOS;

CREATE TABLE CAT_NAVEGADOR_WEB(
    ID NUMBER NOT NULL,
    NAVEGADOR VARCHAR2(20) NOT NULL,
    CONSTRAINT CAT_NAVEGADOR_WEB_PK PRIMARY KEY (ID) ENABLE
);

INSERT INTO CAT_NAVEGADOR_WEB(ID, NAVEGADOR) VALUES(1, 'NO IDENTIFICADO');
INSERT INTO CAT_NAVEGADOR_WEB(ID, NAVEGADOR) VALUES(2, 'CHROME');
INSERT INTO CAT_NAVEGADOR_WEB(ID, NAVEGADOR) VALUES(3, 'FIREFOX');
INSERT INTO CAT_NAVEGADOR_WEB(ID, NAVEGADOR) VALUES(4, 'INTERNET EXPLORER');
INSERT INTO CAT_NAVEGADOR_WEB(ID, NAVEGADOR) VALUES(5, 'SAFARI');
INSERT INTO CAT_NAVEGADOR_WEB(ID, NAVEGADOR) VALUES(6, 'OPERA');

DELETE FROM CAT_NAVEGADOR_WEB WHERE ID > 0;

DROP TABLE CAT_NAVEGADOR_WEB;

CREATE TABLE CAT_SO_USUARIOS(
    ID NUMBER NOT NULL,
    SO VARCHAR2(15) NOT NULL,
    CONSTRAINT CAT_SO_USUARIOS_PK PRIMARY KEY (ID) ENABLE 
);

INSERT INTO CAT_SO_USUARIOS(ID, SO) VALUES(1, 'NO IDENTIFICADO');
INSERT INTO CAT_SO_USUARIOS(ID, SO) VALUES(2, 'WINDOWS 7');
INSERT INTO CAT_SO_USUARIOS(ID, SO) VALUES(3, 'WINDOWS 8');
INSERT INTO CAT_SO_USUARIOS(ID, SO) VALUES(4, 'WINDOWS 10');
INSERT INTO CAT_SO_USUARIOS(ID, SO) VALUES(5, 'WINDOWS SERVER');
INSERT INTO CAT_SO_USUARIOS(ID, SO) VALUES(6, 'LINUX UBUNTU');
INSERT INTO CAT_SO_USUARIOS(ID, SO) VALUES(7, 'LINUX DEBIAN');
INSERT INTO CAT_SO_USUARIOS(ID, SO) VALUES(8, 'MAC OS');

DELETE FROM CAT_SO_USUARIOS WHERE ID > 0;

DROP TABLE CAT_SO_USUARIOS;

CREATE TABLE BIT_INVENT_TESTIGOS (
    ID VARCHAR2(20) NOT NULL,
    FECHA TIMESTAMP DEFAULT SYSDATE NOT NULL,
    OPERACION INT NOT NULL,
    IP VARCHAR2(20) NOT NULL,
    ID_USUARIO INT NOT NULL,
    NAVEGADOR INT NOT NULL,
    SO INT NOT NULL,
    DATOS VARCHAR2(300),
    CONSTRAINT BIT_INVENT_TESTIGOS_PK PRIMARY KEY (ID) ENABLE 
);

ALTER TABLE BIT_INVENT_TESTIGOS 
ADD CONSTRAINT BIT_INVENT_TESTIGOS_EMPLEADO_FK 
FOREIGN KEY(ID_USUARIO) REFERENCES USUARIOS_SOPORTE_CABS;

ALTER TABLE BIT_INVENT_TESTIGOS 
ADD CONSTRAINT BIT_INVENT_TESTIGOS_OPERACION_FK 
FOREIGN KEY(OPERACION) REFERENCES CAT_OPER_INVENT_TESTIGOS; 

ALTER TABLE BIT_INVENT_TESTIGOS 
ADD CONSTRAINT BIT_INVENT_TESTIGOS_NAVEGADOR_FK 
FOREIGN KEY(NAVEGADOR) REFERENCES CAT_NAVEGADOR_WEB;

ALTER TABLE BIT_INVENT_TESTIGOS 
ADD CONSTRAINT BIT_INVENT_TESTIGOS_SO_FK 
FOREIGN KEY(SO) REFERENCES CAT_SO_USUARIOS; 

INSERT INTO BIT_INVENT_TESTIGOS(ID, OPERACION, IP, ID_USUARIO, NAVEGADOR, SO, DATOS) VALUES ('000504294025712', 1, '127.0.0.1', 1, 3, 6, '');

DROP TABLE BIT_INVENT_TESTIGOS;

SELECT REVISADOS FROM montest_concentrado_error WHERE id_test = 286 and fecha = 42921;
SELECT COUNT(REVISADO) FROM montest_detalle_error WHERE id_testigo = 286 and fecha = 42921;

-- ESTRUCTURA DE LAS TABLAS DE REPORTES DE TESTIGOS.

CREATE TABLE CAT_TIPO_REPORTE (
    ID NUMBER NOT NULL,
    TIPO_REPORTE VARCHAR2(15) NOT NULL,
    CONSTRAINT CAT_TIPO_REPORTE_PK PRIMARY KEY (ID) ENABLE 
);

INSERT INTO CAT_TIPO_REPORTE(ID, TIPO_REPORTE) VALUES(1, 'CONFIGURACION');
INSERT INTO CAT_TIPO_REPORTE(ID, TIPO_REPORTE) VALUES(2, 'GRABADOR');
INSERT INTO CAT_TIPO_REPORTE(ID, TIPO_REPORTE) VALUES(3, 'ENVIO');
INSERT INTO CAT_TIPO_REPORTE(ID, TIPO_REPORTE) VALUES(4, 'NO CONECTA');
INSERT INTO CAT_TIPO_REPORTE(ID, TIPO_REPORTE) VALUES(5, 'HARDWARE');

DELETE FROM CAT_TIPO_REPORTE WHERE ID > 0;

DROP TABLE CAT_TIPO_REPORTE;

CREATE TABLE CAT_SUB_REPORTE(
    ID NUMBER NOT NULL,
    SUB_REPORTE VARCHAR2(25) NOT NULL,
    CONSTRAINT CAT_SUB_REPORTE_PK PRIMARY KEY (ID) ENABLE 
);

INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(1, 'GRABADOR');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(2, 'ENVIO');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(3, 'SERVIDOR Y BASE DE DATOS');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(4, 'PROBADO EN TESTIGO WEB');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(5, 'TRABADO');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(6, 'MALA CALIDAD DE SE�AL');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(7, 'VIDEO PEQUE�OS');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(8, 'NO GRABA');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(9, 'OTRO');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(10, 'MULTIPLES');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(11, 'NO CONECTA AL SERVIDOR');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(12, 'NO CONECTA VNC');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(13, 'CONTRASE�A NO CONOCIDA');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(14, 'ENLACE LENTO');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(15, 'SIN SINTONIZADORES');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(16, 'CAMBIO DE TARJETA WINTV');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(17, 'TARJETA DA�ADA DE WINTV');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(18, 'DISCO DURO DA�ADO');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(19, 'NO ENCIENDE');
INSERT INTO CAT_SUB_REPORTE(ID, SUB_REPORTE) VALUES(20, 'PC TRABADA');

DELETE FROM CAT_SUB_REPORTE WHERE ID > 0;

DROP TABLE CAT_SUB_REPORTE;

CREATE TABLE CAT_REPORTES(
    ID NUMBER NOT NULL,
    TIPO_REPORTE NUMBER NOT NULL,
    SUB_REPORTE NUMBER NOT NULL,
    CONSTRAINT CAT_REPORTES_PK PRIMARY KEY (ID) ENABLE 
);

ALTER TABLE CAT_REPORTES 
ADD CONSTRAINT CAT_TIPO_REPORTE_FK 
FOREIGN KEY(TIPO_REPORTE) REFERENCES CAT_TIPO_REPORTE;

ALTER TABLE CAT_REPORTES 
ADD CONSTRAINT CAT_SUB_REPORTE_FK 
FOREIGN KEY(SUB_REPORTE) REFERENCES CAT_SUB_REPORTE;

INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(1, 1, 1);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(2, 1, 2);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(3, 1, 3);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(4, 1, 4);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(5, 2, 5);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(6, 2, 6);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(7, 2, 7);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(8, 2, 8);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(9, 2, 9);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(10, 3, 5);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(11, 3, 10);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(12, 3, 11);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(13, 3, 9);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(14, 4, 12);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(15, 4, 13);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(16, 4, 14);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(17, 4, 9);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(18, 5, 15);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(19, 5, 16);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(20, 5, 17);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(21, 5, 18);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(22, 5, 19);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(23, 5, 20);
INSERT INTO CAT_REPORTES(ID, TIPO_REPORTE, SUB_REPORTE) VALUES(24, 5, 9);

DELETE FROM CAT_REPORTES WHERE ID > 0;

DROP TABLE CAT_REPORTES;

SELECT 
    B.TIPO_REPORTE, C.SUB_REPORTE 
FROM 
    CAT_REPORTE A, CAT_TIPO_REPORTE B, CAT_SUB_REPORTE C
WHERE
    A.TIPO_REPORTE = B.ID AND A.SUB_REPORTE = C.ID;

CREATE TABLE CAT_ESTADOS(
    ID NUMBER NOT NULL,
    ESTADO VARCHAR2(30) NOT NULL,
    CONSTRAINT CAT_ESTADOS_PK PRIMARY KEY (ID) ENABLE 
);

INSERT INTO CAT_ESTADOS(ID, ESTADO) VALUES(1, 'ACTIVO');
INSERT INTO CAT_ESTADOS(ID, ESTADO) VALUES(2, 'FINALIZADO');
INSERT INTO CAT_ESTADOS(ID, ESTADO) VALUES(3, 'REPORTE A RN');
INSERT INTO CAT_ESTADOS(ID, ESTADO) VALUES(4, 'TARJETA WINTV ESTREGADA A RN');
INSERT INTO CAT_ESTADOS(ID, ESTADO) VALUES(5, 'DISCO DURO ENTREGADO A RN');
INSERT INTO CAT_ESTADOS(ID, ESTADO) VALUES(6, 'CPU ENTREGADO A RN');

DELETE FROM CAT_ESTADOS WHERE ID > 0;

DROP TABLE CAT_ESTADOS;

CREATE TABLE CAT_ACCIONES(
    ID NUMBER NOT NULL,
    ACCION VARCHAR2(25) NOT NULL,
    CONSTRAINT CAT_ACCIONES_PK PRIMARY KEY (ID) ENABLE 
);

INSERT INTO CAT_ACCIONES(ID, ACCION) VALUES(1, 'REINICIO');
INSERT INTO CAT_ACCIONES(ID, ACCION) VALUES(2, 'CORRIGEN ANTENA');
INSERT INTO CAT_ACCIONES(ID, ACCION) VALUES(3, 'CONFIGURACION');
INSERT INTO CAT_ACCIONES(ID, ACCION) VALUES(4, 'OTRO');
INSERT INTO CAT_ACCIONES(ID, ACCION) VALUES(5, 'CORRIGEN ENLACE');
INSERT INTO CAT_ACCIONES(ID, ACCION) VALUES(6, 'CONTRASE�A CORRECTA');
INSERT INTO CAT_ACCIONES(ID, ACCION) VALUES(7, 'CAMBIO TARJETA');
INSERT INTO CAT_ACCIONES(ID, ACCION) VALUES(8, 'CAMBIO DISCO DURO');
INSERT INTO CAT_ACCIONES(ID, ACCION) VALUES(9, 'CAMBIO EQUIPO');
INSERT INTO CAT_ACCIONES(ID, ACCION) VALUES(10, 'REINICIO EQUIPO');

DELETE FROM CAT_ACCIONES WHERE ID > 0;

DROP TABLE CAT_ACCIONES;

CREATE TABLE REPORTES_TESTIGOS(
    ID NUMBER NOT NULL,
    FECHA TIMESTAMP DEFAULT SYSDATE NOT NULL,
    ID_TESTIGO NUMBER NOT NULL,
    ID_USUARIO NUMBER NOT NULL,
    REPORTE NUMBER NOT NULL,
    ESTADO NUMBER NOT NULL,
    CONSTRAINT REPORTE_TESTIGO_PK PRIMARY KEY (ID) ENABLE 
);

ALTER TABLE REPORTES_TESTIGOS 
ADD CONSTRAINT REPORTES_TESTIGOS_USUARIO_FK 
FOREIGN KEY(ID_USUARIO) REFERENCES USUARIOS_SOPORTE_CABS;

ALTER TABLE REPORTES_TESTIGOS 
ADD CONSTRAINT REPORTES_TESTIGOS_REPORTE_FK 
FOREIGN KEY(REPORTE) REFERENCES CAT_REPORTES;

ALTER TABLE REPORTES_TESTIGOS 
ADD CONSTRAINT REPORTES_TESTIGOS_ESTADO_FK 
FOREIGN KEY(ESTADO) REFERENCES CAT_ESTADOS;

INSERT INTO REPORTES_TESTIGOS(ID, ID_USUARIO, REPORTE, ESTADO) VALUES(1, 1, 1, 1);

DELETE FROM REPORTES_TESTIGOS WHERE ID > 0;

DROP TABLE REPORTES_TESTIGOS;

CREATE TABLE COMENTARIOS_REPORTES(
    ID NUMBER NOT NULL,
    FECHA TIMESTAMP DEFAULT SYSDATE NOT NULL,
    ID_USUARIO NUMBER NOT NULL,
    REPORTE NUMBER NOT NULL,
    COMENTARIO VARCHAR2(200) NOT NULL,
    CONSTRAINT COMENTARIOS_REPORTES_PK PRIMARY KEY (ID) ENABLE 
);

ALTER TABLE COMENTARIOS_REPORTES 
ADD CONSTRAINT COMENTARIOS_USUARIO_FK 
FOREIGN KEY(ID_USUARIO) REFERENCES USUARIOS_SOPORTE_CABS;

ALTER TABLE COMENTARIOS_REPORTES 
ADD CONSTRAINT COMENTARIOS_REPORTE_FK 
FOREIGN KEY(REPORTE) REFERENCES REPORTES_TESTIGOS;

INSERT INTO COMENTARIOS_REPORTES(ID, ID_USUARIO, REPORTE, COMENTARIO) VALUES(1, 1, 1, 'PRUEBA');

DELETE FROM COMENTARIOS_REPORTES WHERE ID > 0;

DROP TABLE COMENTARIOS_REPORTES;

CREATE TABLE ACCIONES_REPORTES(
    ID NUMBER NOT NULL,
    FECHA TIMESTAMP DEFAULT SYSDATE NOT NULL,
    ID_USUARIO NUMBER NOT NULL,
    REPORTE NUMBER NOT NULL,
    ACCION NUMBER NOT NULL,
    CONSTRAINT ACCIONES_REPORTES_PK PRIMARY KEY (ID) ENABLE 
);

ALTER TABLE ACCIONES_REPORTES 
ADD CONSTRAINT ACCIONES_USUARIO_FK 
FOREIGN KEY(ID_USUARIO) REFERENCES USUARIOS_SOPORTE_CABS;

ALTER TABLE ACCIONES_REPORTES 
ADD CONSTRAINT ACCIONES_REPORTE_FK 
FOREIGN KEY(REPORTE) REFERENCES REPORTES_TESTIGOS;

ALTER TABLE ACCIONES_REPORTES 
ADD CONSTRAINT ACCIONES_ACCION_FK 
FOREIGN KEY(ACCION) REFERENCES CAT_ACCIONES;

INSERT INTO ACCIONES_REPORTES(ID, ID_USUARIO, REPORTE, ACCION) VALUES(1, 1, 1, 1);

DELETE FROM ACCIONES_REPORTES WHERE ID > 0;

DROP TABLE ACCIONES_REPORTES;


SELECT 
    B.TIPO_REPORTE, C.SUB_REPORTE 
FROM 
    USUARIOS_SOPORTE_CABS A, CAT_REPORTE B, CAT_TIPO_REPORTE C, CAT_SUB_REPORTE D, CAT_ESTADOS E
WHERE
    A.TIPO_REPORTE = B.ID AND A.SUB_REPORTE = C.ID;