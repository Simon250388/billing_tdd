﻿#language: ru
@tree
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>
Карточка "https://trello.com/c/8Zif01va/1819"

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоСреднему>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоСреднемуИПерерасчетОДНиАбонента"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Регистрация показаний многоквартирного дома'
        Тогда открылось окно 'Регистрация показаний многоквартирного дома'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И Я перепровожу все документы абонента "Калюжная Светлана Александровна"
        И Я перепровожу все документы абонента "Андреева Анна Сергеевна"
    И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД 'Ангарская ул, Дом № 5' с 'Июнь' '2020' по 'Ноябрь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокНайти'
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Где искать" я выбираю точное значение 'Абонент'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Калюжная Светлана Александровна'
        И я нажимаю на кнопку '&Найти'
        Тогда в таблице "Список" количество строк "равно" 34
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.06.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'День'        |'4,490'         |'26.05.2020'   |'26.06.2020'  |'336,75'  |'75,000000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.06.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'Ночь'        |'3,110'         |'26.05.2020'   |'26.06.2020'  |'342,10'  |'110,000000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.06.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'День'        |'4,490'         |'26.05.2020'   |'26.06.2020'  |''        |''            |'75,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.06.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'Ночь'        |'3,110'         |'26.05.2020'   |'26.06.2020'  |''        |''            |'110,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.07.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'День'        |'4,490'         |'26.06.2020'   |'26.07.2020'  |'381,65'  |'85,000000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.07.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'Ночь'        |'3,110'         |'26.06.2020'   |'26.07.2020'  |'139,95'  |'45,000000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.07.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'День'        |'4,490'         |'26.06.2020'   |'26.07.2020'  |''        |''            |'85,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.07.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'Ночь'        |'3,110'         |'26.06.2020'   |'26.07.2020'  |''        |''            |'45,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.07.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |'66,14'   |'15,488372'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.07.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |''        |''            |'15,488372'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.08.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'Среднее по нормативу'   |'Сутки'       |'4,270'         |'26.07.2020'   |'26.08.2020'  |'947,94'  |'222,000000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.08.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'Среднее по нормативу'   |'Сутки'       |'4,270'         |'26.07.2020'   |'26.08.2020'  |''        |''            |'222,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.08.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |'63,69'   |'14,914723'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.08.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |''        |''            |'14,914723'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'День'        |'4,490'         |'26.08.2020'   |'26.09.2020'  |'493,90'  |'110,000000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'Ночь'        |'3,110'         |'26.08.2020'   |'26.09.2020'  |'295,45'  |'95,000000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'День'        |'4,490'         |'26.08.2020'   |'26.09.2020'  |''        |''            |'110,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'Ночь'        |'3,110'         |'26.08.2020'   |'26.09.2020'  |''        |''            |'95,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Перерасчет'     |'Среднее по нормативу'   |'Сутки'       |'4,270'         |''             |''            |'-947,94' |'-222,000000' |'-222,000000'      |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |'159,21'  |'37,286800'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |''        |''            |'37,286800'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'День'        |'4,490'         |'26.09.2020'   |'26.10.2020'  |'314,30'  |'70,000000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'Ночь'        |'3,110'         |'26.09.2020'   |'26.10.2020'  |'124,40'  |'40,000000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'День'        |'4,490'         |'26.09.2020'   |'26.10.2020'  |''        |''            |'70,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'Ночь'        |'3,110'         |'26.09.2020'   |'26.10.2020'  |''        |''            |'40,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |''                    |'Начисление ОДН' |'Начисление по среднему' |''            |'4,270'         |''             |''            |'121,25'  |'28,39534884' |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |''                    |'Начисление ОДН' |'Начисление по среднему' |''            |'4,270'         |''             |''            |''        |''            |'28,39534884'      |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'День'        |'4,490'         |'26.10.2020'   |'26.11.2020'  |'538,80'  |'120,000000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'Ночь'        |'3,110'         |'26.10.2020'   |'26.11.2020'  |'155,50'  |'50,000000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'День'        |'4,490'         |'26.10.2020'   |'26.11.2020'  |''        |''            |'120,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'            |'Ночь'        |'3,110'         |'26.10.2020'   |'26.11.2020'  |''        |''            |'50,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По нормативу'           |''            |'4,270'         |''             |''            |'180,11'  |'42,18'       |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По нормативу'           |''            |'4,270'         |''             |''            |''        |''            |'42,18'            |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Абонент                           |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'ООО "РКС-энерго"' |'Калюжная Светлана Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Перерасчет'     |'Начисление по среднему' |''            |'4,270'         |''             |''            |'-121,25' |'-28,395349'  |'-28,39534884'     |