from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from stock_web import views


urlpatterns = [
    path('', views.home, name='home'),
    path('login/',views.login, name='login'),
    path('buyer-login/',views.buyerLogin, name='buyerLogin'),
    path('buyer-registration/', views.registerBuyer, name='registerBuyer'),
    path('buyer_details/', views.buyer_details, name='buyer_details'),
    path('register-seller/', views.registerSeller, name='registerSeller'),
    path('about/', views.about, name='about'),
    path('contact_us/', views.contact_us, name='contact_us'),
    path('portfolio/', views.portfolio, name='portfolio'),
    path('reports/', views.reaserchReports, name ='reaserchReports'),
    path('blog_web/', views.blog_web, name='blog_web'),
    path('faqs/', views.faqs, name='faqs'),
    path('comapny_details/<int:companyId>/', views.companyDetails, name='companyDetails'),
    path('privacy_policy/', views.privacy_policy, name='privacy_policy'),

]