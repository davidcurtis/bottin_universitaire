using System.Linq;
using System.Web.Mvc;
using Bottin_DetR.Models;

namespace Bottin_DetR.Controllers
{
    [Authorize(Roles = "Administrateur")]
    public class AdminController : Controller
    {

        private DatabaseEntities _entities = new DatabaseEntities();

        //
        // GET: /Admin/

        public ActionResult Acceuil()
        {
            return View();
        }


        public ActionResult Liste()
        {
            return View(_entities.table_etudiant.ToList());
        }

        //::::::::::::::::::INSCRIPTION::::::::::::::::::::::::

        public ActionResult Inscrire()
        {
            return View();
        }


        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Inscrire(etudiant etudiantToCreate) 
        {
            try
              {
                  _entities.AddTotable_etudiant(etudiantToCreate);
                  _entities.SaveChanges();
                 
                return RedirectToAction("Liste");
              
            }
              catch
           {
           }
            return View();
        }



        // ::::::::::::::::::MODIFIER::::::::::::::::::::::::

      
        public ActionResult Modification(string Matricule)
        {
             var etudiantToEdit = (from m in _entities.table_etudiant
                                    where m.matricule == Matricule
                                     select m).First();
             return View("Modification");

        }

        public ActionResult Supprimer (string Matricule)
        {
            var etudiantSupprimer = (from m in _entities.table_etudiant
                                  where m.matricule == Matricule
                                  select m).First();
            _entities.table_etudiant.DeleteObject(etudiantSupprimer);
            _entities.SaveChanges();

            return RedirectToAction("Liste");

        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Modification(etudiant etudiantToEdit)
        {
            var etudiantSupprimer = (from m in _entities.table_etudiant
                                     where m.matricule == etudiantToEdit.matricule
                                     select m).First();
            _entities.table_etudiant.DeleteObject(etudiantSupprimer);
            _entities.SaveChanges();
            _entities.AddTotable_etudiant(etudiantToEdit);
            _entities.SaveChanges();


            return RedirectToAction("Liste");


        }
            
            
        
        

       // ::::::::::::::::::SUPPRIMER::::::::::::::::::::::::

        public ActionResult Suppression()
        {
            return View();
        }

        public ActionResult Recherche()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Recherche(etudiant etudiantRechercher)
        {
            var etudiantRecherche = (from m in _entities.table_etudiant
                                     where m.nom == etudiantRechercher.nom
                                     select m).First();

            return View("ResultatRecherche", etudiantRecherche);
        }

        public ActionResult ResultatRecherche(etudiant etudiantTrouve)
        {
            return PartialView();
        }



        public etudiant etudiantToCreate { get; set; }

        public etudiant etudiantToEdit { get; set; }
    }
}
