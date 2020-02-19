#language: ru
@tree
Функционал: Правильность формирования документа перерасчет - операция изменение параметров расчета

Как <Роль>
Я хочу <Проверить перерасчет в случае корректировки показаний>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <перерасчет в случае корректировки показаний>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПерерасчетВСлучаеКорректировкиПоказаний"
        И я перепровожу созданные документы
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' и МКД '' с 'Июль' '2019' по 'Ноябрь 2019'
    И я проверяю полученные результаты
        И В командном интерфейсе я выбираю 'Расчет начислений' 'Перерасчет'
        Тогда открылось окно 'Перерасчет'
        И в таблице "Список" я перехожу к первой строке
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Перерасчет * от *'
        И я нажимаю на кнопку 'Заполнить'
        И я перехожу к закладке "Расшифровка"
        Тогда в таблице "Расшифровка" количество строк "равно" 13 
        И я проверяю правильность расчета услуги отопления                   
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга       | Точка учета         | Начало периода | Конец периода | Снимаем |
            | '01.08.2019'        | 'Отопление'| 'ввод_Отопление'    |'01.08.2019'    |'01.09.2019'   |  'нет'   |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По нормативу'    | '2,207790'   | '2,207790'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга      | Точка учета      | Начало периода | Конец периода |Снимаем  |
            | '01.09.2019'      | 'Отопление' | 'ввод_Отопление' | '01.09.2019'   | '15.09.2019'  |'нет'       |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По нормативу'    | '1,030302'   | '1,030302'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга      | Точка учета      | Начало периода | Конец периода |Снимаем |
            | '01.09.2019'      | 'Отопление' | 'ввод_Отопление' | '15.09.2019'   | '01.10.2019'  |'нет' |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По нормативу'    | '1,177488'   | '1,177488'         |                    
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга      | Точка учета      | Начало периода | Конец периода |Снимаем |
            | '01.10.2019'      | 'Отопление' | 'ввод_Отопление' | '01.10.2019'   | '01.11.2019'  |'нет' |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По нормативу'    | '2,207790'   | '2,207790'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга      | Точка учета      | Начало периода | Конец периода |Снимаем |
            | '01.11.2019'      | 'Отопление' | 'ввод_Отопление' | '01.11.2019'   | '01.12.2019'  |'нет' |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По нормативу'    | '2,207790'   | '2,207790'         |
        И я проверяю правильность расчета услуги хвс
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.08.2019'      | 'Холодное водоснабжение'  | 'ванная_ХВС + водоотведение'  | '01.08.2019'   | '01.09.2019'  | 'нет' |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По приборам'     | '6,000000'   | '6,000000'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.09.2019'      | 'Холодное водоснабжение'  | 'ванная_ХВС + водоотведение'  | '01.09.2019'   | '01.10.2019'  |  'нет' |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По приборам'     | '5,000000'   | '5,000000'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.10.2019'      | 'Холодное водоснабжение'  | 'ванная_ХВС + водоотведение'  | '01.10.2019'   | '01.11.2019'  | 'нет' | 
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По приборам'     | '5,000000'   | '5,000000'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.11.2019'      | 'Холодное водоснабжение'  | 'ванная_ХВС + водоотведение'  | '01.11.2019'   | '01.12.2019'  | 'нет' | 
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По приборам'     | '5,000000'   | '5,000000'         |
        И я проверяю правильность расчета услуги водоотведение
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга             | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.08.2019'      | 'Водоотведение'    | 'ванная_ХВС + водоотведение'  | '01.08.2019'   | '01.09.2019'  | 'нет' |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По приборам'     | '6,000000'   | '6,000000'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга             | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.09.2019'      | 'Водоотведение'    | 'ванная_ХВС + водоотведение'  | '01.09.2019'   | '01.10.2019'  | 'нет' | 
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По приборам'     | '5,000000'   | '5,000000'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга           | Точка учета                  | Начало периода | Конец периода | Снимаем |
            | '01.10.2019'      | 'Водоотведение'  | 'ванная_ХВС + водоотведение' | '01.10.2019'   | '01.11.2019'  | 'нет' | 
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По приборам'     | '5,000000'   | '5,000000'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга          | Точка учета                 | Начало периода | Конец периода | Снимаем |
            | '01.11.2019'      | 'Водоотведение' | 'ванная_ХВС + водоотведение'| '01.11.2019'   | '01.12.2019'  | 'нет' |
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По приборам'     | '5,000000'   | '5,000000'         |