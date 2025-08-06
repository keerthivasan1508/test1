import smtplib
from email.message import EmailMessage

EMAIL_ADDRESS = 'keerthivasan.n@metricbees.com'
EMAIL_PASSWORD = 'neeg lnoh llep yvzm'  # Use an App Password if Gmail

msg = EmailMessage()
msg['Subject'] = 'DBT Catalog Test - One Time'
msg['From'] = EMAIL_ADDRESS
msg['To'] = 'keerthivasan.n@metricbees.com'
msg.set_content('Please find attached the DBT catalog zip.')

with open('target/dbt_catalog.zip', 'rb') as f:
    file_data = f.read()
    file_name = 'dbt_catalog.zip'

msg.add_attachment(file_data, maintype='application', subtype='zip', filename=file_name)

with smtplib.SMTP_SSL('smtp.gmail.com', 465) as smtp:
    smtp.login(EMAIL_ADDRESS, EMAIL_PASSWORD)
    smtp.send_message(msg)

print("✅ Email sent!")
