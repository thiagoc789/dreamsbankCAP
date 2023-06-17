using {app.interactions as my} from '../db/interactions';

service DreamsBankService {

    //KNOWLEDGE PEOPLE

    entity Aspirante           as projection on my.Aspirante;
    entity Donante             as projection on my.Donante;
    entity Producto            as projection on my.Producto;
    entity Aspiracion          as projection on my.Aspiracion;
    entity Donacion            as projection on my.Donacion;
    entity Asignacion          as projection on my.Asignacion;

    //KNOWLEDGE RUN

    entity Area                as projection on my.Area;
    entity Aspiracion_KR       as projection on my.Aspiracion_KR;
    entity Donacion_KR         as projection on my.Donacion_KR;
    entity Asignacion_KR       as projection on my.Asignacion_KR;
    entity Sponsor             as projection on my.Sponsor;
    /*
#KnowledgeProject

*/
    entity ASPIRANTE_KP        as projection on my.ASPIRANTE_KP;
    entity DONANTE_KP          as projection on my.DONANTE_KP;
    entity FABRICANTE_KP       as projection on my.FABRICANTE_KP;
    entity Aspiracion_KProject as projection on my.Aspiracion_KProject;
    entity Donacion_KProject   as projection on my.Donacion_KProject;
    entity Asignacion_KProject as projection on my.Asignacion_KProject;

    /*
    #KnowledgeFactory
    */


    entity KF_POSTULANTE       as projection on my.KF_POSTULANTE;
    entity KF_CLIENTE          as projection on my.KF_CLIENTE;
    entity KF_Postulacion      as projection on my.KF_Postulacion;
    entity KF_Necesidad        as projection on my.KF_Necesidad;
    entity KF_Asignacion       as projection on my.KF_Asignacion;


}
