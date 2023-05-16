using {app.interactions as my} from '../db/interactions';

service DreamsBankService {

    entity Aspirante          as projection on my.Aspirante;
    entity Donante as projection on my.Donante;
    entity Producto as projection on my.Producto;

}
