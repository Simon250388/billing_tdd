#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ПодключениеУслугиМКД>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПодключениеУслугиМКД.mxl"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с услугами МКД'
        Тогда открылось окно 'Операции с услугами МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Подключение услуг: Операции с услугами МКД (создание)'
    И я заполняю форму открывшегося документа
        И из выпадающего списка "МКД" я выбираю по строке 'Кемерово г, Авроры ул, Дом 14'
        Тогда открылось окно 'Подключение услуг: Операции с услугами МКД (создание) *'
        И в таблице "ТочкиУчета" я нажимаю на кнопку с именем 'ТочкиУчетаДобавить'
        И в таблице "ТочкиУчета" из выпадающего списка с именем "ТочкиУчетаУслуга" я выбираю по строке 'Отопление'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчета" из выпадающего списка "Поставщик" я выбираю по строке 'ОАО СКЭК'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчета" из выпадающего списка "Распределять" я выбираю точное значение 'Да'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчета" из выпадающего списка "Расположение" я выбираю по строке 'ввод'
        Тогда открылось окно 'Подключение услуг: Операции с услугами МКД (создание) *'
        И в таблице "ТочкиУчета" я завершаю редактирование строки
        И в таблице "ТочкиУчета" я активизирую поле "Тип узла учета"
        И в таблице "ТочкиУчета" я выбираю текущую строку
        И в таблице "ТочкиУчета" из выпадающего списка "Тип узла учета" я выбираю по строке 'УУ1'
        И в таблице "ТочкиУчета" я завершаю редактирование строки
        И я перехожу к закладке "Виды благоустройства, тарифные категории"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории5" я активизирую поле "Тарифная категория"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории5" я выбираю текущую строку
        И в таблице "ВидыБлагоустройстваТарифныеКатегории5" из выпадающего списка "Тарифная категория" я выбираю по строке 'мкд благоустроенное'
        И в таблице "ВидыБлагоустройстваТарифныеКатегории5" я завершаю редактирование строки
    И я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Подключение услуг: Операции с услугами МКД (создание) *' в течение 20 секунд