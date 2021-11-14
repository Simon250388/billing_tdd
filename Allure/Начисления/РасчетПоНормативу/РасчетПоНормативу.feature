    #language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоНормативуПростойУслуги>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоНормативу.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Платежное поручение (входящие)'
        Тогда открылось окно 'Платежное поручение (входящие)'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Тайгинский городской округ' и МКД '' с 'Январь' '2021' по 'Март 2021'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений' 
        #Январь 21
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.01.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.01.2021'   |'01.01.2021'      |'0,824175'   |''                 |'1 161,16' |'01.01.2021'   |'01.02.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.01.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.01.2021'   |'01.01.2021'      |''           |'1,098900'         |''         |'01.01.2021'   |'01.02.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.01.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Горячее водоснабжение' |'ввод_ГВС + водоотведение' |'По приборам'     |'1879688 а 15' |'01.01.2021'   |'01.01.2021'      |''           |''                 |''         |'01.01.2021'   |'01.02.2021'  |'297,000000'        |'297,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.01.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Горячее водоснабжение' |'ввод_ГВС + водоотведение' |'По приборам'     |'1879688 а 15' |'01.01.2021'   |'01.01.2021'      |''           |''                 |''         |'01.01.2021'   |'01.02.2021'  |'297,000000'        |'297,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.01.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.01.2021'   |'01.01.2021'      |'0,119880'   |''                 |'287,06'   |'01.01.2021'   |'01.02.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.01.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.01.2021'   |'01.01.2021'      |''           |'0,159840'         |''         |'01.01.2021'   |'01.02.2021'  |''                  |''                 |
        #Февраль 21
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'28.02.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.02.2021'   |'01.02.2021'      |'0,824175'   |''                 |'1 161,16' |'01.02.2021'   |'01.03.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'28.02.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.02.2021'   |'01.02.2021'      |''           |'1,098900'         |''         |'01.02.2021'   |'01.03.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'28.02.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Горячее водоснабжение' |'ввод_ГВС + водоотведение' |'По приборам'     |'1879688 а 15' |'01.02.2021'   |'01.02.2021'      |''           |''                 |''         |'01.02.2021'   |'01.03.2021'  |'297,000000'        |'297,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'28.02.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Горячее водоснабжение' |'ввод_ГВС + водоотведение' |'По приборам'     |'1879688 а 15' |'01.02.2021'   |'01.02.2021'      |''           |''                 |''         |'01.02.2021'   |'01.03.2021'  |'297,000000'        |'297,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'28.02.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.02.2021'   |'01.02.2021'      |'0,119880'   |''                 |'287,06'   |'01.02.2021'   |'01.03.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'28.02.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.02.2021'   |'01.02.2021'      |''           |'0,159840'         |''         |'01.02.2021'   |'01.03.2021'  |''                  |''                 |
        #Март 21
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.03.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.03.2021'   |'01.03.2021'      |'0,824175'   |''                 |'1 161,16' |'01.03.2021'   |'01.04.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.03.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.03.2021'   |'01.03.2021'      |''           |'1,098900'         |''         |'01.03.2021'   |'01.04.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.03.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Горячее водоснабжение' |'ввод_ГВС + водоотведение' |'По приборам'     |'1879688 а 15' |'01.03.2021'   |'01.03.2021'      |''           |''                 |''         |'01.03.2021'   |'01.04.2021'  |'297,000000'        |'297,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.03.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Горячее водоснабжение' |'ввод_ГВС + водоотведение' |'По приборам'     |'1879688 а 15' |'01.03.2021'   |'01.03.2021'      |''           |''                 |''         |'01.03.2021'   |'01.04.2021'  |'297,000000'        |'297,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.03.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.03.2021'   |'01.03.2021'      |'0,119880'   |''                 |'287,06'   |'01.03.2021'   |'01.04.2021'  |''                  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                  |Точка учета                |Способ начисления |Прибор учета   |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма      |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.03.2021 23:59:59' |'Кулаков Сергей Григорьевич' |'Отопление'             |'узел_Отопление'           |'По нормативу'    |''             |'01.03.2021'   |'01.03.2021'      |''           |'0,159840'         |''         |'01.03.2021'   |'01.04.2021'  |''                  |''                 |