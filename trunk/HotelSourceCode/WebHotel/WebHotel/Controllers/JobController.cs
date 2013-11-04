using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebHotel.Models;

namespace WebHotel.Controllers
{ 
    public class JobController : Controller
    {
        private HotelJobEntities1 db = new HotelJobEntities1();

        //
        // GET: /Job/

        //public ViewResult Index()
        //{
        //    var jobs = db.Jobs.Include(j => j.Area).Include(j => j.Company).Include(j => j.Place).Include(j => j.Position).Include(j => j.Time);
        //    return View(jobs.ToList());
        //}

        //
        // GET: /Job/Details/5

        public ViewResult Details(int id)
        {
            Job job = db.Jobs.Find(id);
            return View(job);
        }

        //
        //Phân trang
        public ViewResult Page(int id)
        {
            var job = db.Jobs.OrderByDescending(t => t.jobID).Skip((id - 1) * 5).Take(5).Include(j => j.Area).Include(j => j.Company).Include(j => j.Place).Include(j => j.Position).Include(j => j.Time);
            var count = db.Jobs.Count();
            int pagesize = count/5 + ((count%5 != 0) ? 1 : 0);
            ViewBag.PageCount = pagesize;
            ViewBag.CurrentPage = id;
            return View(job);
        }

        //
        // GET: /Job/Create

        public ActionResult Create()
        {
            ViewBag.domainID = new SelectList(db.Areas, "areaID", "areaName");
            ViewBag.companyID = new SelectList(db.Companies, "companyID", "companyName");
            ViewBag.cityID = new SelectList(db.Places, "placeID", "placeName");
            ViewBag.positionID = new SelectList(db.Positions, "positionID", "positionName");
            ViewBag.timeID = new SelectList(db.Times, "timeID", "timeInfo");
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
                return RedirectToAction("Page");  
            }

            ViewBag.domainID = new SelectList(db.Areas, "areaID", "areaName", job.domainID);
            ViewBag.companyID = new SelectList(db.Companies, "companyID", "companyName", job.companyID);
            ViewBag.cityID = new SelectList(db.Places, "placeID", "placeName", job.cityID);
            ViewBag.positionID = new SelectList(db.Positions, "positionID", "positionName", job.positionID);
            ViewBag.timeID = new SelectList(db.Times, "timeID", "timeInfo", job.timeID);
            return View(job);
        }
        
        //
        // GET: /Job/Edit/5
 
        public ActionResult Edit(int id)
        {
            Job job = db.Jobs.Find(id);
            ViewBag.domainID = new SelectList(db.Areas, "areaID", "areaName", job.domainID);
            ViewBag.companyID = new SelectList(db.Companies, "companyID", "companyName", job.companyID);
            ViewBag.cityID = new SelectList(db.Places, "placeID", "placeName", job.cityID);
            ViewBag.positionID = new SelectList(db.Positions, "positionID", "positionName", job.positionID);
            ViewBag.timeID = new SelectList(db.Times, "timeID", "timeInfo", job.timeID);
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
                return RedirectToAction("Page");
            }
            ViewBag.domainID = new SelectList(db.Areas, "areaID", "areaName", job.domainID);
            ViewBag.companyID = new SelectList(db.Companies, "companyID", "companyName", job.companyID);
            ViewBag.cityID = new SelectList(db.Places, "placeID", "placeName", job.cityID);
            ViewBag.positionID = new SelectList(db.Positions, "positionID", "positionName", job.positionID);
            ViewBag.timeID = new SelectList(db.Times, "timeID", "timeInfo", job.timeID);
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
            return RedirectToAction("Page");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}