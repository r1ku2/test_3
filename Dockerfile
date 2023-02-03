FROM python:3 
ADD test_hoge.py /
CMD ["python","./test_hoge.py"]
