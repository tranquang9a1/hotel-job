using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebHotelv2.Models;

namespace WebHotelv2.Controllers
{ 
    public class CompanyController : Controller
    {
        private HotelJobEntities2 db = new HotelJobEntities2();

        //
        // GET: /Company/

        public ViewResult Index(int id)
        {
            var company = db.Companies.OrderByDescending(t => t.companyID).Skip((id - 1) * 10).Take(10)/*.Include(a => a.domainID).Include(b => b.cityID).Include(c => c.timeID)*/;
            var count = db.Companies.Count();
            int pagesize = count / 10 + ((count % 10 != 0) ? 1 : 0);
            ViewBag.PageCount = pagesize;
            ViewBag.CurrentPage = id;
            return View(company);
            //return View(db.Companies.ToList());
        }

        //
        // GET: /Company/Details/5

        public ViewResult Details(int id)
        {
            Company company = db.Companies.Find(id);
            return View(company);
        }

        //
        // GET: /Company/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Company/Create

        [HttpPost]
        public ActionResult Create(Company company)
        {
            if (ModelState.IsValid)
            {
                db.Companies.Add(company);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(company);
        }
        
        //
        // GET: /Company/Edit/5
 
        public ActionResult Edit(int id)
        {
            Company company = db.Companies.Find(id);
            return View(company);
        }

        //
        // POST: /Company/Edit/5

        [HttpPost]
        public ActionResult Edit(Company company)
        {
            if (ModelState.IsValid)
            {
                db.Entry(company).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(company);
        }

        //
        // GET: /Company/Delete/5
 
        public ActionResult Delete(int id)
        {
            Company company = db.Companies.Find(id);
            return View(company);
        }

        //
        // POST: /Company/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Company company = db.Companies.Find(id);
            db.Companies.Remove(company);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}