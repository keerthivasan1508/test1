import zipfile
import os

# Paths to include
files_to_zip = [
    ('target/manifest.json', 'manifest.json'),
    ('target/catalog.json', 'catalog.json'),
    ('target/index.html', 'index.html')
]

# Output ZIP path
zip_path = 'target/dbt_catalog.zip'

# Create the ZIP file
with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
    for full_path, arcname in files_to_zip:
        if os.path.exists(full_path):
            zipf.write(full_path, arcname=arcname)
        else:
            print(f"⚠️ File not found: {full_path}")

print("✅ dbt_catalog.zip created successfully.")
