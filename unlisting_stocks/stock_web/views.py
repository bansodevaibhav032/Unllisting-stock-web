from django.shortcuts import render
from django.contrib.auth import authenticate ,logout
from django.contrib.auth.models import User, auth
from django.contrib.auth import authenticate, login,logout
from django.contrib import messages
from django.shortcuts import get_object_or_404, render,HttpResponse,redirect
from admin_pannel.models import AboutCompany, AnnualReport, Award, Evalution, IndustryOverview, Products, Rationle,Blog,Reviews,CompanyMaster, Seller,Company,Buyer,DealsRequest,ContactUs,PastPerformance, Services
from django.contrib.auth.decorators import login_required

from admin_pannel.views import reviews




# Create your views here.
def home(request):
    reviews_obj = Reviews.objects.all().order_by("-reviewsId")
    company = Company.objects.all()
    params = {'reviews_obj':reviews_obj, 'company':company}
    return render(request, 'stock_web/home.html', params)

def buyerLogin(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)
        if user is not None:
            auth.login(request, user)
            messages.success(request,'Login Successfull')
            return redirect('portfolio')
            # return HttpResponse("Login Successfull")
        else:
            messages.warning(request,'Invalid Credentials')
            return redirect('buyer_details.html')
    return HttpResponse("Make sure method is POST")


def login(request):
    if request.method =='POST':
        username = request.POST["username"]
        password=request.POST["password"]
        RegisteredUser = authenticate(username=username, password=password)
        if RegisteredUser is not None:
            dj_login(request, RegisteredUser)
            request.session['is_logged'] = True
            RegisteredUser = request.user.id 
            request.session["user_id"] = RegisteredUser
            messages.success(request, " Successfully logged in")
            return redirect('stock_web/buyer_details')
        else:
            messages.error(request," Invalid Credentials, Please try again")  
            return redirect("buyer_details")
    return render(request,'stock_web/login_buyer.html')

def base1(request):
    about = CompanyMaster.objects.get()
    
    return render (request, 'stock_web/base1.html',{"about": about})


def buyer_details(request, buyerId):
    buyer = Buyer.objects.filter(buyerId = buyerId) 
    dealsRequest = DealsRequest.objects.filter(buyerId_id = buyerId)  
    return render(request, 'stock_web/buyer_details.html',{"buyer":buyer, "dealsRequest": dealsRequest} )

def registerBuyer(request):
    if request.method == 'POST':
        username = request.POST.get("email")
        password1 = request.POST.get("password")
        password2 = request.POST.get("password2")
        email = request.POST.get("email")
        first_name = request.POST.get("name")
        mobile_no = request.POST.get("phone")
        address_line_1 = request.POST.get("address1")
        designation = request.POST['designation']

        if User.objects.filter(username=username).exists():
            messages.warning(request, "Email already exits with us please try with another email")
            return redirect("/login")
        else:
            if password1 == password2:
                newUser = User.objects.create_user(username=email,password=password1, first_name = first_name)
                newUser.save()

                # create Buyer Account.
                user = User.objects.get(username = username)

                buyer = Buyer(userId = user,mobile_no = mobile_no, designation= designation, address_line_1 = address_line_1, status = "Active")
                buyer.save()
                messages.success(request, " Buyer Account has been created successfully.")
                return redirect("/portfolio")
            else:
                messages.warning(request,"password and confirm password missmach")
                return redirect("/login")
    return render(request, 'stock_web/buyer_reg.html')
    
def registerSeller(request):
    if request.method == 'POST':
        name = request.POST.get("name")
        mobile_no = request.POST.get("phone")
        email = request.POST.get("email")
        pincode = request.POST.get("pincode")
        state = request.POST.get("state")
        city = request.POST.get("city")
        address_line_1 = request.POST.get("address_line_1")
        address_line_2 = request.POST.get("address_line_2")
        landmark = request.POST.get("landmark")
        companyName = request.POST.get("companyName")
        lotSize = request.POST.get("lotSize")
        sharePrice = request.POST.get("sharePrice")
        stockQnt = request.POST.get("stockQnt")

        seller = Seller(
            first_name = name, 
            mobile_no = mobile_no,
            email = email ,
            country = "India",
            state = state,
            city = city,
            address_line_1= address_line_1,
            address_line_2 = address_line_2,
            landmark = landmark,
            pincode = pincode,
            identity = "Shareholder",
            company_name = companyName,
            status = "Active",
        )
        seller.save()
        messages.success(request, 'Congratulations ! Registartion Completed, Our team contact you shortly. ')
        return redirect('/')

    return render(request, 'stock_web/seller_reg.html')


def portfolio(request):
    company = Company.objects.all().order_by("-companyId")
    return render(request, 'stock_web/portfolio_&_listing.html', {'company':company})

def contact_us(request):
    if request.method == 'POST':
        full_name = request.POST.get("full_name")
        mobile_no = request.POST.get("mobile_no")
        email = request.POST.get("email")
        location = request.POST.get("location")
        identuty = request.POST.get("identuty")
        want_to = request.POST.get("want_to")
        message = request.POST.get("message")
        subject = request.POST.get("subject")
        add = ContactUs.objects.create(
            full_name = full_name , 
            mobile_no = mobile_no,
            email = email ,
            location = location,
            identuty = identuty,
            want_to = want_to,
            message= message,
            subject = subject
        )
        add.save()
        messages.success(request, 'Profile details add successfully.')
        return redirect('/')
    return render(request, 'stock_web/contact_us.html')


def reaserchReports(request):
    company_obj = Company.objects.all().order_by("-companyId")
    return render(request, 'stock_web/portfolio_&_listing.html', {'company_obj':company_obj})


def about(request):
    about = CompanyMaster.objects.get()
    reviews_obj = Reviews.objects.all().order_by("-reviewsId")
    company = Company.objects.all()
    params = {'company':company, 'reviews_obj':reviews_obj}
    return render (request, 'stock_web/about.html',params)


def blog_web(request):
    blog_obj = Blog.objects.all().order_by("-id")
    return render(request,'stock_web/blog_web.html', {'blog_obj':blog_obj})


def faqs(request):
    return render (request, 'stock_web/faqs.html')

@login_required
def companyDetails(request, companyId):
    company = Company.objects.filter(companyId = companyId) 
    seller = Seller.objects.filter(sellerId = companyId)   
    about = AboutCompany.objects.filter(AboutCompanyId= companyId)
    evalution =Evalution.objects.filter(evalutionId=companyId)
    products = Products.objects.filter(productsId= companyId)
    services = Services.objects.filter(serviceId=companyId)
    industryOverview = IndustryOverview.objects.filter(industryOverviewId=companyId)
    award = Award.objects.filter(awardId=companyId)
    rationle = Rationle.objects.filter(rationleId=companyId)
    annualReport = AnnualReport.objects.filter(annualReportId=companyId)
    dealsRequest = DealsRequest.objects.filter(dealsRequestId=companyId)
    pastPerformance = PastPerformance.objects.filter(pastPerformanceId = companyId)

    context={'company':company, 'seller' :seller, 'about':about, 'evalution':evalution, 'products':products,'services':services, 'industryOverview':industryOverview,'award': award, 'rationale':rationle, 'annualReport':annualReport, 'dealsRequest':dealsRequest, 'pastPerformance':pastPerformance}
    return render(request,'stock_web/comapny_details.html')


def privacy_policy(request):
    return render(request, 'stock_web/privacy_policy.html')