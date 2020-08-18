﻿#language: ru
@tree
@card "https://trello.com/c/MyO1fZKP"
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетСуммыСПовышКоэф>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетСуммыСПовышКоэф.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июнь' '2020' по 'Июль 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        #Июнь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Начало периода |Конец периода |Сумма по повышенному коэффициенту |Повыщающий коэффициент |
        |'30.06.2020 23:59:59' |'Петухов Владимир Петрович' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'18,660'        |'01.06.2020'   |'01.06.2020'      |'105,83' |'5,671340'   |''                 |'01.06.2020'   |'01.07.2020'  |''                                |'1,00'                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Начало периода |Конец периода |Сумма по повышенному коэффициенту |Повыщающий коэффициент |
        |'30.06.2020 23:59:59' |'Петухов Владимир Петрович' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'18,660'        |'01.06.2020'   |'01.06.2020'      |''       |''           |'34,023900'        |'01.06.2020'   |'01.07.2020'  |''                                |'1,00'                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Начало периода |Конец периода |Сумма по повышенному коэффициенту |Повыщающий коэффициент |
        |'30.06.2020 23:59:59' |'Петухов Владимир Петрович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'18,660'        |'01.06.2020'   |'01.06.2020'      |''       |''           |'4,720000'         |'01.06.2020'   |'01.07.2020'  |''                                |'1,50'                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Начало периода |Конец периода |Сумма по повышенному коэффициенту |Повыщающий коэффициент |
        |'30.06.2020 23:59:59' |'Петухов Владимир Петрович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'18,660'        |'01.06.2020'   |'01.06.2020'      |'132,12' |'4,720000'   |''                 |'01.06.2020'   |'01.07.2020'  |'44,04'                           |'1,50'                 |
        #Июль 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Начало периода |Конец периода |Сумма по повышенному коэффициенту |Повыщающий коэффициент |
        |'31.07.2020 23:59:59' |'Петухов Владимир Петрович' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |'102,41' |'5,488394'   |''                 |'01.07.2020'   |'31.07.2020'  |''                                |'1,00'                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Начало периода |Конец периода |Сумма по повышенному коэффициенту |Повыщающий коэффициент |
        |'31.07.2020 23:59:59' |'Петухов Владимир Петрович' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |'34,023900'        |'01.07.2020'   |'31.07.2020'  |''                                |'1,00'                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Начало периода |Конец периода |Сумма по повышенному коэффициенту |Повыщающий коэффициент |
        |'31.07.2020 23:59:59' |'Петухов Владимир Петрович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |'4,720000'         |'01.07.2020'   |'01.08.2020'  |''                                |'1,50'                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Начало периода |Конец периода |Сумма по повышенному коэффициенту |Повыщающий коэффициент |
        |'31.07.2020 23:59:59' |'Петухов Владимир Петрович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |'132,12' |'4,720000'   |''                 |'01.07.2020'   |'01.08.2020'  |'44,04'                           |'1,50'                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Начало периода |Конец периода |Сумма по повышенному коэффициенту |Повыщающий коэффициент |
        |'31.07.2020 23:59:59' |'Петухов Владимир Петрович' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |'3,41'   |'0,182946'   |''                 |'31.07.2020'   |'01.08.2020'  |''                                |'1,00'                 |