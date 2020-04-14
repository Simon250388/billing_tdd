#language: ru
@tree
@card 'https://trello.com/c/w8eNnMV2'
Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетСреднегоПерерасчетСреднего>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетСреднегоПерерасчетСреднего.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
	    Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
	    Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД 'Кемерово г, Павленко ул, Дом № 12' с 'Июль' '2019' по 'Декабрь 2019'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.11.2019'
        И в поле 'DateEnd' я ввожу текст '31.12.2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 24
        #Демчук
        #Ноябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Демчук Андрей Антонович' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Начисление'   |'По приборам'            |'Основное направление'       |'Нет'           |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'49,74'   |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Демчук Андрей Антонович' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-14,85'  |'-0,895833'  |'-0,895833'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Демчук Андрей Антонович' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-14,85'  |'-0,895833'  |'-0,895833'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Демчук Андрей Антонович' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-14,85'  |'-0,895833'  |'-0,895833'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Демчук Андрей Антонович' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Среднее по нормативу'   |'Основное направление'       |'Нет'           |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-138,94' |'-8,380000'  |'-8,380000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Демчук Андрей Антонович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Начисление'   |'По приборам'            |'Основное направление'       |'Нет'           |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'68,44'   |'2,000000'   |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления| 
        |'30.11.2019 23:59:59' |'Демчук Андрей Антонович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.07.2019'     |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-18,54'  |'-0,541667'  |'-0,541667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Демчук Андрей Антонович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-18,54'  |'-0,541667'  |'-0,541667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Демчук Андрей Антонович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-18,54'  |'-0,541667'  |'-0,541667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Демчук Андрей Антонович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Среднее по нормативу'   |'Основное направление'       |'Нет'           |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-171,44' |'-5,010000'  |'-5,010000'        |
        #Декабрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Демчук Андрей Антонович' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'14,64'   |'0,883332'   |'0,883332'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Демчук Андрей Антонович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'21,10'   |'0,616666'   |'0,616666'         |
        #Рассолов
        #Ноябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Начисление'   |'По приборам'            |'Основное направление'       |'Нет'           |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'248,70'  |'15,000000'  |'15,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.07.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-74,26'  |'-4,479167'  |'-4,479167'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-74,26'  |'-4,479167'  |'-4,479167'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Конец периода |Период начисления |
        |'30.11.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.10.2019'  |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-74,26'  |'-4,479167'  |'-4,479167'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Среднее по нормативу'   |'Основное направление'       |'Нет'           |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-694,70' |'-41,900000' |'-41,900000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Начисление'   |'По приборам'            |'Основное направление'       |'Нет'           |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'342,20'  |'10,000000'  |'10,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.07.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-92,68'  |'-2,708333'  |'-2,708333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-92,68'  |'-2,708333'  |'-2,708333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-92,68'  |'-2,708333'  |'-2,708333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Период начисления |
        |'30.11.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Перерасчет'   |'Среднее по нормативу'   |'Основное направление'       |'Нет'           |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'-857,21' |'-25,050000' |'-25,050000'       |
        #Декабрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'73,22'   |'4,416666'   |'4,416666'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                |Вид начисления |Способ начисления        |Направление использования ТУ |Сверх норматива |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Рассолов Алексей Сергеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'Нет'           |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'105,51'  |'3,083333'   |'3,083333'         |

