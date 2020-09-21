#language: ru
@tree
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>
Карточка "https://trello.com/c/M0pXp4Ln/1768"

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоНормативу>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоНормативу"
    И я перепровожу загруженные данные
        И Я перепровожу все документы абонента "Миронова Мария Петровна"
    И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД '' с 'Июнь' '2020' по 'Ноябрь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 24
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.06.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.05.2020'   |'26.06.2020'  |''         |''           |'222,000000'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.06.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.05.2020'   |'26.06.2020'  |'1 421,91' |'222,000000' |''                 |'473,97'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.06.2020'   |'14.07.2020'  |''         |''           |'133,200000'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.06.2020'   |'14.07.2020'  |'853,14'   |'133,200000' |''                 |'284,38'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'14.07.2020'   |'26.07.2020'  |''         |''           |'40,000000'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'14.07.2020'   |'26.07.2020'  |''         |''           |'20,000000'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'14.07.2020'   |'26.07.2020'  |'179,60'   |'40,000000'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'14.07.2020'   |'26.07.2020'  |'48,60'    |'20,000000'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.08.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.07.2020'   |'26.08.2020'  |''         |''           |'90,000000'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.08.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.07.2020'   |'26.08.2020'  |''         |''           |'40,000000'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.08.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.07.2020'   |'26.08.2020'  |'404,10'   |'90,000000'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.08.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.07.2020'   |'26.08.2020'  |'97,20'    |'40,000000'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.09.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.08.2020'   |'26.09.2020'  |'278,38'   |'62,000000'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.09.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.08.2020'   |'26.09.2020'  |'82,62'    |'34,000000'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.09.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.08.2020'   |'26.09.2020'  |''         |''           |'62,000000'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.09.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.08.2020'   |'26.09.2020'  |''         |''           |'34,000000'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.10.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'День'        |'4,490'         |'26.09.2020'   |'16.10.2020'  |'287,36'   |'64,000000'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.10.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'Ночь'        |'2,430'         |'26.09.2020'   |'16.10.2020'  |'76,14'    |'31,333333'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.10.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'Ночь'        |'2,430'         |'26.09.2020'   |'16.10.2020'  |''         |''           |'31,333333'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.10.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'День'        |'4,490'         |'26.09.2020'   |'16.10.2020'  |''         |''           |'64,000000'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.11.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'День'        |'4,490'         |'26.10.2020'   |'26.11.2020'  |'287,36'   |'64,000000'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.11.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'Ночь'        |'2,430'         |'26.10.2020'   |'26.11.2020'  |'76,14'    |'31,333333'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.11.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'День'        |'4,490'         |'26.10.2020'   |'26.11.2020'  |''         |''           |'64,000000'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.11.2020 23:59:59' |'Миронова Мария Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'Ночь'        |'2,430'         |'26.10.2020'   |'26.11.2020'  |''         |''           |'31,333333'        |''                                |