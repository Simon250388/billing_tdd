#language: ru
@tree
Функционал: <описание фичи>
"https://trello.com/c/BH7z7rPxe"
Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПриНаличииПоказаний>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПриНаличииПоказаний"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2019' по 'Июль 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Зимнухов Александр Викторович'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 3
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Прибор учета                |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'По приборам'     |'Расчетная'                  |'0000000000000000000000031' |'Нет'           |'2,360000'             |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,360000'   |'33,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Прибор учета                |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'По нормативу'    |'Основное направление'       |''                          |'Нет'           |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,360000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Прибор учета                |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'По приборам'     |'Расчетная'                  |'0000000000000000000000031' |'Да'            |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'30,640000'  |''                 |
