    #language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <ЗакрытиеЛС>
    И я подготавливаю тестовые данные
        И я загружаю макет "ЗакрытиеЛС.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "Тайгинское ВКХ"' и району 'Тайгинский городской округ' и МКД 'Тайга г, Щетинкина ул, Дом № 60' с 'Январь' '2021' по 'Март 2021'
    И я создаю документ "Закрытие лицевого счета"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение                  |
        | 'Закрытие лицевого счета' |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Открытие/закрытие лс физического лица (создание)'
        И в поле 'Дата' я ввожу текст '01.04.2021  0:00:00'
        И из выпадающего списка "Абонент" я выбираю по строке 'Ноздреватых Инна Геннадьевна'
        Тогда значение поля "Организация" содержит текст "ООО "Тайгинское ВКХ""
        Тогда значение поля "Территориальный орган" содержит текст "Тайгинский городской округ"
        Тогда значение поля "Строение" содержит текст "Тайга г, Щетинкина ул, Дом № 60"
        Тогда значение поля "Помещение" содержит текст "12"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Точка учета                |Услуга                |Ед.изм. |Прибор учета |Вид канальности |
        |'ввод_ХВС + водоотведение' |'ХВС + водоотведение' |'м3'    |''           |''              |
    И я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Подключение/отключение услуг (создание) *' в течение 20 секунд