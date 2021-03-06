    #language: ru
    @tree
    @card "https://trello.com/c/aVbfoJ3l"
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоНормативуПриИзмененииТехВоз>
    И я перепровожу документ
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить техническую возможность установки ПУ'
        Тогда открылось окно 'Изменить техническую возможность установки ПУ'
        И в таблице "Список" я перехожу к строке:
        |Дата                  |Дата фактического события |Район                         |Организация  |Ответственный                   |Абонент                    |
        |'01.11.2020 15:00:00' |'01.10.2020 20:00:00'     |'Кемеровский городской округ' |'ОАО "СКЭК"' |'Апанасенко Татьяна Валериевна' |'Шломов Владимир Павлович' |
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Изменить техническую возможность установки ПУ * от *'
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменить техническую возможность установки ПУ * от *' в течение 20 секунд
        Тогда открылось окно '1С:Предприятие'
        И я нажимаю на кнопку 'Нет'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле с именем "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Шломов Владимир Павлович'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле с именем "Точка учета"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'ввод_Холодное водоснабжение'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.10.2020'
        И в поле 'DateEnd' я ввожу текст '30.11.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Шломов Владимир Павлович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'По нормативу'    |'Основное направление'       |'23,620'        |'01.10.2020'   |'01.10.2020'      |''           |'11,800000'        |''       |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Шломов Владимир Павлович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'По нормативу'    |'Основное направление'       |'23,620'        |'01.10.2020'   |'01.10.2020'      |'11,800000'  |''                 |'278,72' |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Шломов Владимир Павлович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'По нормативу'    |'Основное направление'       |'23,620'        |'01.11.2020'   |'01.11.2020'      |''           |'11,800000'        |''       |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Шломов Владимир Павлович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'По нормативу'    |'Основное направление'       |'23,620'        |'01.11.2020'   |'01.11.2020'      |'11,800000'  |''                 |'278,72' |''                                |'01.12.2020'  |'01.11.2020'   |

