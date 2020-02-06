#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <проверить расчет по формулам, когда в формуле участвует несколько услуг>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПотребленияМеждуРазделеннымиЛС.mxl"
    И я перепровжу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"   
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' с 'Февраль' '2020' по 'Март 2020'     
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.02.2020'
        И в поле 'DateEnd' я ввожу текст '29.02.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И в таблице "Список" я перехожу к строке:
        | Период                | Абонент                    | Услуга         | Точка учета        |
        | '29.02.2020 23:59:59' | 'Ложкин Владимир Иванович' | 'Отопление'    | 'подвал_Отопление' |
        И в таблице "Список" текущая строка равна:
        | Способ начисления   | Объем потребленный  | Объем услуги  |
        | 'По нормативу'      | '0,050000'          | '0,050000'    |
        И в таблице "Список" я перехожу к строке:
        | Период                | Абонент                         |  Услуга        | Точка учета        |
        | '29.02.2020 23:59:59' | 'Кузнецова Зинаида Григорьевна' | 'Отопление'    | 'подвал_Отопление' |
        И в таблице "Список" текущая строка равна:
        | Способ начисления   | Объем потребленный  | Объем услуги |
        | 'По нормативу'      | '2,44749'           | '1,82312'    |