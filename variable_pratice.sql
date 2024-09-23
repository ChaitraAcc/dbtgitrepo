----just compile the section of code 
{#
{% set course = 'Dbt cloud '  %}
{% set  platform = 'Snowflake dataplatform'  %}
{% set duration = '5 '  %}
 
I am under training {{ course }} which sits on {{ platform }} .Its {{duration}} days of training program

 #}
{#
 {%-set payment_method =['credit card','online','UPI']-%}
 {{payment_method[0]}}
 {{payment_method[1]}}
 {{payment_method[2]}}
 #}
{#
{%- set payment_method = ['Credit_card','Online','UPI','Giftvoucher'] -%}
 
    {%- for i in payment_method -%}
    My payment methof is {{ i }}    
    {% endfor %}
 #}
  
 {% set temperature = 55 %}
 
{% if temperature > 55 %}
    Its a moderate Summer
{% else %}
    Its a Hot Summer
{% endif %}
 
{% set temperature = 55 %}
 
{% if temperature == 55 %}
    Its a moderate Summer
{% else %}
    Its a Hot Summer
{% endif %}
 {%- set payment_method = ['Credit_card','Online','UPI','Giftvoucher'] -%}
{%- for methods in payment_method -%}
    {% if methods == 'Credit_card' %}
        {%- set value = 'It is not a good transaction' -%}
    {% else %}
        {%- set value = 'It is a good transaction' -%}
    {% endif %}
 
The type of usage is {{ methods }} and {{ value }}
 
{%- endfor -%}
 