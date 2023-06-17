namespace app.interactions;

entity Fundacion {
  key identificacion : String(100);
      nombre         : String(100);
      ciudad         : String(100);
      imagen         : String(1000);
      telefono       : String(100);
      correo         : String(100);
      direccion      : String(100);
      contrasena     : String(100);
      universidad    : String(100);
      modulo         : String(10);
}

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
      haAspirado         : Boolean;
      numeroAspiraciones : Integer default 0;
      universidad        : String(100);
      createdAt          : DateTime @cds.on.insert: $now;
      fecha_creacion     : Date;
      modulo             : String(10);
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
      modulo           : String(10);
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
  key id          : UUID;
      nombre      : String(1000);
      descripcion : String(1000);
      imagen      : String(1000);
}


entity Aspiracion_KR {
  key id_aspiracion  : UUID;
      aspirante      : Association to Aspirante;
      tipo           : String(100);
      area           : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

entity Donacion_KR {
  key id_donacion    : UUID;
      empresa        : Association to Donante;
      tipo           : String(100);
      area           : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

entity Asignacion_KR {
  key id_asignacion  : UUID;
      aspirante      : Association to Aspirante;
      empresa        : Association to Donante;
      tipo           : String(100);
      area           : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

//AÑADIR SPONSOR QUE SI LA EMPRESA NO TIENE PARA PAGARLE AL PASANTE O PRACTICANTE ENTONCES ENTRA AQUÍ
//PREGUNTAR LA LOGICA DE ESTA PARTE SI LA EMPRESA AL MOMENTO DE BUSCAR DEBE DECIR QUE NECESITA SPONSOR O EN LA ASIGNACIÖN VA LA ELECCION SI SE ELIGE SPONSOR O NO
entity Sponsor {

  key identificacion : String(100);
      nombre         : String(100);
      ciudad         : String(100);
      CEO            : String(100);
      telefono       : String(100);
      correo         : String(100);
      imagen         : String(1000);
      web            : String(1000);
      direccion      : String(500);
      contrasena     : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

/*
#KnowledgeProject
Aspirante es una empresa que no tiene para adquirir projectos
Donante es una empresa que dona esos projectos de automatizacion etc..
Fabricante es el que puede donar la tecnologia
*/

entity ASPIRANTE_KP {
  key identificacion : String(100);
      nombre         : String(100);
      ciudad         : String(100);
      CEO            : String(100);
      telefono       : String(100);
      correo         : String(100);
      imagen         : String(1000);
      web            : String(1000);
      direccion      : String(500);
      contrasena     : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;
}

entity DONANTE_KP {
  key identificacion : String(100);
      nombre         : String(100);
      ciudad         : String(100);
      CEO            : String(100);
      telefono       : String(100);
      correo         : String(100);
      imagen         : String(1000);
      web            : String(1000);
      direccion      : String(500);
      contrasena     : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;
}

entity FABRICANTE_KP {
  key identificacion : String(100);
      nombre         : String(100);
      ciudad         : String(100);
      CEO            : String(100);
      telefono       : String(100);
      correo         : String(100);
      imagen         : String(1000);
      web            : String(1000);
      direccion      : String(500);
      contrasena     : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;
}

//ESTA ASPIRACION VA A TENER UN AREA DEL PROJECTO QUE SE NECESITA, UNA DESRIPCION Y VALOR ESTIMADO Y TIEMPO ESTIMADO DE ESE PROJECTO
entity Aspiracion_KProject {
  key id              : UUID;
      aspirante       : Association to ASPIRANTE_KP;
      area            : String(100);
      descripcion     : String(1000); //DESCRIPCION DEL PROJECTO QUE SE NECESITA
      presupuesto     : Integer;
      tiempo_estimado : String(100);
      createdAt       : DateTime @cds.on.insert: $now;
      fecha_creacion  : Date;

}

// ESTA DONACION VA A TENER UN AREA DEL PROJECTO QUE SE QUIERE DONAR, UN VALOR TOPE DE LOS PROJECTOS QUE SE PUEDEN DONAR IGUAL QUE EL TIEMPO

entity Donacion_KProject {
  key id             : UUID;
      donante        : Association to DONANTE_KP;
      area           : String(100);
      descripcion    : String(100); //QUE SABE HACER DE ESA AREA Y QUE PROJECTOSPUEDE HACER
      valorTope      : Integer;
      tiempoTope     : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

entity Asignacion_KProject {
  key id_asignacion  : UUID;
      aspirante      : Association to ASPIRANTE_KP;
      donante        : Association to DONANTE_KP;
      area           : String(100);
      valor          : Integer;
      tiempo         : Integer;
      descripcion    : String(1000);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}


/*KnowledgeFactory
Empresas que se postulan y dicen yo se hacer esto
Empresas que dicen yo necesito de esto
20% del valor del projecto va para los otros modulos

*/


entity KF_POSTULANTE {
  key identificacion : String(100);
      nombre         : String(100);
      ciudad         : String(100);
      CEO            : String(100);
      telefono       : String(100);
      correo         : String(100);
      imagen         : String(1000);
      web            : String(1000);
      direccion      : String(500);
      contrasena     : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;
}

entity KF_CLIENTE {
  key identificacion : String(100);
      nombre         : String(100);
      ciudad         : String(100);
      CEO            : String(100);
      telefono       : String(100);
      correo         : String(100);
      imagen         : String(1000);
      web            : String(1000);
      direccion      : String(500);
      contrasena     : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;
}


// ESTA POSTULACION SE PONE EL AREA DE LA CUAL SE PUEDEN HACER PROJECTOS, DESCRIPCION DE LO QUE SE SABE HACER Y VALOR ESTIMADO DE ESA POSTULACION DE CAUNTO PUED COSTAR ESE DESARRROLLO
entity KF_Postulacion {
  key id              : UUID;
      postulante      : Association to KF_POSTULANTE;
      area            : String(100);
      descripcion     : String(1000);
      valor_estimado  : Integer;
      tiempo_estimado : String(100);
      createdAt       : DateTime @cds.on.insert: $now;
      fecha_creacion  : Date;

}

// NECESIDAD ES QUE LA EMPRESA ESTE BUSCANDO DESARROLLLAR UN PROJECTO SE PONE EL AREA A LA CUAL PERTENECE ESE PROJECTO Y LA DESCRIPCION, TAMBIEN EL PRESUPUESTO ESTIMADO Y TIEMPO

entity KF_Necesidad {
  key id             : UUID;
      donante        : Association to KF_CLIENTE;
      area           : String(100);
      descripcion    : String(1000);
      presupuesto    : Integer;
      tiempoTope     : String(100);
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}

entity KF_Asignacion {
  key id_asignacion  : UUID;
      aspirante      : Association to ASPIRANTE_KP;
      donante        : Association to DONANTE_KP;
      area           : String(100);
      valor          : Integer;
      tiempo         : Integer;
      createdAt      : DateTime @cds.on.insert: $now;
      fecha_creacion : Date;

}
