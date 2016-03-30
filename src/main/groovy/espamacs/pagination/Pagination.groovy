package espamacs.pagination;

import grails.validation.Validateable;
/**
 * Created by iduetxe on 30/03/16.
 */
public class Pagination implements grails.validation.Validateable
{
    String sort;
    Integer max=10;
    String order="asc"
    Long total=0;

    Integer getMax(){
        Math.min(max ?: 10, 100)
    }

    static constraints = {
        sort nullable: true
        max nullable: true
        order nullable: true
        total nullable: true
    }
}
