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
    public class JobController : Controller
    {
        private HotelJobEntities2 db = new HotelJobEntities2();

        //
        // GET: /Job/

        public ViewResult Index(int id)
        {

            var job = db.Jobs.OrderByDescending(t => t.jobID).Skip((id - 1) * 10).Take(10)/*.Include(a => a.domainID).Include(b => b.cityID).Include(c => c.timeID)*/;
            var count = db.Jobs.Count();
            int pagesize = count / 10 + ((count % 10 != 0) ? 1 : 0);
            ViewBag.PageCount = pagesize;
            ViewBag.CurrentPage = id;
            return View(job);
        }

        //
        //Phân trang
        //public ViewResult JobPage(int id)
        //{
        //    var job = db.Jobs.OrderByDescending(t => t.jobID).Skip((id - 1) * 1).Take(1);
        //    var count = db.Jobs.Count();
        //    int pagesize = count / 1 + ((count % 5 != 0) ? 1 : 0);
        //    ViewBag.PageCount = pagesize;
        //    ViewBag.CurrentPage = id;
        //    return View(job);
        //}

        //
        // GET: /Job/Details/5

        public ViewResult Details(int id)
        {
            Job job = db.Jobs.Find(id);
            return View(job);
        }

        //
        // GET: /Job/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Job/Create

        [HttpPost]
        public ActionResult Create(Job job)
        {
            if (ModelState.IsValid)
            {
                db.Jobs.Add(job);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(job);
        }
        
        //
        // GET: /Job/Edit/5
 
        public ActionResult Edit(int id)
        {
            Job job = db.Jobs.Find(id);
            return View(job);
        }

        //
        // POST: /Job/Edit/5

        [HttpPost]
        public ActionResult Edit(Job job)
        {
            if (ModelState.IsValid)
            {
                db.Entry(job).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(job);
        }

        //
        // GET: /Job/Delete/5
 
        public ActionResult Delete(int id)
        {
            Job job = db.Jobs.Find(id);
            return View(job);
        }

        //
        // POST: /Job/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Job job = db.Jobs.Find(id);
            db.Jobs.Remove(job);
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