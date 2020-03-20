#language: ru
    @tree
    Функционал: <описание фичи>
    "https://trello.com/c/y3cbJVga"
    Как <Роль>
    Я хочу <>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетОтопленияБезОДПУ>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетОтопленияБезОДПУ.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
	    Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
	    Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' и МКД 'Березовский г., Мира ул, Дом № 18' с 'Январь' '2020' по 'Январь 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Добрынин Максим Анатольевич'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'         
        Тогда в таблице "Список" количество строк "равно" 2
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                       |Услуга      |Точка учета          |Вид начисления   |Способ начисления |Сверх норматива |
        |'31.01.2020 23:59:59' |'Нет'         |'Добрынин Максим Анатольевич' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |'Нет'           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,702132'   |'0,702132'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                       |Услуга      |Точка учета          |Вид начисления   |Способ начисления |Сверх норматива |
        |'31.01.2020 23:59:59' |'Да'          |'Добрынин Максим Анатольевич' |'Отопление' |''                   |'Начисление ОДН' |''                |'Нет'           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,054610'   |'0,072814'         |