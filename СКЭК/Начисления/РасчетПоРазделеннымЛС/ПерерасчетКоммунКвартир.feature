    #language: ru
    @tree
    @card 'https://trello.com/c/mFKqy1ok'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <ПерерасчетКоммунКвартир>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПерерасчетКоммунКвартир.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
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
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД 'Кемерово г, Рукавишникова ул, Дом № 36' с 'Январь' '2020' по 'Август 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.08.2020'
        И в поле 'DateEnd' я ввожу текст '31.08.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 22
        #Август
        #Блинов
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Холодное водоснабжение' |'ввод'                     |'Начисление'   |'По приборам'    |'Основное направление'       |'Нет'           |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,010000'  |'12,500000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Холодное водоснабжение' |'ввод'                     |'Начисление'   |'По приборам'    |'Основное направление'       |'Да'           |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'7,4900000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Водоотведение'          |'ввод_ГВС + водоотведение' |'Начисление'   |'По приборам'     |'Основное направление'       |'Нет'           |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'20,000000'  |'20,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Холодное водоснабжение' |'ввод'                     |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.05.2020'  |'01.04.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-5,666667'  |'-5,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Водоотведение'          |'ввод_ГВС + водоотведение' |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.05.2020'  |'01.04.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-9,333333'  |'-9,333333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Холодное водоснабжение' |'ввод'                     |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-5,666667'  |'-5,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Водоотведение'          |'ввод_ГВС + водоотведение' |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-9,333333'  |'-9,333333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Холодное водоснабжение' |'ввод'                     |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-5,666667'  |'-5,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Водоотведение'          |'ввод_ГВС + водоотведение' |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-9,333333'  |'-9,333333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Холодное водоснабжение' |'ввод'                     |'Перерасчет'   |'Среднее по нормативу'      |'Основное направление'       |'Нет'           |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-5,010000'  |'-5,010000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинов Павел Петрович' |'Водоотведение'          |'ввод_ГВС + водоотведение' |'Перерасчет'   |'Среднее по нормативу'      |'Основное направление'       |'Нет'           |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-8,380000'  |'-8,380000'        |
        #Блинкова
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Водоотведение'          |'ввод      ХВС' |'Начисление'   |'По приборам'    |'Основное направление'       |'Нет'           |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'20,000000'  |'20,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Холодное водоснабжение' |'ввод      ХВС' |'Начисление'   |'По приборам'    |'Основное направление'       |'Нет'           |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,010000'  |'12,500000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Холодное водоснабжение' |'ввод      ХВС' |'Начисление'   |'По приборам'    |'Основное направление'       |'Да'           |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'7,4900000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Водоотведение'          |'ввод      ХВС' |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.05.2020'  |'01.04.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-9,333333'  |'-9,333333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Холодное водоснабжение' |'ввод      ХВС' |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.05.2020'  |'01.04.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-5,666667'  |'-5,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Водоотведение'          |'ввод      ХВС' |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-9,333333'  |'-9,333333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Холодное водоснабжение' |'ввод      ХВС' |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-5,666667'  |'-5,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Водоотведение'          |'ввод      ХВС' |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-9,333333'  |'-9,333333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Холодное водоснабжение' |'ввод      ХВС' |'Перерасчет'   |'Начисление по среднему'      |'Основное направление'       |'Нет'           |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-5,666667'  |'-5,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Водоотведение'          |'ввод      ХВС' |'Перерасчет'   |'Среднее по нормативу'      |'Основное направление'       |'Нет'           |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-8,380000'  |'-8,380000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета     |Вид начисления |Способ начисления |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Блинкова Ирина Петровна' |'Холодное водоснабжение' |'ввод      ХВС' |'Перерасчет'   |'Среднее по нормативу'      |'Основное направление'       |'Нет'           |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-5,010000'  |'-5,010000'        |