#language: ru
@tree
Функционал: Правильность формирования документа перерасчет - операция изменение параметров расчета

Как <Роль>
Я хочу <проверить перерасчет на основании формулы расчета>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <перерасчет на основании формулы расчета>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПерерасчетНаОснованииФормулыРасчета"
        И я перепровожу созданные документы
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' и МКД '' с 'Июль' '2019' по 'Декабрь 2019'
    И я проверяю полученные результаты
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить формулу расчета точек учета'
        Тогда открылось окно 'Изменить формулу расчета точек учета'
        И в таблице "Список" я активизирую поле "Филиал"
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Изменить формулу расчета точек учета * от *'
        И я нажимаю на кнопку 'Провести'
        Тогда открылось окно '1С:Предприятие'
        И я нажимаю на кнопку 'Да'
        Тогда открылось окно 'Перерасчет (создание)'
        И я нажимаю на кнопку 'Заполнить'
        И я перехожу к закладке "Расшифровка"
        И я проверяю правильность расчета услуги отопления                   
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Абонент                       | Услуга                  | Точка учета                 | Начало периода | Конец периода | Снимаем |
            | '01.07.2019'      | 'Сидоров Валерий Андреевич'   | 'Холодное водоснабжение'| '*_Холодное водоснабжение'  |'01.07.2019'    |'01.08.2019'   | 'нет' |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления        | Объем услуги | Объем потребленный |
            | 'По формулам расчета'    | '9,000000'   | '9,000000'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Абонент                     | Услуга                  | Точка учета                      | Начало периода | Конец периода | Снимаем |
            | '01.07.2019'      | 'Сидоров Валерий Андреевич' | 'Холодное водоснабжение'| 'ввод_Холодное водоснабжение'    |'01.07.2019'    |'01.08.2019'   | 'нет' |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления| Объем услуги   | Объем потребленный |
            | 'По приборам'    | ''             | '17,000000'         |    
            И я нажимаю на кнопку 'Записать и закрыть'
            И я жду закрытия окна 'Перерасчет (создание)' в течение 20 секунд