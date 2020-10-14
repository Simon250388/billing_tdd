    #language: ru
    @tree
    @card 'https://trello.com/c/ZXaRJ4jJ'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетОтопленияПослеВыводаПУ>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетОтопленияПослеВыводаПУ.mxl"
        И я перепровожу загруженные документы
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
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Май' '2020' по 'Октябрь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Услуга"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Отопление'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Бычкова Галина Мироновна'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.05.2020'
        И в поле 'DateEnd' я ввожу текст '31.10.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        #Май
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Начисление 00000000088 от 31.05.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.05.2020'   |'01.05.2020'      |'Нет'           |'Нет'                                |'1,348650'   |''                 |'1,348650'             |''                                  |'1 351,13'  |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Начисление 00000000088 от 31.05.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.05.2020'   |'01.05.2020'      |'Нет'           |'Нет'                                |''           |'1,798200'         |''                     |'1,798200'                          |''          |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Начисление 00000000088 от 31.05.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.05.2020'   |'01.05.2020'      |'Да'            |'Нет'                                |'0,994005'   |''                 |''                     |''                                  |'995,83'    |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Начисление 00000000088 от 31.05.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.05.2020'   |'01.05.2020'      |'Да'            |'Нет'                                |''           |'1,325340'         |''                     |''                                  |''          |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Начисление 00000000098 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По приборам'            |'3573576'    |'1 001,840'     |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Да'                                 |''           |'0,287846'         |''                     |'0,287846'                          |''          |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Начисление 00000000098 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'   |'3573576'    |'1 001,840'     |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Да'                                 |'1,348650'   |''                 |'1,348650'             |''                                  |'1 351,13'  |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Начисление 00000000098 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'   |'3573576'    |'1 001,840'     |'01.06.2020'   |'01.06.2020'      |'Да'            |'Да'                                 |'0,994005'   |''                 |''                     |''                                  |'995,83'    |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Начисление 00000000098 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По приборам'            |'3573576'    |'1 001,840'     |'01.06.2020'   |'01.06.2020'      |'Да'            |'Да'                                 |''           |'0,212154'         |''                     |''                                  |''          |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.05.2020'      |'Нет'           |'Нет'                                |''           |'-1,798200'        |''                     |'-1,798200'                         |''          |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.05.2020'      |'Нет'           |'Да'                                 |''           |'1,798200'         |''                     |'1,798200'                          |''          |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.05.2020'      |'Да'            |'Нет'                                |''           |'-1,325340'        |''                     |''                                  |''          |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.05.2020'      |'Да'            |'Да'                                 |''           |'1,325340'         |''                     |''                                  |''          |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.01.2020'      |'Нет'           |'Нет'                                |'-2,342655'  |'-2,342655'        |''                     |''                                  |'-2 346,97' |'31.01.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.01.2020'      |'Нет'           |'Да'                                 |'2,342655'   |'2,342655'         |''                     |''                                  |'2 346,97'  |'31.01.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.04.2020'      |'Нет'           |'Нет'                                |'-2,342655'  |'-2,342655'        |''                     |''                                  |'-2 346,97' |'30.04.2020'  |'01.04.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.04.2020'      |'Нет'           |'Да'                                 |'2,342655'   |'2,342655'         |''                     |''                                  |'2 346,97'  |'30.04.2020'  |'01.04.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.05.2020'      |'Да'            |'Нет'                                |'-0,994005'  |''                 |''                     |''                                  |'-995,83'   |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.05.2020'      |'Да'            |'Да'                                 |'0,994005'   |''                 |''                     |''                                  |'995,83'    |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.05.2020'      |'Нет'           |'Нет'                                |'-1,348650'  |''                 |'-1,348650'            |''                                  |'-1 351,13' |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.05.2020'      |'Нет'           |'Да'                                 |'1,348650'   |''                 |'1,348650'             |''                                  |'1 351,13'  |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.02.2020'      |'Нет'           |'Нет'                                |'-2,342655'  |'-2,342655'        |''                     |''                                  |'-2 346,97' |'29.02.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.02.2020'      |'Нет'           |'Да'                                 |'2,342655'   |'2,342655'         |''                     |''                                  |'2 346,97'  |'29.02.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.03.2020'      |'Нет'           |'Нет'                                |'-2,342655'  |'-2,342655'        |''                     |''                                  |'-2 346,97' |'31.03.2020'  |'01.03.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Перерасчет 00000000146 от 30.06.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По нормативу'           |''           |'1 001,840'     |'01.06.2020'   |'01.03.2020'      |'Нет'           |'Да'                                 |'2,342655'   |'2,342655'         |''                     |''                                  |'2 346,97'  |'31.03.2020'  |'01.03.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Начисление 00000000125 от 31.07.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По приборам'            |'3573576'    |'1 001,840'     |'01.07.2020'   |'01.07.2020'      |'Нет'           |'Да'                                 |''           |'0,345415'         |''                     |'0,345415'                          |''          |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Начисление 00000000125 от 31.07.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'   |'3573576'    |'1 001,840'     |'01.07.2020'   |'01.07.2020'      |'Нет'           |'Да'                                 |'1,348650'   |''                 |'1,348650'             |''                                  |'1 351,13'  |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Начисление 00000000125 от 31.07.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'   |'3573576'    |'1 300,000'     |'01.07.2020'   |'01.07.2020'      |'Да'            |'Да'                                 |'0,994005'   |''                 |''                     |''                                  |'1 292,21'  |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Начисление 00000000125 от 31.07.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По приборам'            |'3573576'    |'1 300,000'     |'01.07.2020'   |'01.07.2020'      |'Да'            |'Да'                                 |''           |'0,254585'         |''                     |''                                  |''          |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Начисление 00000000137 от 31.08.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По приборам'            |'3573576'    |'1 001,840'     |'01.08.2020'   |'01.08.2020'      |'Нет'           |'Да'                                 |''           |'0,402985'         |''                     |'0,402985'                          |''          |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Начисление 00000000137 от 31.08.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'   |'3573576'    |'1 001,840'     |'01.08.2020'   |'01.08.2020'      |'Нет'           |'Да'                                 |'1,348650'   |''                 |'1,348650'             |''                                  |'1 351,13'  |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Начисление 00000000137 от 31.08.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'   |'3573576'    |'1 300,000'     |'01.08.2020'   |'01.08.2020'      |'Да'            |'Да'                                 |'0,994005'   |''                 |''                     |''                                  |'1 292,21'  |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Начисление 00000000137 от 31.08.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По приборам'            |'3573576'    |'1 300,000'     |'01.08.2020'   |'01.08.2020'      |'Да'            |'Да'                                 |''           |'0,297015'         |''                     |''                                  |''          |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Начисление 00000000138 от 30.09.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По приборам'            |'3573576'    |'1 001,840'     |'01.09.2020'   |'01.09.2020'      |'Нет'           |'Да'                                 |''           |'0,575692'         |''                     |'0,575692'                          |''          |'01.09.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Начисление 00000000138 от 30.09.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'По приборам'            |'3573576'    |'1 300,000'     |'01.09.2020'   |'01.09.2020'      |'Да'            |'Да'                                 |''           |'0,424308'         |''                     |''                                  |''          |'01.09.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Начисление 00000000137 от 31.08.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'   |'3573576'    |'1 001,840'     |'01.09.2020'   |'01.09.2020'      |'Нет'           |'Да'                                 |'1,348650'   |''                 |'1,348650'             |''                                  |'1 351,13'  |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Начисление 00000000137 от 31.08.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'   |'3573576'    |'1 300,000'     |'01.09.2020'   |'01.09.2020'      |'Да'            |'Да'                                 |'0,994005'   |''                 |''                     |''                                  |'1 292,21'  |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Начисление 00000000139 от 31.10.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'3573576'    |'1 001,840'     |'01.10.2020'   |'01.10.2020'      |'Нет'           |'Да'                                 |''           |'0,035042'         |''                     |'0,035042'                          |''          |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Начисление 00000000139 от 31.10.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'3573576'    |'1 300,000'     |'01.10.2020'   |'01.10.2020'      |'Да'            |'Да'                                 |''           |'0,025828'         |''                     |''                                  |''          |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Начисление 00000000137 от 31.08.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'   |'3573576'    |'1 001,840'     |'01.10.2020'   |'01.10.2020'      |'Нет'           |'Да'                                 |'1,348650'   |''                 |'1,348650'             |''                                  |'1 351,13'  |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                     |Абонент                    |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Был установленный прибор в этом году |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма       |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Начисление 00000000137 от 31.08.2020 23:59:59' |'Бычкова Галина Мироновна' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'   |'3573576'    |'1 300,000'     |'01.10.2020'   |'01.10.2020'      |'Да'            |'Да'                                 |'0,994005'   |''                 |''                     |''                                  |'1 292,21'  |'01.11.2020'  |'01.10.2020'   |
