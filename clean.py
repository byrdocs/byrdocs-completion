# 请谨慎使用该脚本！
# 需在完成一切编辑工作后运行，以请除archive中的临时文件和PDF文件。
import os
extensions = [
    "aux",
    "fdb_latexmk",
    "fls",
    "log",
    "pdf",
    "synctex.gz"
]
for directory in ['archive','LaTeX','Typst','Wolfram','Word']:
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
