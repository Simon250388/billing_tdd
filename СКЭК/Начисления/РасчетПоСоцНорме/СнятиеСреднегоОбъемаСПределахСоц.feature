#language: ru
@tree
Функционал: <описание фичи>
    "https://trello.com/c/08DXtdZm"
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <СнятиеСреднегоОбъемаСПределахСоц>
    И я подготавливаю тестовые данные
        И я загружаю макет "СнятиеСреднегоОбъемаСПределахСоц"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "Тайгинское ВКХ"' и району 'Тайгинский городской округ' и МКД '' с 'Июль' '2019' по 'Декабрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'   
        Тогда в таблице "Список" количество строк "равно" 41
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |'16,760000'            |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'16,760000'  |'23,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |'8,380000'             |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'8,380000'   |'23,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,380000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,380000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Да'            |''                     |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'6,240000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Да'            |''                     |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'14,620000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |'10,000000'            |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'10,000000'  |'10,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |'8,380000'             |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'8,380000'   |'10,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,380000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,380000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение'      |'Начисление'   |'По нормативу'    |'полив из водопровода'       |''           |'Нет'           |''                     |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'91,724040'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Да'            |''                     |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,620000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |''                     |'30.09.2019'  |'01.09.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |''                     |'30.09.2019'  |'01.09.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'30.09.2019'  |'01.09.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,100667'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'30.09.2019'  |'01.09.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,100667'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение'      |'Начисление'   |'По нормативу'    |'полив из водопровода'       |''           |'Нет'           |''                     |'30.09.2019'  |'01.09.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'85,806360'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |'12,000000'            |'01.10.2019'  |'30.09.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'12,000000'  |'12,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |'8,380000'             |'01.10.2019'  |'30.09.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'8,380000'   |'12,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.10.2019'  |'30.09.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,279333'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.10.2019'  |'30.09.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,279333'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Да'            |''                     |'01.10.2019'  |'30.09.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,620000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |'16,760000'            |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'16,760000'  |'19,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |'8,380000'             |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'8,380000'   |'19,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,380000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,380000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Да'            |''                     |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,240000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Да'            |''                     |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'10,620000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'Расчетный'       |'Основное направление'       |'3164397а15' |'Нет'           |'8,380000'             |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'8,380000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,380000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,380000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |'16,760000'            |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'16,760000'  |'19,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Нет'           |'8,380000'             |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'8,380000'   |'19,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,380000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'           |'Начисление'   |'По нормативу'    |'Основное направление'       |''           |'Нет'           |''                     |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,380000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Петровская Марина Александровна' |'Водоотведение'          |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Да'            |''                     |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,240000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Услуга                   |Точка учета                          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Петровская Марина Александровна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение_расчетная' |'Начисление'   |'По приборам'     |'Основное направление'       |'3164397а15' |'Да'            |''                     |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'10,620000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Точка учета                          |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Начало периода |Конец периода |
        |'31.12.2019 23:59:59' |'Петровская Марина Александровна' |'ввод_ХВС + водоотведение_расчетная' |'Перерасчет'   |'Начисление по среднему' |''                           |'Да'            |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-8,380000'  |'-16,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Точка учета                          |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Начало периода |Конец периода |
        |'31.12.2019 23:59:59' |'Петровская Марина Александровна' |'ввод_ХВС + водоотведение_расчетная' |'Перерасчет'   |'Начисление по среднему' |''                           |'Да'            |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-7,620000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Точка учета                          |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Начало периода |Конец периода |
        |'31.12.2019 23:59:59' |'Петровская Марина Александровна' |'ввод_ХВС + водоотведение_расчетная' |'Перерасчет'   |'Начисление по среднему' |''                           |'Да'            |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-8,380000'  |'-16,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                           |Точка учета                          |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Начало периода |Конец периода |
        |'31.12.2019 23:59:59' |'Петровская Марина Александровна' |'ввод_ХВС + водоотведение_расчетная' |'Перерасчет'   |'Начисление по среднему' |''                           |'Да'            |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-7,620000'  |''                 |