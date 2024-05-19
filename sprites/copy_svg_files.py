import os
import re
import shutil

def extract_filename(file_path):
    """Extracts the filename from an SVG file, removing invalid Windows characters."""
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
        match = re.search(r'<title[^>]*>([^<]+)</title>', content)
        if match:
            title = match.group(1).strip()
            # Replace invalid Windows characters with underscores
            new_filename = re.sub(r'[<>:"/\|?*]', '_', title) + ".svg"
            return new_filename
        else:
            return None

def copy_and_rename(source_dir, destination_dir):
    """Copies all SVG files from a directory and its subdirectories to a new directory with new filenames."""
    # Create the output directory if it doesn't exist
    if not os.path.exists(destination_dir):
        os.makedirs(destination_dir)

    for root, _, files in os.walk(source_dir):
        for file in files:
            if file.endswith(".svg"):
                source_path = os.path.join(root, file)
                new_filename = extract_filename(source_path)
                if new_filename:
                    destination_path = os.path.join(destination_dir, new_filename)
                    shutil.copy2(source_path, destination_path)
                    print(f"Copied {source_path} to {destination_path}")
                else:
                    print(f"Warning: Could not extract filename from {source_path}")

# Example usage:
source_directory = os.path.join("tmp", "josm", "icons", "svg")
destination_directory = os.path.join("tmp", "svg-all")

copy_and_rename(source_directory, destination_directory)