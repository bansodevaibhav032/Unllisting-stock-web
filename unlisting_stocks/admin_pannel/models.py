from django.db import models
from django.db.models.fields import CharField, TextField, reverse_related
from datetime import datetime,timedelta
from django.http.request import MediaType
from django.utils import timezone
from django.contrib.auth.models import User, auth
from django.utils import timezone
from datetime import datetime
import datetime
# Create your models here.


class Seller(models.Model):
    sellerId =models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=50, default='NA')
    last_name = models.CharField(max_length=50, default='NA')
    mobile_no =models.CharField(max_length=50,  default="NA")
    email = models.CharField(max_length=50,  default='NA')
    country = models.CharField(max_length=50,  default='NA')
    state = models.CharField(max_length=50, default='NA')
    city = models.CharField(max_length=50, default='NA')
    address_line_1 = models.CharField(max_length=550, default='NA')
    address_line_2 = models.CharField(max_length=550, default='NA')
    landmark = models.CharField(max_length=550, default='NA')
    pincode = models.CharField(max_length=50,  default='NA')
    identity = models.CharField(max_length=550, default='NA')
    company_name = models.CharField(max_length=50, default='NA')
    status = models.CharField(max_length=200, default="Active")
    
    def __str__(self):
        return str(self.sellerId)

class Company(models.Model):
    companyId =models.AutoField(primary_key=True)
    sellerId = models.ForeignKey(Seller, on_delete=models.CASCADE  )
    industry = models.CharField(max_length=50, default='NA',  null = True, blank=True)
    overview = models.TextField(max_length=500, null = True,  blank=True)
    tageline = models.CharField(max_length=500, default='NA', null = True, blank=True)
    logo = models.ImageField(upload_to="images", null=True, blank=True)
    company_name = models.CharField(max_length=50, default='NA', null = True, blank=True)
    report_pdf = models.FileField(upload_to='company_pdf',  blank=True)
    price = models.IntegerField( null=True, blank=True)
    lot_size = models.IntegerField( null=True, blank=True)
    total_available_share = models.IntegerField( null=True, blank=True)
    face_value = models.IntegerField( null=True, blank=True)
    cin = models.CharField(max_length=50, default='NA',   null = True,blank=True)
    tan = models.CharField(max_length=50, default='NA',  null = True, blank=True)
    pan = models.CharField(max_length=50, default='NA',  null = True, blank=True)
    status = models.CharField(max_length=200, default="Active")


    def __str__(self):
        return str(self.companyId)

class AboutCompany(models.Model):
    AboutCompanyId =models.AutoField(primary_key=True)
    companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    about_Company = models.TextField(max_length=1500, null = True, blank=True)

    def __str__(self):
        return str(self.AboutCompanyId)

class Evalution(models.Model):
    evalutionId =models.AutoField(primary_key=True)
    companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    evalution = models.TextField(max_length=1500, null = True, blank=True)

    def __str__(self):
        return str(self.evalutionId)

class Products(models.Model):
    productsId =models.AutoField(primary_key=True)
    companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    products = models.TextField(max_length=1500,  null = True, blank=True)

    def __str__(self):
        return str(self.productsId)

class Services(models.Model):
    serviceId =models.AutoField(primary_key=True)    
    companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    service = models.TextField(max_length=1500, null = True,  blank=True)

    def __str__(self):
        return str(self.serviceId)

class IndustryOverview(models.Model):
    industryOverviewId =models.AutoField(primary_key=True)
    companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    industry_overview = models.TextField(max_length=1500, null = True, blank=True)

    def __str__(self):
        return str(self.industryOverviewId)

class Award(models.Model):
    awardId =models.AutoField(primary_key=True)
    companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    award = models.TextField(max_length=500,  null = True, blank=True)

    def __str__(self):
        return str(self.awardId)

class Rationle(models.Model):
    rationleId =models.AutoField(primary_key=True)
    companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    rationle = models.TextField(max_length=1500, null = True,  blank=True)

    def __str__(self):
        return str(self.rationleId)

class AnnualReport(models.Model):
    annualReportId =models.AutoField(primary_key=True)
    companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    annual_report = models.FileField(upload_to='annual_pdf',  blank=True)

    def __str__(self):
        return str(self.annualReportId)

class Buyer(models.Model):
    buyerId =models.AutoField(primary_key=True)
    userId = models.ForeignKey(User, on_delete=models.CASCADE)
    #companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    mobile_no =  models.CharField(max_length=50,  null = True,blank=True)
    designation =  models.CharField(max_length=50,  null = True,blank=True)
    country = models.CharField(max_length=50,  null = True,blank=True)
    state = models.CharField(max_length=50,  null = True,blank=True)
    city = models.CharField(max_length=50, null = True, blank=True)
    address_line_1 = models.CharField(max_length=550, null = True,  blank=True)
    address_line_2 = models.CharField(max_length=550,  null = True,blank=True)
    landmark = models.CharField(max_length=550, null = True,  blank=True)
    pincode = models.CharField(max_length=50, null = True,  blank=True)
    status = models.CharField(max_length=200, default="Active")    
    
    def __str__(self):
        return str(self.buyerId)


class DealsRequest(models.Model):
    dealsRequestId =models.AutoField(primary_key=True)
    buyerId = models.ForeignKey(Buyer, on_delete=models.CASCADE, default = 1)
    companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    date = models.CharField(max_length=10, null = True, blank=True)
    share_qauntity = models.IntegerField(null=True, blank=True)
    share_price = models.IntegerField( null=True, blank=True)
    message = models.CharField(max_length=500, null = True, blank=True)
    subject = models.CharField(max_length=500, null = True, blank=True)
    datetime = models.DateTimeField(auto_now_add=True, blank=True)
    status = models.CharField(max_length=20, default="Active")
    
    def __str__(self):
        return str(self.dealsRequestId)

class CompanyMaster(models.Model):
    companyMasterId =models.AutoField(primary_key=True)
    company_name =  models.CharField(max_length=50, null = True, blank=True)
    tageline = models.CharField(max_length=50, default='NA',  null = True, blank=True)
    logo = models.ImageField(upload_to="media/master", blank=True)
    address_line_1 = models.CharField(max_length=550, null = True, blank=True)
    address_line_2 = models.CharField(max_length=550, null = True, blank=True)
    country = models.CharField(max_length=50,  null = True,blank=True)
    state = models.CharField(max_length=50,  null = True,blank=True)
    city = models.CharField(max_length=50, null = True, blank=True)
    pincode = models.CharField(max_length=50, null = True, blank=True)
    email = models.EmailField(null=True, blank=True)
    contact_1 = models.CharField(max_length=50,  null = True,blank=True)
    contact_2 = models.CharField(max_length=50,  null = True,blank=True)
    facebook_account_link = models.CharField(max_length=550, null = True, blank=True)
    twitter_account_link = models.CharField(max_length=550, null = True, blank=True)
    linked_link = models.CharField(max_length=550,  null = True, blank=True)
    instagram_link = models.CharField(max_length=550, null = True, blank=True)
    about_us = models.CharField(max_length=500, default='NA',null = True, blank=True)
    mission = models.CharField(max_length=500, default='NA', null = True,  blank=True)
    vission = models.CharField(max_length=500, default='NA', null = True,  blank=True)
    website = models.CharField(max_length=500, default='NA', null = True,  blank=True)
    
    def __str__(self):
        return str(self.companyMasterId)
    

class ContactUs(models.Model):
    contactUsId =models.AutoField(primary_key=True)
    full_name = models.CharField(max_length=50, default='NA', null = True, blank=True)
    mobile_no =models.CharField(max_length=50, null = True, blank=True)
    email = models.EmailField(null=True, blank=True, unique=True)
    location =models.CharField(max_length=50, default='NA', null = True,  blank=True)
    identuty =models.CharField(max_length=50, default='NA', null = True, blank=True)
    want_to =models.CharField(max_length=500, default='NA', null = True, blank=True)
    message =models.CharField(max_length=500, default='NA', null = True, blank=True)
    datetime = models.DateTimeField(auto_now_add=True, blank=True)
    subject =models.CharField(max_length=500, default='NA', null = True,  blank=True)

    def __str__(self):
        return str(self.contactUsId)

class PastPerformance(models.Model):
    pastPerformanceId =models.AutoField(primary_key=True)
    companyId = models.ForeignKey(Company, on_delete=models.CASCADE, default = 1)
    pre_IPO_selling_price = models.IntegerField(null=True, blank=True)
    ipo_band_price = models.IntegerField( null=True, blank=True)
    listing_price = models.IntegerField( null=True, blank=True)

    def __str__(self):
        return str(self.pastPerformanceId)

class Blog(models.Model):
    title = models.CharField(max_length=550, default='NA', null = True, blank=True)
    datetime = models.DateTimeField(auto_now_add=True, blank=True)
    auth = models.ForeignKey(User, on_delete=models.CASCADE, default = 1)
    category = models.FileField(upload_to="media/bolg/category", blank=True)
    viewCount = models.IntegerField(default=350,  null = True,  blank=True)
    image = models.ImageField(upload_to="media/bolg", blank=True)
    par1 = models.TextField(max_length=500, default='NA', null = True,  blank=True)
    par2 = models.TextField(max_length=500, default='NA', null = True,  blank=True)
    par3 = models.TextField(max_length=500, default='NA', null = True,  blank=True)
    par4 = models.TextField(max_length=500, default='NA', null = True,  blank=True)
    status = models.CharField(max_length=200, default="Active")    

class Reviews(models.Model):
    reviewsId = models.AutoField(primary_key=True)
    message = models.CharField(max_length=500, null = True, blank=True)
    holder_name = models.CharField(max_length=50, default='NA', null = True, blank=True)
    date= models.CharField(max_length= 23, default= datetime.datetime.now() )

    def __str__(self):
        return str(self.reviewsId)
   

