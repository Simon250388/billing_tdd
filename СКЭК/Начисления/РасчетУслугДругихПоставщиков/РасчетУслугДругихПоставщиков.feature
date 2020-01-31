#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <проверить расчет зависимых услуг в случае если одна из услуг принадлежит другому поставщику>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <расчет зависимых услуг в случае если одна из услуг принадлежит другому поставщику>
    И я подготавливаю тестовые данные
        И я загружаю макет "СКЭК\Начисления\РасчетУслугДругихПоставщиков\РасчетУслугДругихПоставщиковИсходныеДанные.mxl"
        И я перепровожу загруженные данные
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский муниципальный район' с 'Октябрь' '2019' по 'Октябрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 4
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета                      |Шкала      |Значение тарифа |Поставщик                        |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.10.2019 23:59:59' |'ОАО "СКЭК"' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'1111                     '       |'Основная' |'14,190'        |'ОАО СКЭК'                       |'01.10.2019'   |'01.10.2019'      |'Нет'           |'141,90' |'01.10.2019'   |'01.11.2019'  |'1,000000'          |'11,000000'        |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'10,000000'  |'10,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета                      |Шкала      |Значение тарифа |Поставщик                        |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.10.2019 23:59:59' |'ОАО "СКЭК"' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'1111                     '       |'Основная' |'25,130'        |'ОАО СКЭК'                       |'01.10.2019'   |'01.10.2019'      |'Нет'           |'125,90' |'01.10.2019'   |'01.11.2019'  |'1,000000'          |'11,000000'        |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,010000'   |'10,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета                      |Шкала      |Значение тарифа |Поставщик                        |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.10.2019 23:59:59' |'ОАО "СКЭК"' |'Водоотведение'          |'ввод_ГВС + водоотведение' |'По приборам'     |'Основное направление'       |'2222                     '       |'Основная' |'14,190'        |'ОАО СКЭК'                       |'01.10.2019'   |'01.10.2019'      |'Нет'           |'28,38'  |'01.10.2019'   |'01.11.2019'  |'1,000000'          |'3,000000'         |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,000000'   |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация  |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета                      |Шкала      |Значение тарифа |Поставщик                        |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.10.2019 23:59:59' |'ОАО "СКЭК"' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'1111                     '       |'Основная' |'25,130'        |'ОАО СКЭК'                       |'01.10.2019'   |'01.10.2019'      |'Да'            |'125,40' |'01.10.2019'   |'01.11.2019'  |'1,000000'          |'11,000000'        |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный   |
        |'4,990000'   |''                   |