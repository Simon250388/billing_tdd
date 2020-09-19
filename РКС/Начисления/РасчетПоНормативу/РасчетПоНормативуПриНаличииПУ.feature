﻿#language: ru
@tree
Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/SyV29yWm/2071"

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоНормативуПриНаличииПУ>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоНормативуПриНаличииПУ"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Регистрация показаний многоквартирного дома'
        Тогда открылось окно 'Регистрация показаний многоквартирного дома'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Юридические лица' 'Заключение договоров с контрагентами'
        Тогда открылось окно 'Заключение договоров с контрагентами'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Юридические лица' 'Регистрация показаний юр. лиц'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И Я перепровожу все документы абонента "Смирнова Марина Павловна"
        И Я перепровожу все документы абонента "Кудрявцева Ирина Сергеевна"
    И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД 'Волхов г, Октябрьская ул, Дом № 4' с 'Июнь' '2020' по 'Июнь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 4
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления   |Способ начисления      |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |
        |'25.06.2020 23:59:59' |'Смирнова Марина Павловна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'Среднее по нормативу' |'Без ПУ'      |'4,270'         |'26.05.2020'   |'26.06.2020'  |'947,94' |'222,000000' |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления   |Способ начисления      |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |
        |'25.06.2020 23:59:59' |'Смирнова Марина Павловна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'Среднее по нормативу' |'Без ПУ'      |'4,270'         |'26.05.2020'   |'26.06.2020'  |''       |''           |'222,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления   |Способ начисления      |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |
        |'25.06.2020 23:59:59' |'Смирнова Марина Павловна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'          |''            |'4,270'         |''             |''            |'42,13'  |'9,865590'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления   |Способ начисления      |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |
        |'25.06.2020 23:59:59' |'Смирнова Марина Павловна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'          |''            |'4,270'         |''             |''            |''       |''           |'9,865590'         |