#language: ru
@tree
@card 'https://trello.com/c/WvJIGDKT'
Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <СменаСобственникаЛС>
    И я подготавливаю тестовые данные
        И я загружаю макет "СменаСобственникаЛС.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
	    Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
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
    И Я запускаю выполнение начислений по организации 'ООО "ПКС"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Декабрь 2019'    
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение                          |
        | Смена собственника лицевого счета |
        И в таблице "Списокопераций" я выбираю текущую строку
    И я заполняю форму открывшегося документа
        И из выпадающего списка "Абонент" я выбираю по строке 'Скударнов Александр Кириллович'
        И из выпадающего списка "Контрагент" я выбираю по строке 'Яковлева Татьяна Филимоновна'
        И из выпадающего списка "Контролер" я выбираю по строке 'Куколева Т.А. техник'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        | Точка учета                  | Услуга                  | Прибор учета |
        | 'ввод_Горячее водоснабжение' | 'Горячее водоснабжение' | '19614346'   |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонТочкаУчета"
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Предыдущие показания |Значение тарифа |
        | '100,0000'          |'81,98'         |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '132,0000'
    И я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Смена собственника №00000000001 от *' в течение 20 секунд
