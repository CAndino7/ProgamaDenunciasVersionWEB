
-- crear
CREATE TABLE EXPEDIENTE (
  numCaso SERIAL PRIMARY KEY,
  Acusado TEXT NOT NULL,
  Acusante TEXT NOT NULL,
  Ofensa TEXT NOT NULL,
  Testigos TEXT NOT NULL,
  delitos TEXT NOT NULL,
   culpable boolean null
  --fecha de entrega DATE NOT NULL DEFAULT CURRENT_DATE
  
);

-- ejemplos agregados
INSERT INTO EXPEDIENTE VALUES (1,'Jorge Giovanni', 'Carlo Palermino', 'Pirateria en Perjurio del convento Franciscano',
'juana mengana, lucy sofia', 'pirateria' );

INSERT INTO EXPEDIENTE VALUES (2,'JoseManuel Serrano', 'Carlos Palermo', 'Conducir en estado de Ebriedad',
'suboficial teniente martinez', 'delito de transito' );

-- se ingresa un expediente sin los datos completos
INSERT INTO EXPEDIENTE VALUES (3,'no tiene nombre', 'Ciela Serena', 'El acusado me intento matar! ',
'Veronica Zelaya, Maria Paz, Patricia Perez', 'intento de homicidio', False );

--ahora debe ser actualizado desde la pagina web

update EXPEDIENTE SET culpable = True, Acusado = 'Manolo' where Acusante = 'Ciela Serena';

-- cuando se mande a hacer una busqueda
SELECT delitos, Acusado, culpable numCaso FROM EXPEDIENTE;

--este delito ser resolvio sin ocupar ir a juicio
DELETE from EXPEDIENTE where delitos = 'delitos de transito'