#language: ru
@tree
Функционал: <описание фичи>

    Как <Роль>
    Я хочу <проверить расчет в случае ввода прибора учета и последующей замены. Абонент Савельева. 0256135710>
    Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <расчет в случае ввода прибора учета и последующей замены>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетВСлучаеВводаПрибораУчетаИПоследующейЗамены"
    И я перепровожу загруженные данные
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
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
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Ноябрь' '2019' по 'Декабрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 9
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.11.2019 23:59:59' |'ОАО "СКЭК"' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'По нормативу'    |'Основное направление'       |''           |'14,320'        |'ОАО СКЭК' |'01.11.2019'   |'01.11.2019'      |'Нет'           |'01.11.2019'   |'25.11.2019'  |''                  |''                 |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,088000'   |'2,088000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.11.2019 23:59:59' |'ОАО "СКЭК"' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По нормативу'    |'Основное направление'       |''           |'17,420'        |'ОАО СКЭК' |'01.11.2019'   |'01.11.2019'      |'Нет'           |'01.11.2019'   |'25.11.2019'  |''                  |''                 |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,088000'   |'2,088000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета   |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.11.2019 23:59:59' |'ОАО "СКЭК"' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'114477'       |'14,320'        |'ОАО СКЭК' |'01.11.2019'   |'01.11.2019'      |'Нет'           |'25.11.2019'   |'01.12.2019'  |'1,000000'          |'1,000000'         |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета   |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.11.2019 23:59:59' |'ОАО "СКЭК"' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'114477'       |'17,420'        |'ОАО СКЭК' |'01.11.2019'   |'01.11.2019'      |'Да'            |'25.11.2019'   |'01.12.2019'  |'1,000000'          |'1,000000'         |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета   |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.12.2019 23:59:59' |'ОАО "СКЭК"' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'114477'       |'14,320'        |'ОАО СКЭК' |'01.12.2019'   |'01.12.2019'      |'Нет'           |'01.12.2019'   |'10.12.2019'  |'1,000000'          |'26,000000'        |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'25,000000'  |'25,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета   |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.12.2019 23:59:59' |'ОАО "СКЭК"' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'114477'       |'17,420'        |'ОАО СКЭК' |'01.12.2019'   |'01.12.2019'      |'нет'            |'01.12.2019'   |'10.12.2019'  |'1,000000'          |'26,000000'                 |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,610000'   |'25,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета   |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.12.2019 23:59:59' |'ОАО "СКЭК"' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'114477'       |'17,420'        |'ОАО СКЭК' |'01.12.2019'   |'01.12.2019'      |'Да'            |'01.12.2019'   |'10.12.2019'  |'1,000000'          |'26,000000'                 |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'22,390000'  |''        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета   |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.12.2019 23:59:59' |'ОАО "СКЭК"' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'5345'         |'14,320'        |'ОАО СКЭК' |'01.12.2019'   |'01.12.2019'      |'Нет'           |'10.12.2019'   |'01.01.2020'  |''                  |''                 |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета   |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.12.2019 23:59:59' |'ОАО "СКЭК"' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'5345'         |'17,420'        |'ОАО СКЭК' |'01.12.2019'   |'01.12.2019'      |'Да'            |'10.12.2019'   |'01.01.2020'  |''                  |''                 |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''         |