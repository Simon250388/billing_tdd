    #language: ru
    @tree
    Функционал: <описание фичи>
    "https://trello.com/c/DeUUKf6J"
    Как <Роль>
    Я хочу <проверить расчет среднего начисления>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоСреднему>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоСреднему.mxl"        
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Апрель 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Услуга"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Горячее водоснабжение'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
    И я проверяю начисления за январь
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.01.2020'
        И в поле 'DateEnd' я ввожу текст '31.01.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'   
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                  |Точка учета                  |Способ начисления      |Прибор учета |Значение тарифа |Сверх норматива |Сумма по повышенному коэффициенту |Начало периода |Конец периода |
        |'31.01.2020 23:59:59' |'Левашенко Зинаида Владимировна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'По приборам'          |'357456'     |'81,980'        |'Нет'           |''                                |'01.01.2020'   |'01.02.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма       |Объем услуги |Объем потребленный |
        |''          |''           |''                 |
    И я проверяю начисления за февраль
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.02.2020'
        И в поле 'DateEnd' я ввожу текст '29.02.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        |Период                |Абонент                          |Услуга                  |Точка учета                  |Способ начисления               |Прибор учета |Значение тарифа |Сверх норматива |Сумма по повышенному коэффициенту |Начало периода |Конец периода |
        |'29.02.2020 23:59:59' |'Левашенко Зинаида Владимировна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Среднее по нормативу'          |'357456'     |'81,980'        |'Нет'           |''                                |'01.02.2020'   |'01.03.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма             |Объем услуги     |Объем потребленный |
        |'552,55'          |'6,740000'       |'6,740000'         |
    И я проверяю начисления за март
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.03.2020'
        И в поле 'DateEnd' я ввожу текст '31.03.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        |Период                |Абонент                          |Услуга                  |Точка учета                  |Способ начисления               |Прибор учета |Значение тарифа |Сверх норматива |Сумма по повышенному коэффициенту |Начало периода |Конец периода |
        |'31.03.2020 23:59:59' |'Левашенко Зинаида Владимировна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'По приборам'                   |'357456'     |'81,980'        |'Нет'           |''                                |'01.03.2020'   |'01.04.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма               |Объем услуги      |Объем потребленный  |
        |'1 229,7‬0'          |'15,000000'       |'15,000000'         |
    И я проверяю начисления за апрель
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.04.2020'
        И в поле 'DateEnd' я ввожу текст '30.04.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        |Период                |Абонент                          |Услуга                  |Точка учета                  |Способ начисления               |Прибор учета |Значение тарифа |Сверх норматива |Сумма по повышенному коэффициенту |Начало периода |Конец периода |
        |'30.04.2020 23:59:59' |'Левашенко Зинаида Владимировна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'По среднему'                   |'357456'     |'81,980'        |'Нет'           |''                                |'01.04.2020'   |'01.05.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма               |Объем услуги      |Объем потребленный  |
        |'409,90'            |'5,000000'        |'5,000000'          |     
      