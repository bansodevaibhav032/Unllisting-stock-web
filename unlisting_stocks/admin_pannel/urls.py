from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from admin_pannel import views


urlpatterns = [

    path('',views.index,name='index'),
    path('admin_login/',views.adminLogin, name= 'admin_login' ),
    path('admin-login-apply/',views.adminLoginApply, name= 'adminLoginApply' ),
    path('admin_logout/',views.admin_logout, name='admin_logout'),

# Blog Management
    path('blog/',views.blog, name='blog'),
    path('addBlog/', views.addBlog, name='addBlog'),
    path('edit_blog/<int:id>',views.editblog, name='blogblog'),
    path('blog_Update/<int:id>',views.blogUpdate, name='blogUpdate'),
    path('blog_Delete/<int:id>/',views.blogDelete, name='blogDelete'),
    path('blog_Details/<int:id>', views.blogDetails, name='blogDetails'),

# reviews management
    path('reviews/',views.reviews, name='reviews'),
    path('edit_reviews/<int:reviewsId>', views.editReviews, name='editReviews'),
    path('reviews_Update/<int:reviewsId>',views.reviewsUpdate, name='reviewsUpdate'),
    path('reviews_Delete/<int:reviewsId>/', views.reviewsDelete, name='reviewsDelete'),

# Company Master
    path('comapny_profile/',views.comapny_profile, name= 'comapny_profile' ),
    #path('profile_update/<int:companyMasterId>',views.profile_update,name='profile_update'),
    path('update_company_profile//<int:companyMasterId>', views.update_company_profile, name='update_company_profile'),

# Seller Management
    path('seller/',views.seller, name='seller'),
    path('seller-Details/<int:sellerId>', views.sellerDetails, name='sellerDetails'),
    path('add-Seller/', views.addSeller, name='addSeller'),
    path('edit-Seller/<int:sellerId>',views.editSeller,name='editSeller'),
    path('seller-Update/<int:sellerId>/',views.sellerUpdate, name='sellerUpdate'),
    path('seller-Delete/<int:sellerId>/',views.sellerDelete, name='sellerDelete'),

# Company Management
    path('company/',views.company, name='company'),
    path('company-details/<int:companyId>', views.companyDetails, name='companyDetails'),
    path('add-company/',views.addCompany , name = "addCompany"),
    path('edit-Company/<int:companyId>',views.editCompany,name='editCompany'),
    path('company-Update/<int:companyId>/',views.companyUpdate, name='companyUpdate'),
    path('company-delete/<int:companyId>/',views.companyDelete, name='companyDelete'),
    path('delete-annual-report/<int:id>/<int:companyId>',views.deleteAnnualReport, name='deleteAnnualReport'),
    path('delete-service/<int:id>/<int:companyId>',views.deleteService, name='deleteService'),
    path('add-annual-report/<int:companyId>/',views.addAnnualReport, name='addAnnualReport'),
    path('add-service/<int:companyId>/',views.addService, name='addService'),

# Buyer Management
    path('buyer/',views.buyer, name='buyer'),
    path('buyer-Details/<int:buyerId>', views.buyerDetails, name='buyerDetails'),
    path('add-buyer/', views.addbuyer, name='addbuyer'),
    path('edit-Buyer/<int:buyerId>',views.editBuyer,name='editBuyer'),
    path('buyer-Update/<int:buyerId>/',views.buyerUpdate, name='buyerUpdate'),
    path('buyer-Delete/<int:buyerId>/',views.buyerDelete, name='buyerDelete'),

# Deals Requeast management
    path('deals-Request/',views.dealsRequest, name='dealsRequest'),
    path('add-deals-Request/', views.adddealsRequest, name='adddealsRequest'),
    path('edit-Deals-Request/<int:dealsRequestId>',views.editDealsRequest,name='editDealsRequest'),
    path('deals-Request-Update/<int:dealsRequestId>/', views.dealsRequestUpdate, name='dealsRequestUpdate'),
    path('deals-Request-Delete/<int:dealsRequestId>/', views.dealsRequestDelete, name='dealsRequestDelete'),

# Contact Us Management
    path('contact-Us/',views.contactUs, name='contactUs'),
    path('add-Contact-Us/', views.addContactUs, name='addContactUs'),
    path('edit-Contact-Us/<int:contactUsId>',views.editContactUs,name='editContactUs'),
    path('contact-Us-Update/<int:contactUsId>/',views.contactUsUpdate, name='contactUsUpdate'),
    path('contact-Us-Delete/<int:contactUsId>/',views.contactUsDelete, name='contactUsDelete'),

# Past Performance management
    path('past-Performance/',views.pastperformance, name='pastperformance'),
    path('add-Past-Performance/', views.addPastperformance, name='addPastperformance'),
    path('edit-Past-Performance/<int:pastPerformanceId>',views.editpastperformance, name='editpastperformance'),
    path('past-Performance-Update/<int:pastPerformanceId>/',views.pastperformanceUpdate, name='pastperformanceUpdate'),
    path('past-Performance-Delete/<int:pastPerformanceId>/',views.pastperformanceDelete, name='pastperformanceDelete'),

]