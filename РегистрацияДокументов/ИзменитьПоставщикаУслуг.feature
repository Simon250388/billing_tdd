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
        И я загружаю макет "РегистрацияДокументов\ИзменитьПоставщикаУслуг.mxl"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить поставщика услуг'
        Тогда открылось окно 'Изменить поставщика услуг'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Изменить поставщика услуг (создание)'
    И я заполняю форму открывшегося документа
        И из выпадающего списка "Абонент" я выбираю по строке 'Бурунов Сергей '
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Услуга      |Ед.изм. |Поставщик  |Прибор учета                   |
        |'Отопление' |'Гкал'  |'ОАО СКЭК' |'8465651                  '    |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоныПоставщикПосле2" я выбираю по строке 'ООО ПКС'
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '300,0000'
    И я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменить поставщика услуг (создание) *' в течение 20 секунд

