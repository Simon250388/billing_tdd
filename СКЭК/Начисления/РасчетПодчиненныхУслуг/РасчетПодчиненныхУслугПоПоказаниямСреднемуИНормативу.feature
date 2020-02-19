#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <проверить расчет подчиненных услуг  по показаниям, среднему и нормативу>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <расчет подчиненных услуг  по показаниям, среднему и нормативу>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПодчиненныхУслугПоПоказаниямСреднемуИНормативу"
        И я перепровожу загруженные данные
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Ноябрь' '2019' по 'Июнь 2020'    
    И я проверяю полученные результаты
        И поле с именем "ОшибкиВосстановлениеПоследовательностиВзаиморасчетов" имеет заголовок "Нет Ошибок"
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 28
        И я проверяю начисления по точке учета ввод_Холодное водоснабжение
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.11.2019 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'По приборам'            |'Расчетная'                  |'01.11.2019'   |'01.11.2019'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'29,000000'  |'29,000000'        |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.12.2019 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'По приборам'            |'Расчетная'                  |'01.12.2019'   |'01.12.2019'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'30,000000'  |'30,000000'        |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.01.2020 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'По приборам'            |'Расчетная'                  |'01.01.2020'   |'01.01.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'10,000000'  |'10,000000'        |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'29.02.2020 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление по среднему' |'Расчетная'                  |'01.02.2020'   |'01.02.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'23,000000'  |'23,000000'        |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.03.2020 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление по среднему' |'Расчетная'                  |'01.03.2020'   |'01.03.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'23,000000'  |'23,000000'        |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.04.2020 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление по среднему' |'Расчетная'                  |'01.04.2020'   |'01.04.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'23,000000'  |'23,000000'        |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.05.2020 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Расчетный'              |'Расчетная'                  |'01.05.2020'   |'01.05.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'9,940000'  |''                 |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.06.2020 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'По приборам'            |'Расчетная'                  |'01.06.2020'   |'01.06.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'15,000000'  |'15,000000'        |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.06.2020 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление по среднему' |''                           |'01.06.2020'   |'01.02.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'-23,000000' |'-23,000000'       |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.06.2020 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление по среднему' |''                           |'01.06.2020'   |'01.03.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'-23,000000' |'-23,000000'       |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.06.2020 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление по среднему' |''                           |'01.06.2020'   |'01.04.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'-23,000000' |'-23,000000'       |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.06.2020 23:59:59' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Расчетный'              |''                           |'01.06.2020'   |'01.05.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'-10,679728' |'-10,679728'       |
        И я проверяю начисления по точке учета полив_Холодное водоснабжение   
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.11.2019 23:59:59' |'Холодное водоснабжение' |'полив_Холодное водоснабжение'  |'По нормативу'           |'полив из водопровода'       |'01.11.2019'   |'01.11.2019'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |''         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.12.2019 23:59:59' |'Холодное водоснабжение' |'полив_Холодное водоснабжение'  |'По нормативу'           |'полив из водопровода'       |'01.12.2019'   |'01.12.2019'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |''         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.01.2020 23:59:59' |'Холодное водоснабжение' |'полив_Холодное водоснабжение'  |'По нормативу'           |'полив из водопровода'       |'01.01.2020'   |'01.01.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |''         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'29.02.2020 23:59:59' |'Холодное водоснабжение' |'полив_Холодное водоснабжение'  |'По нормативу'           |'полив из водопровода'       |'01.02.2020'   |'01.02.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |''         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.03.2020 23:59:59' |'Холодное водоснабжение' |'полив_Холодное водоснабжение'  |'По нормативу'           |'полив из водопровода'       |'01.03.2020'   |'01.03.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |''         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.04.2020 23:59:59' |'Холодное водоснабжение' |'полив_Холодное водоснабжение'  |'По нормативу'           |'полив из водопровода'       |'01.04.2020'   |'01.04.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |''         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.05.2020 23:59:59' |'Холодное водоснабжение' |'полив_Холодное водоснабжение'  |'По нормативу'           |'полив из водопровода'       |'01.05.2020'   |'01.05.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |''         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.06.2020 23:59:59' |'Холодное водоснабжение' |'полив_Холодное водоснабжение'  |'По нормативу'           |'полив из водопровода'       |'01.06.2020'   |'01.06.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |''         |
        И я проверяю начисления по точке учета прочие_Холодное водоснабжение
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.11.2019 23:59:59' |'Холодное водоснабжение' |'прочие_Холодное водоснабжение' |'По нормативу'           |'Основное направление'       |'01.11.2019'   |'01.11.2019'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |'9,940000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.12.2019 23:59:59' |'Холодное водоснабжение' |'прочие_Холодное водоснабжение' |'По нормативу'           |'Основное направление'       |'01.12.2019'   |'01.12.2019'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |'9,940000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.01.2020 23:59:59' |'Холодное водоснабжение' |'прочие_Холодное водоснабжение' |'По нормативу'           |'Основное направление'       |'01.01.2020'   |'01.01.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |'9,940000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'29.02.2020 23:59:59' |'Холодное водоснабжение' |'прочие_Холодное водоснабжение' |'По нормативу'           |'Основное направление'       |'01.02.2020'   |'01.02.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |'9,940000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.03.2020 23:59:59' |'Холодное водоснабжение' |'прочие_Холодное водоснабжение' |'По нормативу'           |'Основное направление'       |'01.03.2020'   |'01.03.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |'9,940000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.04.2020 23:59:59' |'Холодное водоснабжение' |'прочие_Холодное водоснабжение' |'По нормативу'           |'Основное направление'       |'01.04.2020'   |'01.04.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |'9,940000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'31.05.2020 23:59:59' |'Холодное водоснабжение' |'прочие_Холодное водоснабжение' |'По нормативу'           |'Основное направление'       |'01.05.2020'   |'01.05.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |'9,940000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Период расчета |Период начисления |
            |'30.06.2020 23:59:59' |'Холодное водоснабжение' |'прочие_Холодное водоснабжение' |'По нормативу'           |'Основное направление'       |'01.06.2020'   |'01.06.2020'      |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |''           |'9,940000'         |        