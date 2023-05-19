using {app.interactions as my} from '../db/interactions';

service DreamsBankService {

    entity Aspirante          as projection on my.Aspirante;
    entity Donante as projection on my.Donante;
    entity Producto as projection on my.Producto;
    entity Aspiracion as projection on my.Aspiracion;
    entity Donacion as projection on my.Donacion;
    entity Asignacion as projection on my.Asignacion;

}
