package controllers;

import play.data.DynamicForm;
import play.data.FormFactory;
import play.db.jpa.JPAApi;
import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;

import javax.inject.Inject;

public class PlayerController extends Controller
{
    private FormFactory formFactory;
    private JPAApi jpaApi;

    @Inject
    public PlayerController(JPAApi jpaApi, FormFactory formFactory)
    {
        this.jpaApi = jpaApi;
        this.formFactory = formFactory;
    }

    @Transactional(readOnly = true)
    public Result getStart()
    {
        DynamicForm form = formFactory.form().bindFromRequest();

        String searchName = form.get("searchname");

        if(searchName == null)
        {
            searchName = "";
        }

        searchName += "%";

        return ok(views.html.start.render());
    }


}
