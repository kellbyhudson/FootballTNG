package controllers;

import play.data.FormFactory;
import play.db.jpa.JPAApi;
import play.mvc.Controller;
import play.mvc.Result;

import javax.inject.Inject;

public class TeamController extends Controller
{
    private JPAApi jpaApi;
    private FormFactory formFactory;

    @Inject
    public TeamController(JPAApi jpaApi, FormFactory formFactory)
    {
        this.jpaApi = jpaApi;
        this.formFactory = formFactory;
    }

    public Result getNewTeam()
    {
        return ok(views.html.newteam.render());
    }
}
