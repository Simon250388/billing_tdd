#language: ru
@tree
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет подчиненных услуг при наличии простых услуг>
Чтобы <бизнес-эффект>
"https://trello.com/c/DnU4XBKm"
Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПодчиненныхУслугПоНормативуИПриборам>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПодчиненныхУслугПоНормативуИПриборам"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский муниципальный район' и МКД '' с 'Июнь' '2020' по 'Июнь 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'Начисление'   |'Расчетный'       |'Основное направление'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |'3 143,38' |'83,389861'  |''                 |'1 047,79'                        |'15.06.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'полив_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |''         |''           |''                 |''                                |'15.06.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'полив_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |''         |''           |'82,288528'        |''                                |'15.06.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'Начисление'   |'По нормативу'    |'Основное направление'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |''         |''           |'1,101333'         |''                                |'15.06.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'Начисление'   |'По нормативу'    |'Основное направление'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |''         |''           |''                 |''                                |'15.06.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'Начисление'   |'По приборам'     |'Основное направление'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |'427,21‬'  |'17,000000'  |''                 |''                                |'01.07.2020'  |'15.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'Начисление'   |'По приборам'     |'Основное направление'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |''         |''           |'17,000000'        |''                                |'01.07.2020'  |'15.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'полив_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |''         |''           |''                 |''                                |'01.07.2020'  |'15.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'полив_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |''         |''           |'94,044032‬'       |''                                |'01.07.2020'  |'15.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'Начисление'   |'По нормативу'    |'Основное направление'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |''         |''           |'1,258666'         |''                                |'01.07.2020'  |'15.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Борисенко Вячеслав Иванович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'Начисление'   |'По нормативу'    |'Основное направление'       |'25,130'        |'01.06.2020'   |'01.06.2020'      |''         |''           |''                 |''                                |'01.07.2020'  |'15.06.2020'   |