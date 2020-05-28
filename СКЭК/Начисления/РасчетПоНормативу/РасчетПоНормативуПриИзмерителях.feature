#language: ru
@tree
@card "https://trello.com/c/72LE1BlN"
Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/8QGTZFww"

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоНормативуПриИзмерителях>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоНормативуПриИзмерителях.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
        Тогда открылось окно 'Подключение/отключение услуг'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "Тайгинское ВКХ"' и району 'Тайгинский городской округ' и МКД '' с 'Июль' '2019' по 'Август 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        #июль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''                 |''           |'01.07.2019'   |'23.07.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'23,788387'  |'23,788387'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''                 |''           |'01.07.2019'   |'23.07.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'23,788387'  |'23,788387'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков'  |''           |'01.07.2019'   |'23.07.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,141935'   |'0,141935'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                                            |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'авто                                              '   |'По нормативу'    |'мытье автомобиля'           |'количество машин' |''           |'01.07.2019'   |'23.07.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,283871'   |'0,283871'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'расчетная_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |''                 |'140827853'  |'23.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'7,000000'   |'7,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                                          |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'2-ой ПУ                                           ' |'По приборам'     |'Основное направление'       |''                 |'1800298992               ' |'23.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''                 |''           |'23.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'9,731613'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''                 |''           |'23.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'9,731613'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Водоотведение'          |'расчетная_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |''                 |'140827853'  |'23.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'7,000000'   |'7,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                                          |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Водоотведение'          |'2-ой ПУ                                           ' |'По приборам'     |'Основное направление'       |''                 |'1800298992               ' |'23.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                                            |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'баня                                              '   |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков'  |''           |'23.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,058065'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'авто'                          |'По нормативу'    |'мытье автомобиля'           |'количество машин' |''           |'23.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,116129'         |
        #август
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'расчетная_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |''                 |'140827853'  |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'7,000000'   |'7,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'полив_Холодное водоснабжение'  |'По нормативу'    |'полив из водопровода'       |''                 |''           |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'45,858300'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                                          |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'2-ой ПУ                                           ' |'По приборам'     |'Основное направление'       |''                 |'1800298992               ' |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''                 |''           |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'33,520000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''                 |''           |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'33,520000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Водоотведение'          |'расчетная_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |''                 |'140827853'  |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'7,000000'   |'7,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                                          |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Водоотведение'          |'2-ой ПУ                                           ' |'По приборам'     |'Основное направление'       |''                 |'1800298992               ' |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                                           |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'баня                                              '  |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков'  |''           |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,200000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель         |Прибор учета |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'авто'                          |'По нормативу'    |'мытье автомобиля'           |'количество машин' |''           |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,400000'         |



