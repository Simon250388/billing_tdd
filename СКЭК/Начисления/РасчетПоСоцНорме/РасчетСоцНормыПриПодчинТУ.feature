﻿    #language: ru
@tree
@card 'https://trello.com/c/Z50GJOax'
Функционал: <описание фичи>
Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетСоцНормыПриПодчинТУ>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетСоцНормыПриПодчинТУ"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "Тайгинское ВКХ"' и району 'Тайгинский городской округ' и МКД '' с 'Июль' '2019' по 'Октябрь 2019'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        #Июль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги  |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'20,120'        |'01.07.2019'   |'01.07.2019'      |'Нет'           |'462,76' |'23,000000'   |''                 |''                                |''                     |''                                  |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный  |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'20,120'        |'01.07.2019'   |'01.07.2019'      |'Нет'           |''       |''           |'23,000000'         |''                                |''                     |''                                  |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный  |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'18,990'        |'01.07.2019'   |'01.07.2019'      |'Нет'           |''       |''           |'23,000000'         |''                                |''                     |''                                  |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги  |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'18,990'        |'01.07.2019'   |'01.07.2019'      |'Нет'           |'436,77' |'23,000000'   |''                 |''                                |''                     |''                                  |'01.08.2019'  |'01.07.2019'   |
        #Август 19
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'20,120'        |'01.08.2019'   |'01.08.2019'      |'Нет'           |'201,20' |'10,000000'  |''                 |''                                |''                     |''                                  |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'20,120'        |'01.08.2019'   |'01.08.2019'      |'Нет'           |''       |''           |'10,000000'        |''                                |''                     |''                                  |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'18,990'        |'01.08.2019'   |'01.08.2019'      |'Нет'           |''       |''           |'8,380000'         |''                                |''                     |'8,380000'                          |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'18,990'        |'01.08.2019'   |'01.08.2019'      |'Нет'           |'159,14' |'8,380000'   |''                 |''                                |'8,380000'             |''                                  |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'35,110'        |'01.08.2019'   |'01.08.2019'      |'Да'            |'56,88'  |'1,620000'   |''                 |''                                |''                     |''                                  |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'35,110'        |'01.08.2019'   |'01.08.2019'      |'Да'            |''       |''           |'1,620000'         |''                                |''                     |''                                  |'01.09.2019'  |'01.08.2019'   |
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'20,120'        |'01.09.2019'   |'01.09.2019'      |'Нет'           |'241,44' |'12,000000'  |''                 |''                                |''                     |''                                  |'30.09.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'20,120'        |'01.09.2019'   |'01.09.2019'      |'Нет'           |''       |''           |'12,000000'        |''                                |''                     |''                                  |'30.09.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'18,990'        |'01.09.2019'   |'01.09.2019'      |'Нет'           |''       |''           |'8,380000'         |''                                |''                     |'8,380000'                          |'30.09.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'18,990'        |'01.09.2019'   |'01.09.2019'      |'Нет'           |'159,14' |'8,380000'   |''                 |''                                |'8,380000'             |''                                  |'30.09.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'20,120'        |'01.09.2019'   |'01.09.2019'      |'Нет'           |''       |''           |''                 |''                                |''                     |''                                  |'01.10.2019'  |'30.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'20,120'        |'01.09.2019'   |'01.09.2019'      |'Нет'           |''       |''           |''                 |''                                |''                     |''                                  |'01.10.2019'  |'30.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'18,990'        |'01.09.2019'   |'01.09.2019'      |'Нет'           |''       |''           |''                 |''                                |''                     |''                                  |'01.10.2019'  |'30.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'18,990'        |'01.09.2019'   |'01.09.2019'      |'Нет'           |''       |''           |''                 |''                                |''                     |''                                  |'01.10.2019'  |'30.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'35,110'        |'01.09.2019'   |'01.09.2019'      |'Да'            |'127,10' |'3,620000'   |''                 |''                                |''                     |''                                  |'30.09.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'35,110'        |'01.09.2019'   |'01.09.2019'      |'Да'            |''       |''           |'3,620000'         |''                                |''                     |''                                  |'30.09.2019'  |'01.09.2019'   |
        #Октябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'20,120'        |'01.10.2019'   |'01.10.2019'      |'Нет'           |''       |''           |'8,380000'         |''                                |''                     |'8,380000'                          |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'20,120'        |'01.10.2019'   |'01.10.2019'      |'Нет'           |'168,61' |'8,380000'   |''                 |''                                |'8,380000'             |''                                  |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'18,990'        |'01.10.2019'   |'01.10.2019'      |'Нет'           |''       |''           |'8,380000'         |''                                |''                     |'8,380000'                          |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'18,990'        |'01.10.2019'   |'01.10.2019'      |'Нет'           |'159,14' |'8,380000'   |''                 |''                                |'8,380000'             |''                                  |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'49,210'        |'01.10.2019'   |'01.10.2019'      |'Да'            |'522,61' |'10,620000'  |''                 |''                                |''                     |''                                  |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'49,210'        |'01.10.2019'   |'01.10.2019'      |'Да'            |''       |''           |'10,620000'        |''                                |''                     |''                                  |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'35,110'        |'01.10.2019'   |'01.10.2019'      |'Да'            |'372,87' |'10,620000'  |''                 |''                                |''                     |''                                  |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'По приборам'     |'Основное направление'       |'3164397а15' |'35,110'        |'01.10.2019'   |'01.10.2019'      |'Да'            |''       |''           |'10,620000'        |''                                |''                     |''                                  |'01.11.2019'  |'01.10.2019'   |