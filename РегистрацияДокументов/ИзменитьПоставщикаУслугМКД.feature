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
        И я загружаю макет "РегистрацияДокументов\ИзменитьПоставщикаУслугМКД.mxl"
    И я создаю новый документ        
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Изменить поставщика услуг МКД'
        Тогда открылось окно 'Изменить поставщика услуг МКД'
        И я нажимаю на кнопку с именем 'ФормаСоздать'
        Тогда открылось окно 'Изменить поставщика услуг МКД (создание)'
    И я заполняю форму открывшегося документа    
        И из выпадающего списка "МКД" я выбираю точное значение 'Кемерово г, Ленина пр-кт, Дом 98А'
        Тогда открылось окно 'Изменить поставщика услуг МКД (создание) *'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        | N | Вид канальности    | Поставщик   | Прибор учета                    | Точка учета                                | Услуга                   |
        | 1 | 'Одноканальный ХВ' | 'ОАО СКЭК'  | 'УУ123123                 '     | 'служебная комната_Холодное водоснабжение' | 'Холодное водоснабжение' |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонТочкаУчета"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонПоставщикПосле"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонПоставщикПосле" я выбираю по строке 'ООО ПКС'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        | N | Ед. изм. | Коэффициент ПУ | Переворот | Состояние показаний | Шкала    |
        | 1 | м3       | '1,00000'      | Нет       | Отклонены           | Основная |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗонТекущиеПоказания"
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '90,0000'
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменить поставщика услуг МКД (создание) *' в течение 20 секунд