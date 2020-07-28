    #language: ru
    @tree
    @card "https://trello.com/c/IeaFWlpV"
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПолива112>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПолива112.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2020' по 'Октябрь 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        #Июль 21.07-31.07
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'дом_Холодное водоснабжение'    |'По нормативу'    |'Основное направление'       |''                |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |'5,406452'         |''                                |'31.07.2020'  |'21.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''                |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |'2,235092'         |''                                |'31.07.2020'  |'21.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'расчетная_ХВС + водоотведение' |'Расчетный'       |'Расчетная'                  |''                |'18,660'        |'01.07.2020'   |'01.07.2020'      |'195,45' |'7,770576'   |''                 |'50,45'                           |'31.07.2020'  |'21.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков' |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |'0,129032'         |''                                |'31.07.2020'  |'21.07.2020'   |
        #Июль 31.07-01.08
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'дом_Холодное водоснабжение'    |'По нормативу'    |'Основное направление'       |''                |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |'0,540645'         |''                                |'01.08.2020'  |'31.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''                |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |'0,223509'         |''                                |'01.08.2020'  |'31.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'расчетная_ХВС + водоотведение' |'Расчетный'       |'Расчетная'                  |''                |'18,660'        |'01.07.2020'   |'01.07.2020'      |'19,54'  |'0,777057'   |''                 |'5,04'                            |'01.08.2020'  |'31.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков' |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |'0,012903'         |''                                |'01.08.2020'  |'31.07.2020'   |
        #Август
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'дом_Холодное водоснабжение'    |'По нормативу'    |'Основное направление'       |''                |'18,660'        |'01.08.2020'   |'01.08.2020'      |''       |''           |'16,760000'        |''                                |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'расчетная_ХВС + водоотведение' |'Расчетный'       |'Расчетная'                  |''                |'18,660'        |'01.08.2020'   |'01.08.2020'      |'605,87' |'24,088898'  |''                 |'156,37'                          |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков' |'18,660'        |'01.08.2020'   |'01.08.2020'      |''       |''           |'0,400000'         |''                                |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''                |'18,660'        |'01.08.2020'   |'01.08.2020'      |''       |''           |'6,928898'         |''                                |'01.09.2020'  |'01.08.2020'   |
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'дом_Холодное водоснабжение'    |'По нормативу'    |'Основное направление'       |''                |'18,660'        |'01.09.2020'   |'01.09.2020'      |''       |''           |'16,760000'        |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'расчетная_ХВС + водоотведение' |'Расчетный'       |'Расчетная'                  |''                |'18,660'        |'01.09.2020'   |'01.09.2020'      |'605,87' |'24,088898'  |''                 |'156,37'                          |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков' |'18,660'        |'01.09.2020'   |'01.09.2020'      |''       |''           |'0,400000'         |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''                |'18,660'        |'01.09.2020'   |'01.09.2020'      |''       |''           |'6,928898'         |''                                |'01.10.2020'  |'01.09.2020'   |
        #Октябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'дом_Холодное водоснабжение'    |'По нормативу'    |'Основное направление'       |''                |'18,660'        |'01.10.2020'   |'01.10.2020'      |''       |''           |'16,760000'        |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'расчетная_ХВС + водоотведение' |'Расчетный'       |'Расчетная'                  |''                |'18,660'        |'01.10.2020'   |'01.10.2020'      |'605,87' |'24,088898'  |''                 |'156,37'                          |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков' |'18,660'        |'01.10.2020'   |'01.10.2020'      |''       |''           |'0,400000'         |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Бедарева Елена Николаевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''                |'18,660'        |'01.10.2020'   |'01.10.2020'      |''       |''           |'6,928898'         |''                                |'01.11.2020'  |'01.10.2020'   |
