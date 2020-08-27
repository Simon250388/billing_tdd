    #language: ru
    @tree
    @card 'https://trello.com/c/GnRG6Yns'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <НулевЗначПриУстановКолвоПропПрож>
    И я подготавливаю тестовые данные
        И я загружаю макет "НулевЗначПриУстановКолвоПропПрож.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И я провожу изменить кол-во прописанных
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить количество прописанных'
        Тогда открылось окно 'Изменить количество прописанных'
        И в таблице "Список" я перехожу к строке:
        |Дата                  |Дата фактического события |Номер         |Строение                             |Помещение |Абонент                   |Лицевой счет |
        |'26.08.2020 16:30:33' |'01.08.2020 0:00:00'      |'00000000006' |'Кемерово г, Кондомская ул, Дом № 3' |'1'       |'Струкова Яна Николаевна' |'0200000083' |
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Изменить количество прописанных * от *'
        И в поле 'Количество прописанных' я ввожу текст '0'
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменить количество прописанных * от * *' в течение 20 секунд
    И я провожу изменить кол-во проживающих
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить количество проживающих'
        Тогда открылось окно 'Изменить количество проживающих'
        И в таблице "Список" я перехожу к строке:
        |Дата                  |Дата фактического события |Номер         |Строение                             |Помещение |Абонент                   |
        |'26.08.2020 16:33:26' |'01.08.2020 0:00:00'      |'00000000003' |'Кемерово г, Кондомская ул, Дом № 3' |'1'       |'Струкова Яна Николаевна' |
        Тогда открылось окно 'Изменить количество проживающих * от *'
        И в поле 'Количество проживающих' я ввожу текст '0'
    И я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменить количество проживающих * от * *' в течение 20 секунд    
