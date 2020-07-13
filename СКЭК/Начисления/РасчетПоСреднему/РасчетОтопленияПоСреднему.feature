﻿#language: ru
@tree
@card 'https://trello.com/c/CGyN0gZi'
Функционал: <описание фичи>
Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетОтопленияПоСреднему>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетОтопленияПоСреднему"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' и МКД '' с 'Июль' '2019' по 'Октябрь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.01.2020'
        И в поле 'DateEnd' я ввожу текст '30.10.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Объем начислений'
        #Январь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Нет'           |''          |''           |'0,824175'         |''                     |'0,824175'                          |'01.02.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Нет'           |'1 425,54'  |'0,824175'   |''                 |'0,824175'             |''                                  |'01.02.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.02.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Да'            |''          |''           |'1,405825'         |''                     |''                                  |'01.02.2020'  |'01.01.2020'   |
        #Февраль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Нет'           |''          |''           |'0,824175'         |''                     |'0,824175'                          |'01.03.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Нет'           |'1 425,54'  |'0,824175'   |''                 |'0,824175'             |''                                  |'01.03.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.03.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Да'            |''          |''           |'1,072825'         |''                     |''                                  |'01.03.2020'  |'01.02.2020'   |
        #Март
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.03.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.03.2020'   |'01.03.2020'      |'Нет'           |''          |''           |'0,824175'         |''                     |'0,824175'                          |'01.04.2020'  |'01.03.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.03.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.03.2020'   |'01.03.2020'      |'Нет'           |'1 425,54'  |'0,824175'   |''                 |'0,824175'             |''                                  |'01.04.2020'  |'01.03.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.03.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.03.2020'   |'01.03.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.04.2020'  |'01.03.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.03.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.03.2020'   |'01.03.2020'      |'Да'            |''          |''           |'0,646825'         |''                     |''                                  |'01.04.2020'  |'01.03.2020'   |
        #Апрель
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.04.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.04.2020'   |'01.04.2020'      |'Нет'           |''          |''           |'0,783000'         |''                     |''                                  |'01.05.2020'  |'01.04.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.04.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.04.2020'   |'01.04.2020'      |'Нет'           |'1 425,54'  |'0,824175'   |''                 |'0,824175'             |''                                  |'01.05.2020'  |'01.04.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.04.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.04.2020'   |'01.04.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.05.2020'  |'01.04.2020'   |
        #Май
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.05.2020'   |'01.05.2020'      |'Нет'           |'882,06'    |'0,509960'   |''                 |''                     |''                                  |'16.05.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.05.2020'   |'01.05.2020'      |'Нет'           |''          |''           |'0,631666'         |''                     |''                                  |'16.05.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.05.2020'   |'01.05.2020'      |'Нет'           |'543,49'    |'0,314215'   |''                 |'0,314215'             |''                                  |'01.06.2020'  |'16.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.05.2020'   |'01.05.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.06.2020'  |'16.05.2020'   |
        #Июнь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.06.2020'   |'01.06.2020'      |'Нет'           |'1 425,54'  |'0,824175'   |''                 |'0,824175'             |''                                  |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.06.2020'   |'01.06.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.07.2020'  |'01.06.2020'   |
        #Июль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.07.2020'   |'01.07.2020'      |'Нет'           |'1 425,54'  |'0,824175'   |''                 |'0,824175'             |''                                  |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.07.2020'   |'01.07.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.08.2020'  |'01.07.2020'   |
        #Август
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.08.2020'   |'01.08.2020'      |'Нет'           |'1 425,54'  |'0,824175'   |''                 |'0,824175'             |''                                  |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.08.2020'   |'01.08.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.09.2020'  |'01.08.2020'   |
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.09.2020'   |'01.09.2020'      |'Нет'           |'850,70'    |'0,491828'   |''                 |''                     |''                                  |'15.09.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.09.2020'   |'01.09.2020'      |'Нет'           |'574,85'    |'0,332347'   |''                 |'0,332347'             |''                                  |'01.10.2020'  |'15.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.09.2020'   |'01.09.2020'      |'Нет'           |''          |''           |'0,696237'         |''                     |''                                  |'01.10.2020'  |'15.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.09.2020'   |'01.09.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.10.2020'  |'15.09.2020'   |
        #Октябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.10.2020'   |'01.10.2020'      |'Нет'           |''          |''           |'0,824175'         |''                     |'0,824175'                          |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.10.2020'   |'01.10.2020'      |'Нет'           |'1 425,54'  |'0,824175'   |''                 |'0,824175'             |''                                  |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.10.2020'   |'01.10.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.10.2020'   |'01.10.2020'      |'Да'            |''          |''           |'0,481269'         |''                     |''                                  |'01.11.2020'  |'01.10.2020'   |