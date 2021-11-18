    #language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <ИзменениеЗначенПлощади>
    И я подготавливаю тестовые данные
        И я загружаю макет "ИзменениеЗначенПлощади.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Тайгинский городской округ' и МКД 'Тайга г, Щетинкина ул, Дом № 60' с 'Январь' '2021' по 'Март 2021'
    И я создаю документ "Изменение значения площади"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить значение площади'
        Тогда открылось окно 'Документы Установить значение площади: Изменить значение площади'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать1'
        Тогда открылось окно 'Установить значение площади: Изменить значение площади (создание)'
        И в поле 'от' я ввожу текст '01.04.2021  0:00:00'
        И из выпадающего списка "Абонент" я выбираю по строке 'Ноздреватых Инна Геннадьевна'
        Тогда значение поля "Организация" содержит текст "ОАО "СКЭК""
        Тогда значение поля "Территориальный орган" содержит текст "Тайгинский городской округ"
        Тогда значение поля "Строение" содержит текст "Тайга г, Щетинкина ул, Дом № 60"
        Тогда значение поля "Помещение" содержит текст "15"
        И в таблице "Площади" я перехожу к строке:
        |Вид площади               |Значение, м2 |
        |'Общая площадь помещения' |'42,30000'   |
        И в таблице "Площади" в поле 'Значение, м2' я ввожу текст '45,00000'
    И я провожу и записываю документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Установить значение площади: Изменить значение площади (создание) *' в течение 20 секунд
