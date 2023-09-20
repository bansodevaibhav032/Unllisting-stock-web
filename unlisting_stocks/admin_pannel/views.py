from django.shortcuts import get_object_or_404, render,HttpResponse,redirect
from django.contrib.auth.models import User, auth
from django.contrib import messages
from admin_pannel.models import AboutCompany,Reviews, CompanyMaster, Blog , AnnualReport, Award, Evalution, IndustryOverview, Products, Rationle, Seller,Company,Buyer,DealsRequest,ContactUs,PastPerformance, Services
from datetime import datetime,timedelta,date
from django.contrib.auth import authenticate ,logout
from django.contrib.auth import login as dj_login
from django.contrib.auth.decorators import login_required


@login_required(login_url = '/dashboard/admin_login')
def index(request):
    number = []
    # for i in number.length(100):
    #     if i

    return render(request, 'dashboard/index.html')


def adminLogin(request):
    return render(request, 'dashboard/login.html')

def adminLoginApply(request):
    if request.method == 'POST':
        username = request.POST['username'] 
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)
        if user is not None:
            auth.login(request, user)
            messages.success(request, " Successfully logged in")
            return redirect('/dashboard')
        else:
            messages.error(request," Invalid Credentials, Please try again")  
            return redirect('/dashboard/admin-login')
    return redirect('/dashboard/admin-login')

def admin_logout(request):
    logout(request)
    messages.error(request,'Logout')
    return redirect('admin-login')
  

# Company Master
@login_required(login_url = '/dashboard/admin_login')
def comapny_profile(request):
    profile_obj = CompanyMaster.objects.get()
    return render (request, 'comapny_profile.html', {"profile_obj": profile_obj})

# Update Company Profile
@login_required(login_url = '/dashboard/admin_login')
def profile_update(request,companyMasterId):
    profile_obj = CompanyMaster.objects.get(companyMasterId=companyMasterId)
    return render(request,'dashboard/profile_update.html',{'profile_obj':profile_obj})

@login_required(login_url = '/dashboard/admin_login')
def update_company_profile(request, companyMasterId):
    if request.method == 'POST':
        profile_obj = CompanyMaster.objects.get(companyMasterId = companyMasterId)        
        profile_obj.company_name = request.POST.get("company_name")
        profile_obj.tageline = request.POST.get("tageline")
        profile_obj.logo = request.FILES.get("logo")
        profile_obj.address_line_1 = request.POST.get("address_line_1")
        profile_obj.address_line_2 = request.POST.get("address_line_2")
        profile_obj.country = request.POST.get("country")
        profile_obj.state = request.POST.get("state")
        profile_obj.city = request.POST.get("city")
        profile_obj.pincode = request.POST.get("pincode")
        profile_obj.email = request.POST.get("email")
        profile_obj.contact_1 = request.POST.get("contact_1")
        profile_obj.contact_2 = request.POST.get("contact_2")
        profile_obj.facebook_account_link = request.POST.get("facebook_account_link")
        profile_obj.twitter_account_link = request.POST.get("twitter_account_link")
        profile_obj.linked_link = request.POST.get("linked_link")
        profile_obj.instagram_link = request.POST.get("instagram_link")
        profile_obj.about_us = request.POST.get("about_us")
        profile_obj.mission = request.POST.get("mission")
        profile_obj.vission = request.POST.get("vission")
        profile_obj.website = request.POST.get("website")
        profile_obj.save()
        messages.success(request, 'Profile details add successfully.')

        return redirect('index.html')

    return render(request, 'dashboard/index.html')

# Seller Management 
# Show Seller 
@login_required(login_url = '/dashboard/admin_login')
def seller(request):
    seller = Seller.objects.all().order_by("-sellerId")
    return render (request, 'dashboard/seller.html',{"seller": seller})

# Seller Details 
@login_required(login_url = '/dashboard/admin_login')
def sellerDetails(request, sellerId):
    seller = Seller.objects.filter(sellerId = sellerId)
    return render(request, 'dashboard/sellerDetails.html',{"seller": seller} )


# Add Seller 
@login_required(login_url = '/dashboard/admin_login')
def addSeller(request):
    if request.method == 'POST':
        #sellerId = request.POST.get("sellerId")
        first_name = request.POST.get("first_name")
        last_name = request.POST.get("last_name")
        mobile_no = request.POST.get("mobile_no")
        email = request.POST.get("email")
        country = request.POST.get("country")
        state = request.POST.get("state")
        city = request.POST.get("city")
        address_line_1 = request.POST.get("address_line_1")
        address_line_2 = request.POST.get("address_line_2")
        landmark = request.POST.get("landmark")
        pincode = request.POST.get("pincode")
        identity = request.POST.get("identity")
        company_name = request.POST.get("company_name")
        status = request.POST.get("status")
        add = Seller.objects.create(
            #sellerId = sellerId,
            first_name = first_name , 
            last_name = last_name,
            mobile_no = mobile_no,
            email = email ,
            country = country,
            state = state,
            city = city,
            address_line_1= address_line_1,
            address_line_2 = address_line_2,
            landmark = landmark,
            pincode = pincode,
            identity = identity,
            company_name = company_name,
            status = status
        )
        add.save()
        messages.success(request, 'Profile details add successfully.')

        return redirect('seller')
    return render(request,'dashboard/addSeller.html')

#Update & Edit Sheller
@login_required(login_url = '/dashboard/admin_login')
def editSeller(request,sellerId):
    seller_obj = Seller.objects.get(sellerId=sellerId)
    return render(request,'dashboard/sellerUpdate.html',{'seller_obj':seller_obj})

@login_required(login_url = '/dashboard/admin_login')
def sellerUpdate(request,sellerId):
    if request.method == 'POST':
        sellerId_Obj = Seller.objects.get(sellerId = sellerId)
        sellerId_Obj.first_name = request.POST.get("first_name")
        sellerId_Obj.last_name = request.POST.get("last_name")
        sellerId_Obj.mobile_no = request.POST.get("mobile_no")
        sellerId_Obj.email = request.POST.get("email")
        sellerId_Obj.country = request.POST.get("country")
        sellerId_Obj.state = request.POST.get("state")
        sellerId_Obj.city = request.POST.get("city")
        sellerId_Obj.address_line_1 = request.POST.get("address_line_1")
        sellerId_Obj.address_line_2 = request.POST.get("address_line_2")
        sellerId_Obj.landmark = request.POST.get("landmark")
        sellerId_Obj.pincode = request.POST.get("pincode")
        sellerId_Obj.identity = request.POST.get("identity")
        sellerId_Obj.company_name = request.POST.get("company_name")   
        sellerId_Obj.save()
        messages.success(request, 'Profile details Update successfully.')
        return redirect("seller")
    return render(request,'dashboard/sellerUpdate.html')
    #return HttpResponse("Make sure method is POST")

# Delete Seller 
@login_required(login_url = '/dashboard/admin_login')
def sellerDelete(request,sellerId):
    Seller.objects.get(sellerId = sellerId).delete()
    messages.success(request, 'Profile details Delete successfully.')
    return redirect('seller')

# Company Mmanagement 
# Show company Details 

@login_required(login_url = '/dashboard/admin_login')
def company(request):
    company = Company.objects.all().order_by("-companyId")     
    seller = Seller.objects.all()
    
    return render (request, 'dashboard/product.html', {"company":company, "seller":seller})

# Company Details 
@login_required(login_url = '/dashboard/admin_login')
def companyDetails(request, companyId):
    company = Company.objects.get(companyId = companyId)
    about = AboutCompany.objects.filter( companyId_id = companyId)
    evalution =Evalution.objects.filter(companyId_id =companyId)
    products = Products.objects.filter(companyId_id  = companyId)
    service = Services.objects.filter(companyId_id  =companyId)
    industryOverview = IndustryOverview.objects.filter(companyId_id =companyId)
    award = Award.objects.filter(companyId_id =companyId)
    rationle = Rationle.objects.filter(companyId_id =companyId)
    annualReport = AnnualReport.objects.filter(companyId_id =companyId)
    dealsRequest = DealsRequest.objects.filter(companyId_id =companyId)

    context={'company':company, 'about':about, 'evalution':evalution, 'products':products,'service':service, 'industryOverview':industryOverview,'award': award, 'rationle':rationle, 'annualReport':annualReport, 'dealsRequest':dealsRequest}
    return render(request, 'dashboard/product-details.html' , context)

# Add company

@login_required(login_url = '/dashboard/admin_login')
def addCompany(request):
    if request.method == 'POST':
        seller = Seller.objects.get(sellerId = request.POST['seller'])
        industry = request.POST.get("industry")
        overview = request.POST.get("overview")
        tageline = request.POST.get("tageline")
        logo = request.FILES.get("logo")
        report_pdf = request.FILES.get("report_pdf")
        price = request.POST.get("sharePrice")
        lot_size = request.POST.get("lotSize")
        total_available_share = request.POST.get("total_available_share")
        face_value = request.POST.get("faceValue")
        cin = request.POST.get("cin")
        tan = request.POST.get("tan")
        pan = request.POST.get("pan")
        status = "Active"

        add = Company.objects.create(
            #companyId = companyId,
            #sellerId = Seller.objects.get(sellerId=sellerId).sellerId , 
            sellerId= seller,
            industry = industry,
            overview = overview,
            tageline = tageline,
            logo = logo,
            report_pdf = report_pdf,
            price = price,
            lot_size= lot_size,
            total_available_share = total_available_share,
            face_value = face_value,
            cin = cin,
            tan = tan,
            pan = pan,
            status = status
        )
        add.save()
        messages.success(request, 'New Company  added successfully.')
        return redirect('company')

    seller = Seller.objects.all()
    params = {'seller':seller}    
    return render(request, 'dashboard/add-new-product.html', params)

# Edit and Update Company
@login_required(login_url = '/dashboard/admin_login')
def editCompany(request,companyId):
    company_obj = Company.objects.get(companyId=companyId)
    seller = Seller.objects.all()
    return render(request,'dashboard/companyUpdate.html',{'company_obj':company_obj, 'seller':seller})


@login_required(login_url = '/dashboard/admin_login')
def companyUpdate(request,companyId):
    if request.method == 'POST':
        company_obj = Company.objects.get(companyId = companyId)
        sellerId = request.POST.get("sellerId")
        sellerId = Seller.objects.get(sellerId=sellerId)
        company_obj.industry = request.POST.get("industry")
        company_obj.overview = request.POST.get("overview")
        company_obj.tageline = request.POST.get("tageline")
        #company_obj.logo = request.FILES.get("logo")
        #company_obj.report_pdf = request.FILES.get("report_pdf")
        company_obj.price = request.POST.get("price")
        company_obj.lot_size = request.POST.get("lot_size")
        company_obj.total_available_share = request.POST.get("total_available_share")
        company_obj.face_value = request.POST.get("face_value")
        company_obj.ctn = request.POST.get("ctn")
        company_obj.tan = request.POST.get("tan")
        company_obj.pan = request.POST.get("pan")
        company_obj.save()
        messages.success(request, 'Profile details Update successfully.')

        return redirect('company')

# Delete Company 
@login_required(login_url = '/dashboard/admin_login')
def companyDelete(request,companyId):
    Company.objects.get(companyId = companyId).delete()
    messages.success(request, 'Profile details Delete successfully.')
    return redirect('company')

@login_required(login_url = '/dashboard/admin_login')
def deleteAnnualReport(request,id, companyId):
    AnnualReport.objects.get(annualReportId = id).delete()
    messages.success(request, 'Annual Report Delete successfully.')
    return redirect('/dashboard/company-details/'+str(companyId))

@login_required(login_url = '/dashboard/admin_login')
def deleteService(request,id, companyId):
    Services.objects.get(serviceId = id).delete()
    messages.success(request, 'Service Delete successfully.')
    return redirect('/dashboard/company-details/'+str(companyId))


@login_required(login_url = '/dashboard/admin_login')
def addService(request,companyId):
    service = request.POST['service']
    company = Company.objects.get(companyId = companyId)
    service = Services(service = service, companyId = company)
    service.save()
    messages.success(request, 'New service added successfully.')
    return redirect('/dashboard/company-details/'+str(companyId))

@login_required(login_url = '/dashboard/admin_login')
def addAnnualReport(request,companyId):
    annual_report = request.FILES['annual_report']
    company = Company.objects.get(companyId = companyId)
    annualReport = AnnualReport(annual_report = annual_report, companyId = company)
    annualReport.save()
    messages.success(request, 'New annual report added successfully.')
    return redirect('/dashboard/company-details/'+str(companyId))


# Deals Request Management 
# Show Deals Request 
@login_required(login_url = '/dashboard/admin_login')
def dealsRequest(request):
    dealsRequest = DealsRequest.objects.all().order_by("-dealsRequestId")
    company = Company.objects.all()
    return render (request, 'dashboard/dealsRequest.html',{"dealsRequest":dealsRequest, "company":company})

#Add Deals Request 
@login_required(login_url = '/dashboard/admin_login')
def adddealsRequest(request):
    if request.method == 'POST':
        #dealsRequestId = request.POST.get("dealsRequestId")
        companyId = request.POST.get("companyId")
        company = Company.objects.get(companyId =companyId)
        date = request.POST.get("date")
        share_qauntity = request.POST.get("share_qauntity")
        share_price = request.POST.get("share_price")
        message = request.POST.get("message")
        subject = request.POST.get("subject")
       
        add = DealsRequest.objects.create(
            #dealsRequestId = dealsRequestId,
            companyId = company , 
            date = date,
            share_qauntity = share_qauntity,
            share_price = share_price ,
            message = message,
            subject = subject
        )
        add.save()
        messages.success(request, 'Profile details add successfully.')

        return redirect('dealsRequest')
    return render(request, 'dashboard/adddealsRequest.html')

# Edit and Update 
@login_required(login_url = '/dashboard/admin_login')
def editDealsRequest(request,dealsRequestId):
    dealsRequest_obj = DealsRequest.objects.get(dealsRequestId=dealsRequestId)
    company = Company.objects.all()
    return render(request,'dashboard/dealsRequestUpdate.html',{'company':company,'dealsRequest_obj':dealsRequest_obj})

@login_required(login_url = '/dashboard/admin_login')
def dealsRequestUpdate(request,dealsRequestId):
    if request.method == 'POST':
        dealsRequestId_Obj = DealsRequest.objects.get(dealsRequestId = dealsRequestId)
        companyId = request.POST.get("companyId")
        companyId = Company.objects.get(companyId =companyId)
        dealsRequestId_Obj.date = request.POST.get("date")
        dealsRequestId_Obj.share_qauntity = request.POST.get("share_qauntity")
        dealsRequestId_Obj.share_price = request.POST.get("share_price")
        dealsRequestId_Obj.message = request.POST.get("message")
        dealsRequestId_Obj.subject = request.POST.get("subject")
        dealsRequestId_Obj.save()
        
        messages.success(request, 'Profile details Update successfully.')
        return redirect('dealsRequest')

# Delete Delas Request 
@login_required(login_url = '/dashboard/admin_login')
def dealsRequestDelete(request,dealsRequestId):
    DealsRequest.objects.get(dealsRequestId = dealsRequestId).delete()
    messages.success(request, 'Profile details Delete successfully.')
    return redirect('dealsRequest')

# Buyer Management
#Show Buyer 
@login_required(login_url = '/dashboard/admin_login')
def buyer(request):
    buyer = Buyer.objects.all().order_by("-buyerId")
    company = Company.objects.all()
    return render (request, 'dashboard/buyer.html',{"buyer":buyer, "company":company})

#Buyer Details 
@login_required(login_url = '/dashboard/admin_login')
def buyerDetails(request, buyerId):
    buyer = Buyer.objects.filter(buyerId = buyerId) 
    dealsRequest = DealsRequest.objects.filter(buyerId_id = buyerId)  
    return render(request, 'dashboard/buyerDetails.html',{"buyer":buyer, "dealsRequest": dealsRequest} )

# Add Buyer Details 
@login_required(login_url = '/dashboard/admin_login')
def addbuyer(request):
    #user_obj = User.objects.all().order_by("-1")
    if request.method == 'POST':
        #buyerId = request.POST.get("buyerId")
        id = request.POST.get("userId")
        user = User.objects.get(id = id)
        companyId = request.POST.get("companyId")
        company = Company.objects.get(companyId =companyId)
        mobile_no = request.POST.get("mobile_no")
        country = request.POST.get("country")
        state = request.POST.get("state")
        city = request.POST.get("city")
        address_line_1 = request.POST.get("address_line_1")
        address_line_2 = request.POST.get("address_line_2")
        landmark = request.POST.get("landmark")
        pincode = request.POST.get("pincode")   
        status = request.POST.get("status")
    
        add = Buyer.objects.create(
            #buyerId = buyerId,
            userId = int(user), 
            companyId = company,
            mobile_no = mobile_no,
            country = country ,
            state = state,
            city = city,
            address_line_1 = address_line_1,
            address_line_2= address_line_2,
            landmark = landmark,
            pincode = pincode,
            status=status
        )
        add.save()
        messages.success(request, 'Profile details add successfully.')

        return redirect('buyer')

#Edit nd Update Buyer 
@login_required(login_url = '/dashboard/admin_login')
def editBuyer(request,buyerId):
    buyer_obj = Buyer.objects.get(buyerId=buyerId)
    company = Company.objects.all()
    return render(request,'dashboard/buyerUpdate.html',{'buyer_obj':buyer_obj, 'company':company})


@login_required(login_url = '/dashboard/admin_login')
def buyerUpdate(request,buyerId):
    if request.method == 'POST':
        buyer_obj = Buyer.objects.get(buyerId = buyerId)
        userId = request.POST.get("userId")
        userId = User.objects.get(Id =userId)
        companyId = request.POST.get("companyId")
        companyId = Company.objects.get(Id =companyId)
        buyer_obj.mobile_no = request.POST.get("mobile_no")
        buyer_obj.country = request.POST.get("country")
        buyer_obj.state = request.POST.get("state")
        buyer_obj.city = request.POST.get("city")
        buyer_obj.address_line_1 = request.POST.get("address_line_1")
        buyer_obj.address_line_2 = request.POST.get("address_line_2")
        buyer_obj.landmark = request.POST.get("landmark")
        buyer_obj.pincode = request.POST.get("pincode") 
        buyer_obj.save()
        messages.success(request, 'Profile details Update successfully.')

        return redirect('buyer')

# Delete Buyer 
@login_required(login_url = '/dashboard/admin_login')
def buyerDelete(request,buyerId):
    Buyer.objects.get(buyerId = buyerId).delete()
    messages.success(request, 'Profile details Delete successfully.')
    return redirect('buyer')

# Contact Us Management
# show Contact Us Details 
@login_required(login_url = '/dashboard/admin_login')
def contactUs(request):
    contactUs = ContactUs.objects.all().order_by("-contactUsId")
    return render (request, 'dashboard/contactUs.html',{ "contactUs":contactUs})

# Add Contact Us 
@login_required(login_url = '/dashboard/admin_login')
def addContactUs(request):
    if request.method == 'POST':
        #contactUsId = request.POST.get("contactUsId")
        full_name = request.POST.get("full_name")
        mobile_no = request.POST.get("mobile_no")
        email = request.POST.get("email")
        location = request.POST.get("location")
        identuty = request.POST.get("identuty")
        want_to = request.POST.get("want_to")
        message = request.POST.get("message")
        subject = request.POST.get("subject")
       
        add = ContactUs.objects.create(
            #contactUsId = contactUsId,
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

        return redirect('contactUs')
    return render(request,'dashboard/addContactUs.html')

# Edit nd Update Details Contact Us 
@login_required(login_url = '/dashboard/admin_login')
def editContactUs(request,contactUsId):
    contactUs_obj = ContactUs.objects.get(contactUsId=contactUsId)
    return render(request,'contactUsUpdate.html',{'contactUs_obj':contactUs_obj})


@login_required(login_url = '/dashboard/admin_login')
def contactUsUpdate(request,contactUsId):
    if request.method == 'POST':
        contactUs_Obj = ContactUs.objects.get(contactUsId = contactUsId)
        contactUs_Obj.full_name = request.POST.get("full_name")
        contactUs_Obj.mobile_no = request.POST.get("mobile_no")
        contactUs_Obj.email = request.POST.get("email")
        contactUs_Obj.location = request.POST.get("location")
        contactUs_Obj.identuty = request.POST.get("identuty")
        contactUs_Obj.want_to = request.POST.get("want_to")
        contactUs_Obj.message = request.POST.get("message")
        contactUs_Obj.subject = request.POST.get("subject")
        contactUs_Obj.save()
        messages.success(request, 'Profile details Update successfully.')

        return redirect('contactUs')

# Delete Contact US Details 
@login_required(login_url = '/dashboard/admin_login')
def contactUsDelete(request,contactUsId):
    ContactUs.objects.get(contactUsId =contactUsId ).delete()
    messages.success(request, 'Profile details Delete successfully.')
    return redirect('contactUs')

# Past Performance Management 
# Show Past Performance Details 
@login_required(login_url = '/dashboard/admin_login')
def pastperformance(request):
    pastperformance = PastPerformance.objects.all().order_by("-pastPerformanceId")
    company = Company.objects.all()
    return render (request, 'dashboard/pastperformance.html',{"pastperformance":pastperformance, "company":company})

# Add Past Performance 
@login_required(login_url = '/dashboard/admin_login')
def addPastperformance(request):
    #pastPerformance_Obj = PastPerformance.objects.get(pastPerformanceId = pastPerformanceId)
    if request.method == 'POST':
        #pastPerformanceId = request.POST.get("pastPerformanceId")
        companyId = request.POST.get("companyId")
        company = Company.objects.get(companyId =companyId)
        pre_IPO_selling_price = request.POST.get("pre_IPO_selling_price")
        ipo_band_price = request.POST.get("ipo_band_price")
        listing_price = request.POST.get("listing_price")
        
        add = PastPerformance.objects.create(
            #pastPerformanceId = pastPerformanceId,
            companyId = company , 
            pre_IPO_selling_price = pre_IPO_selling_price,
            ipo_band_price = ipo_band_price ,
            listing_price = listing_price    
        )
        add.save()
        messages.success(request, 'Profile details add successfully.')

        return redirect('pastperformance')
    return render(request,'dashboard/addPastperformance.html')

# Edit nd Update Past Performance 
@login_required(login_url = '/dashboard/admin_login')
def editpastperformance(request,pastPerformanceId):
    pastPerformance_Obj = PastPerformance.objects.get(pastPerformanceId=pastPerformanceId)
    company = Company.objects.all()
    return render(request,'dashboard/pastperformanceUpdate.html',{'company':company,'pastPerformance_Obj':pastPerformance_Obj})

@login_required(login_url = '/dashboard/admin_login')
def pastperformanceUpdate(request,pastPerformanceId):
    if request.method == 'POST':
        pastPerformance_Obj = PastPerformance.objects.get(pastPerformanceId = pastPerformanceId)
        companyId = request.POST.get("companyId")
        companyId = Company.objects.get(companyId =companyId)
        pastPerformance_Obj.pre_IPO_selling_price = request.POST.get("pre_IPO_selling_price")
        pastPerformance_Obj.ipo_band_price = request.POST.get("ipo_band_price")
        pastPerformance_Obj.listing_price = request.POST.get("listing_price")
        pastPerformance_Obj.save()
        messages.success(request, 'Profile details Update successfully.')

        return redirect('pastperformance')

# Delete Past Performance 
@login_required(login_url = '/dashboard/admin_login')
def pastperformanceDelete(request,pastPerformanceId):
    PastPerformance.objects.get(pastPerformanceId =pastPerformanceId ).delete()
    messages.success(request, 'Profile details Delete successfully.')
    return redirect('pastperformance')


# blog management
# blog show views
@login_required(login_url = '/dashboard/admin_login')
def blog(request):
    blog = Blog.objects.all().order_by("-id")
    return render (request, 'dashboard/blog.html',{ "blog":blog})

# blog add 
@login_required(login_url = '/dashboard/admin_login')
def addBlog(request):
    if request.method == 'POST':
        title = request.POST.get("title")
        auth = request.POST.get("auth")
        category = request.FILES.get("category")
        viewCount = request.POST.get("viewCount")
        image = request.FILES.get("image")
        par1 = request.POST.get("par1")
        par2 = request.POST.get("par2")
        par3 = request.POST.get("par3")
       
        add = Blog.objects.create(
            title = title , 
            auth = auth,
            category = category ,
            viewCount = viewCount,
            image = image,
            par1 = par1,
            par2= par2,
            par3 = par3
        )

        add.save()
        messages.success(request, 'Profile details add successfully.')
        return redirect('blog')

    return render(request,'dashboard/blog.html')

# Edit nd Update Details Blogs 
@login_required(login_url = '/dashboard/admin_login')
def editblog(request,id):
    blog_obj = Blog.objects.get(id=id)
    return render(request,'dashboard/blog_update.html',{'blog_obj':blog_obj})


@login_required(login_url = '/dashboard/admin_login')
def blogUpdate(request,id):
    if request.method == 'POST':
        blog_Obj = Blog.objects.get(id = id)
        blog_Obj.title = request.POST.get("title")
        blog_Obj.auth = request.POST.get("auth")
        blog_Obj.category = request.FILES.get("category")
        blog_Obj.viewCount = request.POST.get("viewCount")
        blog_Obj.image = request.FILES.get("image")
        blog_Obj.par1 = request.POST.get("par1")
        blog_Obj.par2 = request.POST.get("par2")
        blog_Obj.par3 = request.POST.get("par3")
        blog_Obj.save()
        messages.success(request, 'Profile details Update successfully.')

        return redirect('blog')

# Delete blog  
@login_required(login_url = '/dashboard/admin_login')
def blogDelete(request,id):
    Blog.objects.get(id =id ).delete()
    messages.success(request, 'Profile details Delete successfully.')
    return redirect('blog')

# blog Details 
@login_required(login_url = '/dashboard/admin_login')
def blogDetails(request, id):
    blog = Blog.objects.filter(id = id)
    return render(request, 'dashboard/blog_Details.html',{"blog": blog} )


# Reviews Management 
# All Review 
@login_required(login_url = '/dashboard/admin_login')
def reviews(request):
    reviews = Reviews.objects.all().order_by("-reviewsId")
    return render (request, 'dashboard/reviews.html',{ "reviews":reviews})

# Delete reviews  
@login_required(login_url = '/dashboard/admin_login')
def reviewsDelete(request,reviewsId):
    Reviews.objects.get(reviewsId = reviewsId ).delete()
    messages.success(request, 'Profile details Delete successfully.')
    return redirect('reviews')

# Edit nd Update Past Performance 
@login_required(login_url = '/dashboard/admin_login')
def editReviews(request,reviewsId):
    reviews_Obj = Reviews.objects.get(reviewsId=reviewsId)
    return render(request,'dashboard/reviewsUpdate.html',{'reviews_Obj':reviews_Obj})

@login_required(login_url = '/dashboard/admin_login')
def reviewsUpdate(request,reviewsId):
    if request.method == 'POST':
        reviews_Obj = Reviews.objects.get(reviewsId = reviewsId)
        reviews_Obj.message = request.POST.get("message")
        reviews_Obj.holder_name = request.POST.get("holder_name")
        reviews_Obj.date = request.POST.get("date")
        reviews_Obj.save()
        messages.success(request, 'Profile details Update successfully.')

        return redirect('reviews')




















