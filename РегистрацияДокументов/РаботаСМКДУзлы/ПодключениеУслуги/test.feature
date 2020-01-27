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
        И я загружаю макет "РегистрацияДокументов\РаботаСМКДУзлы\ПодключениеУслуги\ИсходныеДанные.mxl"
    И я создаю новый документ         
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с услугами МКД'
        Тогда открылось окно 'Операции с услугами МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Подключение услуг: Операции с услугами МКД (создание)'
    И я заполняю форму открывшегося документа      
        И из выпадающего списка "МКД" я выбираю точное значение 'Глазов г., Кирова ул, Дом № 99А'
        Тогда открылось окно 'Подключение услуг: Операции с услугами МКД (создание) *'
        И в таблице "ТочкиУчета" я нажимаю на кнопку с именем 'ТочкиУчетаДобавить'
        И в таблице "ТочкиУчета" из выпадающего списка с именем "ТочкиУчетаУслуга" я выбираю точное значение 'Холодное водоснабжение (ХВС)'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчета" я активизирую поле "Расположение"
        И в таблице "ТочкиУчета" из выпадающего списка "Расположение" я выбираю по строке 'ТУ6'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчета" я активизирую поле "Тип узла учета"
        И в таблице "ТочкиУчета" из выпадающего списка "Тип узла учета" я выбираю по строке 'Тв-ль1+Р-р2+Т-р1'
        И я добавляю новый прибор учета с учетом узла Тв-ль1+Р-р2+Т-р1
        И в таблице "ТочкиУчета" я завершаю редактирование строки
        И я перехожу к закладке "Виды благоустройства, тарифные категории"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории5" я активизирую поле "Тарифная категория"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории5" я выбираю текущую строку
        И в таблице "ВидыБлагоустройстваТарифныеКатегории5" из выпадающего списка "Тарифная категория" я выбираю по строке 'Потребители Глазов'
        И я перехожу к закладке "Услуги"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории5" я завершаю редактирование строки
    И я провожу документ        
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Подключение услуг: Операции с услугами МКД (создание) *' в течение 20 секунд
