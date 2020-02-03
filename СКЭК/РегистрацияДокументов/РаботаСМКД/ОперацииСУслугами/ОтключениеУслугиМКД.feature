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
        И я загружаю макет "СКЭК\РегистрацияДокументов\РаботаСМКД\ОперацииСУслугами\ОтключениеУслугиМКД.mxl"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с услугами МКД'
        Тогда открылось окно 'Операции с услугами МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение                                |
        | Отключение услуги многоквартирному дому |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Отключение услуг: Операции с услугами МКД (создание)'
    И я заполняю форму открывшегося документа     
        И из выпадающего списка "МКД" я выбираю точное значение 'Кемерово г, Ленина пр-кт, Дом 98А'
        Тогда открылось окно 'Отключение услуг: Операции с услугами МКД (создание) *'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Точка учета                                |Услуга                   |Прибор учета                    |Вид канальности    |
        |'служебная комната_Холодное водоснабжение' |'Холодное водоснабжение' |'УУ123123                 '     |'Одноканальный ХВ' |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        | N | Дата последних показаний   | Предыдущие показания |
        | 1 | '28.06.2019'               | '1,0000'             |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗонТекущиеПоказания"
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '60,0000'
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
    И я провожу документ 
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Отключение услуг: Операции с услугами МКД (создание) *' в течение 20 секунд