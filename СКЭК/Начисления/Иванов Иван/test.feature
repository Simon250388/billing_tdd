#language: ru
@tree
Функционал: <описание фичи>
Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>			
    И я подготавливаю тестовые данные
        И я загружаю макет "СКЭК\Начисления\Иванов Иван\ИсходныеДанные.mxl"
        И я перепровожу загруженные данные
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
            Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И я выполняю начисления с Октябрь 2019 по Декабрь 2019
        И В командном интерфейсе я выбираю 'Расчет начислений' 'Выполнение начислений'
        Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
        И я нажимаю кнопку выбора у поля "Месяц с"
        Тогда открылось окно 'Выбор периода'
        И в поле 'ВыбираемыйПериод' я ввожу текст '2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Октябрь'
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
        И из выпадающего списка "Организация" я выбираю по строке 'ОАО "СКЭК"'
        И из выпадающего списка "Территориальный орган" я выбираю по строке 'Березовский городской округ'
        И я изменяю флаг 'ОтборПоДому'
        И Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок
        И в поле "Месяц с" я увеличиваю значение
        И Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок
        И в поле "Месяц с" я увеличиваю значение
        И Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        #Октябрь 2019
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                |Абонент                |Услуга      |Точка учета      |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.10.2019 23:59:59' |'Березовский г., Барзасская ул, Дом 10' |'Иванов Иван Иванович' |'Отопление' |'ввод_Отопление' |'По нормативу'    |'01.10.2019'   |'01.10.2019'      |'01.10.2019'   |'10.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,785262'   |'0,785262'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                |Абонент                |Услуга      |Точка учета      |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.10.2019 23:59:59' |'Березовский г., Барзасская ул, Дом 10' |'Иванов Иван Иванович' |'Отопление' |'ввод_Отопление' |'По приборам'     |'01.10.2019'   |'01.10.2019'      |'10.10.2019'   |'01.11.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,500000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                |Абонент                |Услуга      |Точка учета      |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.10.2019 23:59:59' |'Березовский г., Барзасская ул, Дом 10' |'Иванов Иван Иванович' |'Отопление' |'ввод_Отопление' |'Среднее по нормативу'    |'01.10.2019'   |'01.10.2019'      |'10.10.2019'   |'01.11.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,919530'   |''                 |
        #Ноябрь 2019
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                |Абонент                |Услуга      |Точка учета      |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'30.11.2019 23:59:59' |'Березовский г., Барзасская ул, Дом 10' |'Иванов Иван Иванович' |'Отопление' |'ввод_Отопление' |'По приборам'     |'01.11.2019'   |'01.11.2019'      |'01.11.2019'   |'01.12.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                |Абонент                |Услуга      |Точка учета      |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'30.11.2019 23:59:59' |'Березовский г., Барзасская ул, Дом 10' |'Иванов Иван Иванович' |'Отопление' |'ввод_Отопление' |'Среднее по нормативу'    |'01.11.2019'   |'01.11.2019'      |'01.11.2019'   |'01.12.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,704793'   |''                 |
        #Декабрь 2019
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                |Абонент                |Услуга      |Точка учета      |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.12.2019 23:59:59' |'Березовский г., Барзасская ул, Дом 10' |'Иванов Иван Иванович' |'Отопление' |'ввод_Отопление' |'По приборам'     |'01.12.2019'   |'01.12.2019'      |'01.12.2019'   |'01.01.2020'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                |Абонент                |Услуга      |Точка учета      |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.12.2019 23:59:59' |'Березовский г., Барзасская ул, Дом 10' |'Иванов Иван Иванович' |'Отопление' |'ввод_Отопление' |'Среднее по нормативу'    |'01.12.2019'   |'01.12.2019'      |'01.12.2019'   |'01.01.2020'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,704793'   |''                 |
    И я выполняю очистку после теста 
        И я закрываю сеанс TESTCLIENT
        И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Истина)"
        И я выполняю код встроенного языка на сервере "УдалитьДанныеИнформационнойБазы()"
        И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Ложь)"