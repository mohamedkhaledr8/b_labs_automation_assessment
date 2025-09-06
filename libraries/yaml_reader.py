import os
import yaml


def read_all_yaml_from_folder(folder_name):
    folder_path = os.path.join(os.path.dirname(__file__), "..", folder_name)
    folder_path = os.path.abspath(folder_path)
    merged_data = {}

    if not os.path.exists(folder_path):
        raise FileNotFoundError(f"Folder not found: {folder_path}")

    for file_name in os.listdir(folder_path):
        if file_name.endswith(".yaml") or file_name.endswith(".yml"):
            file_path = os.path.join(folder_path, file_name)
            with open(file_path, 'r') as file:
                data = yaml.safe_load(file)
                if data:
                    merged_data.update(data)
    return merged_data
