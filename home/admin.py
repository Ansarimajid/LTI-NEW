from django.contrib import admin
from home.models import *

# Sliders Admin Register
admin.site.register(sliderSection)

# About Admin Register
admin.site.register(aboutSection)

# Funfact Admin Register
admin.site.register(funFactSection)

# Project Category and Section Admin Register
admin.site.register(projectCategory)

class serviceSectionAdmin(admin.ModelAdmin):
    list_display = ('name', 'project')
    list_filter = ('project',)
    fields = ('project', 'name', 'short_description', 'fontawesome_icon_class', 'detail_page_image', 'detail_page_description', 'show_call_now_widget')

admin.site.register(serviceSection, serviceSectionAdmin)

class serviceSectionInline(admin.StackedInline):
    model = serviceSection
    extra = 0
    verbose_name = "Service"
    verbose_name_plural = "Services (under this project)"
    fields = ('name', 'short_description', 'fontawesome_icon_class', 'detail_page_image', 'detail_page_description', 'show_call_now_widget')

class projectSectionAdmin(admin.ModelAdmin):
    inlines = [serviceSectionInline]
    fieldsets = (
        ('Project Details', {
            'fields': ('title', 'slug', 'image', 'category', 'description')
        }),
    )

admin.site.register(projectSection, projectSectionAdmin)

# Clinets Admin Register
admin.site.register(clientSection)

# Testimonial Admin Register
admin.site.register(testimonialsSection)

# Home Page SEO Admin Register
admin.site.register(homePageSEO)