    #language: ru
    @tree
    Функционал: <описание фичи>
    "https://trello.com/c/61lfY5oG"
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетОднойУслугиПоНормативу>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетОднойУслугиПоНормативу.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "ПКС"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Август 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'   
        Тогда в таблице "Список" количество строк "равно" 13
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.07.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'         |'Среднее по нормативу' |'Основное направление'       |''                 |'31242739'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'13,080000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.07.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'         |'По нормативу'         |'Основное направление'       |''                 |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'9,040000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.07.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'      |'По нормативу'         |'мытье в бане'               |'кол-во мойщиков'  |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,400000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.07.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Холодное водоснабжение' |'хоз/нужды_Холодное водоснабжение' |'По нормативу'         |'содержание животных'        |'содержание коров' |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'3,640000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.07.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'         |'Среднее по нормативу' |'Основное направление'       |''                 |'31242739'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'14,560000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.07.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'         |'По нормативу'         |'Основное направление'       |''                 |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'14,560000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.08.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'         |'Среднее по нормативу' |'Основное направление'       |''                 |'31242739'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'13,080000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.08.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'         |'Среднее по нормативу' |'Основное направление'       |''                 |'31242739'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'14,560000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.08.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'         |'По нормативу'         |'Основное направление'       |''                 |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'9,040000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.08.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение'    |'Среднее по нормативу' |'полив из водопровода'       |''                 |'3'          |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'61,149360'  |'61,149360'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.08.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'      |'По нормативу'         |'мытье в бане'               |'кол-во мойщиков'  |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,400000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.08.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Холодное водоснабжение' |'хоз/нужды_Холодное водоснабжение' |'По нормативу'         |'содержание животных'        |'содержание коров' |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'3,640000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                        |Способ начисления      |Направление использования ТУ |Измеритель         |Прибор учета |
        |'31.08.2019 23:59:59' |'Мачнов Николай Дмитриевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'         |'По нормативу'         |'Основное направление'       |''                 |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'14,560000'        |