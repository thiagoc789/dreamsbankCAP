namespace app.interactions;

entity Aspirante {
    key identificacion   : String(100);
        nombre           : String(100);
        edad             : Integer;
        ciudad           : String(100);
        imagen           : String(1000);
        semestre         : Integer;
        carrera          : String(100);
        fechaNacimiento  : Date;
        ciudadNacimiento : String(100);
        telefono         : String(100);
        correo           : String(100);
        direccion        : String(100);
        contrasena       : String(100);
        idProducto       : Association to Producto;
        haDonado         : Boolean;
        generico1        : String(100);
        generico2        : String(100);
        generico3        : String(100);
}

entity Donante {
    key identificacion  : String(100);
        tipo            : String(50); // Puede ser 'Natural' o 'Juridica'
        nombre          : String(100);
        edad            : Integer;
        ciudad          : String(100);
        empresa         : String(100);
        telefono        : String(100);
        correo          : String(100);
        imagen          : String(1000);
        web             : String(1000);
        direccion       : String(500);
        contrasena      : String(100);
        fechaNacimiento : Date;
        idProducto      : Association to Producto;
        haDonado        : Boolean;
        generico1       : String(100);
        generico2       : String(100);
        generico3       : String(100);
}

entity Producto {
    key id              : String(50);
        nombre_producto : String(100);
        descripcion     : String(500);
        valor           : String(100);
        tipo            : String(50);
        modalidad       : String(50);
        ciudad          : String(100);
        universidad     : String(100);
        fabricante      : String(100);
        imagen          : String(1000);
        generico1       : String(100);
        generico2       : String(100);
        generico3       : String(100);
}

entity Aspiracion {
  key id_aspiracion: Integer @cds.auto;
  aspirante : Association to Aspirante;
  producto : Association to Producto;
  // ... otros campos
}

entity Donacion {
  key id_donacion: Integer @cds.auto;
  donante : Association to Donante;
  producto : Association to Producto;
  // ... otros campos
}

entity Asignacion {
  key id_asignacion: Integer @cds.auto;
  aspirante : Association to Aspirante;
  donante : Association to Donante;
  // ... otros campos
}
