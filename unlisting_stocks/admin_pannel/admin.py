from django.contrib import admin
from admin_pannel.models import AboutCompany, Reviews, AnnualReport, Award, Evalution, IndustryOverview, Products, Rationle, Seller,Company,Buyer,DealsRequest,ContactUs,PastPerformance, Services, Blog ,CompanyMaster


class Selleradmin(admin.ModelAdmin):
    list_display = ('sellerId','first_name','last_name','mobile_no','email','country','state','city','address_line_1','address_line_2','landmark','pincode','identity','company_name','status')
admin.site.register(Seller,Selleradmin)

class Companyadmin(admin.ModelAdmin):
    list_display =('companyId','sellerId','industry','overview','tageline','logo','report_pdf','price','lot_size','total_available_share','face_value','cin','tan','pan','status' )
admin.site.register(Company,Companyadmin)

class AboutCompanyadmin(admin.ModelAdmin):
    list_display =('AboutCompanyId','companyId','about_Company')
admin.site.register(AboutCompany,AboutCompanyadmin)

class Evalutionadmin(admin.ModelAdmin):
    list_display =('evalutionId','companyId','evalution')
admin.site.register(Evalution,Evalutionadmin)

class Productsadmin(admin.ModelAdmin):
    list_display =('productsId','companyId','products')
admin.site.register(Products,Productsadmin)

class Servicesadmin(admin.ModelAdmin):
    list_display =('serviceId','companyId','service')
admin.site.register(Services,Servicesadmin)

class IndustryOverviewadmin(admin.ModelAdmin):
    list_display =('industryOverviewId','companyId','industry_overview')
admin.site.register(IndustryOverview,IndustryOverviewadmin)

class AnnualReportadmin(admin.ModelAdmin):
    list_display =('annualReportId','companyId','annual_report')
admin.site.register(AnnualReport,AnnualReportadmin)

class Rationleadmin(admin.ModelAdmin):
    list_display =('rationleId','companyId','rationle')
admin.site.register(Rationle,Rationleadmin)

class Awardadmin(admin.ModelAdmin):
    list_display =('awardId','companyId','award')
admin.site.register(Award,Awardadmin)

class Buyeradmin(admin.ModelAdmin):
    list_display =('buyerId','userId','mobile_no','country','state','city','address_line_1','address_line_2','landmark','pincode','status')
admin.site.register(Buyer,Buyeradmin)

class DealsRequestadmin(admin.ModelAdmin):
    list_display =('dealsRequestId','companyId','buyerId','date','share_qauntity','share_price','message','subject','subject', 'status')
admin.site.register(DealsRequest,DealsRequestadmin)

class CompanyMasteradmin(admin.ModelAdmin):
    list_display =('companyMasterId','company_name','tageline','logo','address_line_1','address_line_2','country','state','city','pincode','email','contact_1','contact_2','facebook_account_link','twitter_account_link','linked_link','instagram_link','about_us','mission','vission','website')
admin.site.register(CompanyMaster,CompanyMasteradmin)

class ContactUsadmin(admin.ModelAdmin):
    list_display =('contactUsId','full_name','mobile_no','email','location','identuty','want_to','message','datetime','subject')
admin.site.register(ContactUs,ContactUsadmin)

class PastPerformanceadmin(admin.ModelAdmin):
    list_display =('pastPerformanceId','companyId','pre_IPO_selling_price','ipo_band_price','listing_price')
admin.site.register(PastPerformance,PastPerformanceadmin)

class Blogadmin(admin.ModelAdmin):
    list_display =('title','datetime','auth','category','viewCount', 'image', 'par1', 'par2', 'par3', 'par4', 'status')
admin.site.register(Blog,Blogadmin)

class Reviewsadmin(admin.ModelAdmin):
    list_display =('date','reviewsId','message','holder_name')
admin.site.register(Reviews,Reviewsadmin)
