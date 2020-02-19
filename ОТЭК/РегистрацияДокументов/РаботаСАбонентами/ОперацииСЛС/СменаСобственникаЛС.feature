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
        И я загружаю макет "ОТЭК\РегистрацияДокументов\РаботаСАбонентами\ОперацииСЛС\СменаСобственникаЛС"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
            | Значение                          |
            | Смена собственника лицевого счета |
    И я заполняю форму открывшегося документа
        И из выпадающего списка "Абонент" я выбираю по строке 'Казакова  Любовь  Ивановна '
        И из выпадающего списка "Контрагент" я выбираю по строке 'Баранов Евгений Сергеевич'
        И из выпадающего списка "Контролер" я выбираю по строке 'Куколева Т.А. техник'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
            | N | Вид канальности  | Ед.изм. | Прибор учета | Точка учета                         | Услуга                |
            | 1 | Одноканальный ХВ | м3      | '19500666'   | ввод_Горячее водоснабжение_Головная | Горячее водоснабжение |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонТочкаУчета"
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
            | N | Ед. изм. |ТекущиеПоказания |Значение тарифа | Переворот | Состояние показаний | Шкала    | Сумма     |
            | 1 | м3       | '20'            |'81,98'         | Нет       | Приняты             | Основная | '1639,60' |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '300,0000'
    И я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Смена собственника №00000000001 от *' в течение 20 секунд
