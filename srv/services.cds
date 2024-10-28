using {db.Kandidaat as my} from '../db/schema'; 

service KandidaatService {
    entity Kandidaten as projection on my.Kandidaten; 

}
