    #language: ru
    @tree
    Функционал: <Объем потребленный МКД>

    Как <Роль>
    Я хочу <проверить расчет по формулам, когда в формуле участвует несколько услуг>
    Чтобы <бизнес-эффект>
    "https://trello.com/c/jbkNQWmp"
    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <Объем потребленный МКД>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПростыхУслугСПоказаниями.mxl"
    И я перепровжу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Регистрация показаний многоквартирного дома'
        Тогда открылось окно 'Регистрация показаний многоквартирного дома'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' с 'Июль' '2019' по 'Июль 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачисленийМКД"
        Тогда открылось окно 'Объем начислений (МКД)'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.07.2019'
        И в поле 'DateEnd' я ввожу текст '31.07.2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И в таблице "Список" я перехожу к строке:
        |Период                |МКД                                                                            |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.07.2019 23:59:59' |'652420, Кемеровская область - Кузбасс, Березовский г., Ленина пр-кт, дом № 8' |'Отопление' |'ввод_Отопление' |'Начисление'   |'Начисление по среднему' |'1'          |'01.07.2019'      |
        И в таблице "Список" текущая строка равна:
        |Шкала       |Объем услуги |Объем услуги потребленный |
        |'отопление' |'113,400000' |'20,000000'               |
