#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <проверить расчет подчиненных услуг по среднему>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПодчиненныхУслугПоСреднему>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПодчиненныхУслугПоСреднему"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2019' по 'Январь 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений' 
        Тогда в таблице "Список" количество строк "равно" 7       
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                        |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
        |'31.07.2019 23:59:59' |'Зуева надежда Игнатьевна' |'Холодное водоснабжение' |'расчетное_Холодное водоснабжение' |'По приборам'            |'Расчетная'                  |'01.07.2019'   |'01.07.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'18,000000'  |'18,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                        |Способ начисления        |Период расчета |Период начисления |
        |'31.08.2019 23:59:59' |'Зуева надежда Игнатьевна' |'Холодное водоснабжение' |'расчетное_Холодное водоснабжение' |'По приборам'            |'01.08.2019'   |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'26,000000'  |'26,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                        |Способ начисления        |Период расчета |Период начисления |
        |'30.09.2019 23:59:59' |'Зуева надежда Игнатьевна' |'Холодное водоснабжение' |'расчетное_Холодное водоснабжение' |'По приборам'            |'01.09.2019'   |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'4,000000'   |'4,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                        |Способ начисления        |Период расчета |Период начисления |
        |'31.10.2019 23:59:59' |'Зуева надежда Игнатьевна' |'Холодное водоснабжение' |'расчетное_Холодное водоснабжение' |'Начисление по среднему' |'01.10.2019'   |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'16,000000'  |'16,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                        |Способ начисления        |Период расчета |Период начисления |
        |'30.11.2019 23:59:59' |'Зуева надежда Игнатьевна' |'Холодное водоснабжение' |'расчетное_Холодное водоснабжение' |'Начисление по среднему' |'01.11.2019'   |'01.11.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'16,000000'  |'16,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                        |Способ начисления        |Период расчета |Период начисления |
        |'31.12.2019 23:59:59' |'Зуева надежда Игнатьевна' |'Холодное водоснабжение' |'расчетное_Холодное водоснабжение' |'Начисление по среднему' |'01.12.2019'   |'01.12.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'16,000000'  |'16,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                   |Точка учета                        |Способ начисления        |Период расчета |Период начисления |
        |'31.01.2020 23:59:59' |'Зуева надежда Игнатьевна' |'Холодное водоснабжение' |'расчетное_Холодное водоснабжение' |'Расчетный'              |'01.01.2020'   |'01.01.2020'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'18,186192'  |''                 |