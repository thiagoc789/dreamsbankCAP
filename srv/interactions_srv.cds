using {app.interactions as my} from '../db/interactions';

service DreamsBankService {

    //KNOWLEDGE PEOPLE

    entity Aspirante          as projection on my.Aspirante;
    entity Donante as projection on my.Donante;
    entity Producto as projection on my.Producto;
    entity Aspiracion as projection on my.Aspiracion;
    entity Donacion as projection on my.Donacion;
    entity Asignacion as projection on my.Asignacion;

    //KNOWLEDGE RUN

    entity Area as projection on my.Area;
    entity Aspiracion_KR as projection on my.Aspiracion_KR;
    entity Donacion_KR as projection on my.Donacion_KR;
    entity Asignacion_KR as projection on my.Asignacion_KR;

}
