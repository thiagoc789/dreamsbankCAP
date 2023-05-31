namespace app.interactions;

entity Aspirante {
  key identificacion     : String(100);
      nombre             : String(100);
      edad               : Integer;
      ciudad             : String(100);
      imagen             : String(1000);
      semestre           : Integer;
      carrera            : String(100);
      fechaNacimiento    : Date;
      ciudadNacimiento   : String(100);
      telefono           : String(100);
      correo             : String(100);
      direccion          : String(100);
      contrasena         : String(100);
      haAspirado           : Boolean;
      numeroAspiraciones : Integer default 0;
      universidad        : String(100);
      createdAt          : DateTime @cds.on.insert: $now;
      fecha_creacion     : Date;
}

entity Donante {
  key identificacion   : String(100);
      tipo             : String(50); // Puede ser 'Natural' o 'Juridica'
      nombre           : String(100);
      edad             : Integer;
      ciudad           : String(100);
      empresa          : String(100);
      telefono         : String(100);
      correo           : String(100);
      imagen           : String(1000);
      web              : String(1000);
      direccion        : String(500);
      contrasena       : String(100);
      fechaNacimiento  : Date;
      haDonado         : Boolean;
      numeroDonaciones : Integer default 0;
      createdAt        : DateTime @cds.on.insert: $now;
      fecha_creacion   : Date;
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
      createdAt       : DateTime @cds.on.insert: $now;
      fecha_creacion  : Date;
}

entity Aspiracion {
  key id_aspiracion  : UUID;
      aspirante      : Association to Aspirante;
      producto       : Association to Producto;
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

entity Donacion {
  key id_donacion    : UUID;
      donante        : Association to Donante;
      producto       : Association to Producto;
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

entity Asignacion {
  key id_asignacion  : UUID;
      aspirante      : Association to Aspirante;
      donante        : Association to Donante;
      producto       : Association to Producto;
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}


/*#Knowledge Run
Aplicacion para pasantias practicas y primer empleo
Catalogo de en que puedo hacer pasantia (S4Hana, Build, Analiticas ...)
Empresa donde se pueda dar*/

//MISMO ASPIRANTE, MISMO DONANTE, MISMO PRODUCTO, CAMBIAN ASPIRACIONES Y DONACIONES

entity Area {
  key id: UUID;
  nombre: String(1000);
  descripcion: String(1000);
  imagen: String(1000);
}


entity Aspiracion_KR {
  key id_aspiracion  : UUID;
      aspirante      : Association to Aspirante;
      producto       : Association to Producto;
      area: Association to Area;
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

entity Donacion_KR {
  key id_donacion    : UUID;
      donante        : Association to Donante;
      producto       : Association to Producto;
      area: Association to Area;
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

entity Asignacion_KR {
  key id_asignacion  : UUID;
      aspirante      : Association to Aspirante;
      donante        : Association to Donante;
      producto       : Association to Producto;
      area: Association to Area;
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

