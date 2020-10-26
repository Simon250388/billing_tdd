    #language: ru
    @tree
    @card 'https://trello.com/c/Pp9LwkBQ'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <ИндивидуальныеНачисленияЗакрытогоЛС>
    И я подготавливаю тестовые данные
        И я загружаю макет "ИндивидуальныеНачисленияЗакрытогоЛС.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Октябрь' '2020' по 'Октябрь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.10.2020'
        И в поле 'DateEnd' я ввожу текст '31.11.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда в таблице "Список" количество строк "равно" 2
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма |Сумма по повышенному коэффициенту |
        |'31.10.2020 23:59:59' |'Трофимова Наталья Александровна' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'Начисление'   |'По приборам'     |'Основное направление'       |'29482294'   |'43,320'        |'01.10.2020'   |'01.10.2020'      |''           |''                 |''    |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма |Сумма по повышенному коэффициенту |
        |'31.10.2020 23:59:59' |'Трофимова Наталья Александровна' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'Начисление'   |'По приборам'     |'Основное направление'       |'29482294'   |'43,320'        |'01.10.2020'   |'01.10.2020'      |''           |''                 |''    |''                                |
    И я выполняю индивидуальные начисления
        И В командном интерфейсе я выбираю 'Расчет начислений' 'Выполнение индивидуальных начислений абонента'
        Тогда открылось окно 'Выполнение начислений: Выполнение индивидуальных начислений абонента'
        И я нажимаю кнопку выбора у поля "Месяц с"
        Тогда открылось окно 'Выбор периода'
        И в поле 'ВыбираемыйПериод' я ввожу текст '2020'
        И я нажимаю на кнопку 'Ноябрь'
        И я нажимаю на кнопку 'Выбрать'   
        И из выпадающего списка с именем "Абонент" я выбираю по строке 'Трофимова Наталья Александровна'
        И я нажимаю на кнопку 'Выполнить все операции'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.10.2020'
        И в поле 'DateEnd' я ввожу текст '31.11.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда в таблице "Список" количество строк "равно" 2
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма |Сумма по повышенному коэффициенту |
        |'31.10.2020 23:59:59' |'Трофимова Наталья Александровна' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'Начисление'   |'По приборам'     |'Основное направление'       |'29482294'   |'43,320'        |'01.10.2020'   |'01.10.2020'      |''           |''                 |''    |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма |Сумма по повышенному коэффициенту |
        |'31.10.2020 23:59:59' |'Трофимова Наталья Александровна' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'Начисление'   |'По приборам'     |'Основное направление'       |'29482294'   |'43,320'        |'01.10.2020'   |'01.10.2020'      |''           |''                 |''    |''                                |    