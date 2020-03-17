    #language: ru
    @tree
    Функционал: <описание фичи>
    "https://trello.com/c/ZriIUFnY"
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоливаПоНормативу>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоливаПоНормативу.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "СКЭК"' и району 'Кемеровский муниципальный район' и МКД '' с 'Июль' '2019' по 'Август 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'   
        Тогда в таблице "Список" количество строк "равно" 6
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |
        |'31.07.2019 23:59:59' |'Веремьева Пелагея Федоровна' |'Холодное водоснабжение' |'*_Холодное водоснабжение'      |'По формулам расчета'    |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'16,000000'  |'16,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |
        |'31.07.2019 23:59:59' |'Веремьева Пелагея Федоровна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'            |'полив из водопровода'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'27,000000'  |'27,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |
        |'31.07.2019 23:59:59' |'Веремьева Пелагея Федоровна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'По приборам'            |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'20,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Веремьева Пелагея Федоровна' |'Холодное водоснабжение' |'*_Холодное водоснабжение'      |'По формулам расчета'    |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'4,666667'   |'4,666667'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Веремьева Пелагея Федоровна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление по среднему' |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'12,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Веремьева Пелагея Федоровна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'           |'полив из водопровода'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,273966'   |''                 |
