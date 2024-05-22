FROM python:3.10

RUN pip install -U pip setuptools wheel

WORKDIR /monthlyaddendum

RUN useradd -m -r rundeck && chown rundeck /monthlyaddendum

COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

USER rundeck

ENTRYPOINT ["python3", "test.py", "--option1=Myoption", "--option2=Myoption2"]