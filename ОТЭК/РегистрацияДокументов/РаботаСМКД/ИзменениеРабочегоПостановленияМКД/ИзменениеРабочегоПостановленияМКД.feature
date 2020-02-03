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
            И я загружаю макет "ОТЭК\РегистрацияДокументов\РаботаСМКД\ИзменениеРабочегоПостановленияМКД\ИзменениеРабочегоПостановленияМКД.mxl"
    И я создаю новый документ          
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Изменение рабочего постановления МКД'
        Тогда открылось окно 'Изменение рабочего постановления МКД'
        И я нажимаю на кнопку с именем 'ФормаСоздать'
        Тогда открылось окно 'Изменение рабочего постановления МКД (создание)'
        И в поле 'Дата' я ввожу текст '30.01.2020  0:00:00'
    И я заполняю форму открывшегося документа
        И из выпадающего списка "МКД" я выбираю точное значение 'Глазов г., Кирова ул, Дом № 99А'
        И из выпадающего списка "Постановление" я выбираю точное значение 'Постановление № 77 Правительства г.Москвы'
    И я провожу документ      
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменение рабочего постановления МКД (создание) *' в течение 20 секунд