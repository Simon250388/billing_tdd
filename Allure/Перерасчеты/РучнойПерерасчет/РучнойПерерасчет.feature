    #language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РучнойПерерасчет>
    И я подготавливаю тестовые данные
        И я загружаю макет "РучнойПерерасчет.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Ноябрь' '2020' по 'Май 2021'
    И я создаю документ
        И В командном интерфейсе я выбираю 'Расчет начислений' 'Перерасчет'
        Тогда открылось окно 'Перерасчет'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение            |
        | 'Ручной перерасчет' |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Перерасчет (создание)'
        И в поле 'от' я ввожу текст '01.06.2021  0:00:00'
        И из выпадающего списка "Абонент" я выбираю по строке 'Фокина Надежда Петровна'
        Тогда значение поля "Территориальный орган" содержит текст "Плотниковское СП Промышленновского р-на"
        Тогда значение поля "Строение" содержит текст "Плотниково п, Юбилейная ул, Дом № 83"
        И в таблице "ДвиженияэнргОбъемНачислений" я нажимаю на кнопку с именем 'ДвиженияэнргОбъемНачисленийДобавить'
        И в таблице "ДвиженияэнргОбъемНачислений" в поле 'Расчетный период' я ввожу текст '01.06.2021'
        И в таблице "ДвиженияэнргОбъемНачислений" из выпадающего списка с именем "ДвиженияэнргОбъемНачисленийТочкаУчета" я выбираю по строке 'баня_Отопление бани'
        И в таблице "ДвиженияэнргОбъемНачислений" поле "ДвиженияэнргОбъемНачисленийУслуга" имеет значение "Отопление бани"
        И в таблице "ДвиженияэнргОбъемНачислений" поле "ДвиженияэнргОбъемНачисленийПоставщик" имеет значение "ОАО СКЭК"
        И в таблице "ДвиженияэнргОбъемНачислений" поле "ДвиженияэнргОбъемНачисленийНаправлениеИспользованияТУ" имеет значение "Основное направление"
        И в таблице "ДвиженияэнргОбъемНачислений" поле "Значение тарифа" имеет значение "1 046,920"
        И в таблице "ДвиженияэнргОбъемНачислений" поле "Значение тарифа РЭК" имеет значение "3 907,09"
        И в таблице "ДвиженияэнргОбъемНачислений" поле "Тарифная группа" имеет значение "население ЧС"
        И в таблице "ДвиженияэнргОбъемНачислений" я нажимаю кнопку выбора у реквизита "Способ начисления"
        И в таблице "ДвиженияэнргОбъемНачислений" из выпадающего списка с именем "ДвиженияэнргОбъемНачисленийСпособНачисления" я выбираю по строке 'Разовое начисления'
        И в таблице "ДвиженияэнргОбъемНачислений" в поле 'Объем услуги' я ввожу текст '0,700000'
        И в таблице "ДвиженияэнргОбъемНачислений" поле "Сумма" имеет значение "732,84"
        И в таблице "ДвиженияэнргОбъемНачислений" в поле 'Объем потребленный' я ввожу текст '0,700000'
    И я записываю документ
        И я нажимаю на кнопку 'Записать и закрыть'
        И я жду закрытия окна 'Перерасчет (создание) *' в течение 20 секунд
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке '4838'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.05.2021'
        И в поле 'DateEnd' я ввожу текст '30.06.2021'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        #Май 21
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                  |Точка учета                  |Вид начисления |Способ начисления    |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.05.2021 23:59:59' |'Фокина Надежда Петровна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Начисление'   |'По приборам'        |'0001415505' |'85,670'        |'01.05.2021'   |'01.05.2021'      |''           |''                 |''         |'01.05.2021'   |'01.06.2021'  |'136,000000'        |'136,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                  |Точка учета                  |Вид начисления |Способ начисления    |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.05.2021 23:59:59' |'Фокина Надежда Петровна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Начисление'   |'По приборам'        |'0001415505' |'85,670'        |'01.05.2021'   |'01.05.2021'      |''           |''                 |''         |'01.05.2021'   |'01.06.2021'  |'136,000000'        |'136,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                  |Точка учета                  |Вид начисления |Способ начисления    |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.05.2021 23:59:59' |'Фокина Надежда Петровна' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'       |''           |'1 046,920'     |'01.05.2021'   |'01.05.2021'      |'2,722275'   |''                 |'2 850,00' |'01.05.2021'   |'01.06.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                  |Точка учета                  |Вид начисления |Способ начисления    |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.05.2021 23:59:59' |'Фокина Надежда Петровна' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'       |''           |'1 046,920'     |'01.05.2021'   |'01.05.2021'      |''           |'3,629700'         |''         |'01.05.2021'   |'01.06.2021'  |''                  |''                 |
        #Июнь 21
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                  |Точка учета                  |Вид начисления |Способ начисления    |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'01.06.2021 15:56:02' |'Фокина Надежда Петровна' |'Отопление бани'        |'баня_Отопление бани'        |'Перерасчет'   |'Разовое начисления' |''           |'1 046,920'     |'01.06.2021'   |'01.06.2021'      |'0,700000'   |'0,700000'         |'732,84'   |'01.06.2021'   |'30.06.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                  |Точка учета                  |Вид начисления |Способ начисления    |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.06.2021 23:59:59' |'Фокина Надежда Петровна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Начисление'   |'По приборам'        |'0001415505' |'85,670'        |'01.06.2021'   |'01.06.2021'      |''           |''                 |''         |'01.06.2021'   |'01.07.2021'  |'136,000000'        |'136,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                  |Точка учета                  |Вид начисления |Способ начисления    |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.06.2021 23:59:59' |'Фокина Надежда Петровна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Начисление'   |'По приборам'        |'0001415505' |'85,670'        |'01.06.2021'   |'01.06.2021'      |''           |''                 |''         |'01.06.2021'   |'01.07.2021'  |'136,000000'        |'136,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                  |Точка учета                  |Вид начисления |Способ начисления    |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.06.2021 23:59:59' |'Фокина Надежда Петровна' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'       |''           |'1 046,920'     |'01.06.2021'   |'01.06.2021'      |'2,722275'   |''                 |'2 850,00' |'01.06.2021'   |'01.07.2021'  |''                  |''                 |
