## Работа с Docker

git clone https://github.com/IvanVakula/Exam_01_07_06_2023
cd exam_01_07_06_2023
docker build -t vakulaexamtest
docker run -p 33333:33333 -d vakulaexamtest 
