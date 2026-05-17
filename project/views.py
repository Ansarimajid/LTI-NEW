from django.shortcuts import render, get_object_or_404
from home.models import projectSection, projectCategory, serviceSection
from project.models import projectPageSEO
from blog.models import Blogs
from django.core.paginator import Paginator, EmptyPage

def projectPageFront(request):
    seo = projectPageSEO.objects.first()
    project_categories = projectCategory.objects.all()
    projects = projectSection.objects.all().order_by('?')
    blogs = Blogs.objects.all().order_by('?')

    items_per_page = 9

    paginator = Paginator(projects, items_per_page)

    page_number = request.GET.get('page')

    try:
        projects = paginator.get_page(page_number)
    except EmptyPage:
        projects = paginator.get_page(paginator.num_pages)

    context = {
        'seo': seo,
        'projects': projects,
        'project_categories': project_categories,
        'blogs': blogs,
    }

    return render(request, 'front/main/project.html', context)

def projectDetails(request, slug):
    project = get_object_or_404(projectSection, slug=slug)
    projects = projectSection.objects.exclude(slug=slug).order_by('?')
    services = project.services.all()

    context = {
        'project': project,
        'projects': projects,
        'services': services,
    }
    return render(request, 'front/main/partial/project-details.html', context)

def projectServices(request, project_slug):
    project = get_object_or_404(projectSection, slug=project_slug)
    services = project.services.all()

    context = {
        'project': project,
        'services': services,
    }
    return render(request, 'front/main/partial/project-services.html', context)

def projectServiceDetail(request, project_slug, service_slug):
    project = get_object_or_404(projectSection, slug=project_slug)
    service = get_object_or_404(project.services, slug=service_slug)
    services = project.services.all()

    context = {
        'project': project,
        'service': service,
        'services': services,
    }
    return render(request, 'front/main/partial/project-service-detail.html', context)

def error_404(request, exception):
    return render(request, 'error/404.html', status=404)