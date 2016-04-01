package espamacs.pagination;

/**
 * Created by iduetxe on 30/03/16.
 */
public class Pagination implements grails.validation.Validateable
{
    String sort;
    Integer max=10;
    String order="asc"
    Integer offset = 0
    Long total=0;

    Integer getMax(){
        Math.min(max ?: 10, 100)
    }

    String getOrder(){
        this.order?: "asc"
    }

    Integer getOffset(){
        this.offset?:0
    }

    static constraints = {
        sort nullable: true
        max nullable: true
        order nullable: true
        total nullable: true
    }
}
