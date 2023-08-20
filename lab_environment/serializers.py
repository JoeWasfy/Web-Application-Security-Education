# lab_environment/serializers.py


from rest_framework import serializers
from .models import LabTopic, Challenge, CustomUser


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser  
        fields = ['id', 'username', 'email', 'user_type', 'points'] 


class ChallengeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Challenge
        fields = '__all__'

class LabTopicSerializer(serializers.ModelSerializer):
    challenges = ChallengeSerializer(many=True, read_only=True)

    class Meta:
        model = LabTopic
        fields = '__all__'



     
