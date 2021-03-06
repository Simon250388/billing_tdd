#language: ru
    @tree
    Функционал: <РегистрацияПоказанийСНаличиемЗакрытогоЛС>
    "https://trello.com/c/h5NAFlha"
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РегистрацияПоказанийСНаличиемЗакрытогоЛС>
    И я подготавливаю тестовые данные
        И я загружаю макет "РегистрацияПоказанийСНаличиемЗакрытогоЛС.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Регистрация показаний абонента: Регистрация показаний абонента (создание)'
    И я заполняю форму открывшегося документа    
        И из выпадающего списка "Абонент" я выбираю по строке 'Зимнухов Александр Викторович'
        И из выпадающего списка "Источник показаний" я выбираю по строке 'Касса'
        Тогда в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" количество строк "равно" 1
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Точка учета                   |Услуга                   |Ед.изм. |Прибор учета                 |Вид канальности    |
        |'ввод_Холодное водоснабжение' |'Холодное водоснабжение' |'м3'    |'1011244350003            '  |'Одноканальный ХВ' |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '18000,000000'
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Регистрация показаний абонента: Регистрация показаний абонента (создание) *' в течение 20 секунд    