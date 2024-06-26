import os
extensions = [
    "aux",
    "fdb_latexmk",
    "fls",
    "log",
    "pdf",
    "synctex.gz"
]
directory = 'archive'
for ext in extensions:
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(f'.{ext}'):
                file_path = os.path.join(root, file)
                try:
                    os.remove(file_path)
                    print(f'Removed: {file_path}')
                except OSError as e:
                    print(f'Error: {file_path} : {e.strerror}')
