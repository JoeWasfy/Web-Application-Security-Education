from django.contrib import admin
from .models import LabTopic, Challenge, EducationalContent, Product, LoginPassword, FakeUser, Account5, AuthenticationCode, CustomUser

@admin.register(LabTopic)
class LabTopicAdmin(admin.ModelAdmin):
    list_display = ('name',)

@admin.register(Challenge)
class ChallengeAdmin(admin.ModelAdmin):
    list_display = ('title', 'lab_topic')

@admin.register(EducationalContent)
class EducationalContentAdmin(admin.ModelAdmin):
    list_display = ('title', 'lab_topic')

@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ('name', 'category', 'price', 'is_special')

@admin.register(LoginPassword)
class LoginPasswordAdmin(admin.ModelAdmin):
    list_display = ('username',)

@admin.register(FakeUser)
class FakeUserAdmin(admin.ModelAdmin):
    list_display = ('username', 'job_title')

@admin.register(Account5)
class Account5Admin(admin.ModelAdmin):
    list_display = ('username',)

@admin.register(AuthenticationCode)
class AuthenticationCodeAdmin(admin.ModelAdmin):
    list_display = ('code', 'serial')

@admin.register(CustomUser)
class CustomUserAdmin(admin.ModelAdmin):
    list_display = ('username', 'email', 'user_type', 'points')

