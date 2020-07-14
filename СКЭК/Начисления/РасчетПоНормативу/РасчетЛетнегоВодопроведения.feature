    #language: ru
    @tree
    @card "https://trello.com/c/60ewT2dC"
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/60ewT2dC"
    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетЛетнегоВодопроведения>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетЛетнегоВодопроведения"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
        Тогда открылось окно 'Подключение/отключение услуг'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "Тайгинское ВКХ"' и району 'Тайгинский городской округ' и МКД '' с 'Июль' '2019' по 'Июнь 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.05.2020'
        И в поле 'DateEnd' я ввожу текст '31.07.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Объем начислений'
        #май
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Дмитриенко Глеб Владимирович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'По нормативу'    |'летний водопровод'          |'20,120'        |'01.05.2020'   |'01.05.2020'      |'Нет'           |'673,62' |'33,480000'  |''                 |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Дмитриенко Глеб Владимирович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'По нормативу'    |'летний водопровод'          |'20,120'        |'01.05.2020'   |'01.05.2020'      |'Нет'           |''       |''           |'33,480000'        |'01.06.2020'  |'01.05.2020'   |
        #июнь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Дмитриенко Глеб Владимирович' |'Холодное водоснабжение' |'полив_Холодное водоснабжение' |'По нормативу'    |'полив из колонки'           |'20,120'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'178,61' |'8,877000'   |''                 |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Дмитриенко Глеб Владимирович' |'Холодное водоснабжение' |'полив_Холодное водоснабжение' |'По нормативу'    |'полив из колонки'           |'20,120'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |''       |''           |'8,877000'         |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Дмитриенко Глеб Владимирович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'По нормативу'    |'летний водопровод'          |'20,120'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |''       |''           |'32,400000'        |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Дмитриенко Глеб Владимирович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'По нормативу'    |'летний водопровод'          |'20,120'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'651,89' |'32,400000'  |''                 |'01.07.2020'  |'01.06.2020'   |
        #июль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Дмитриенко Глеб Владимирович' |'Холодное водоснабжение' |'полив_Холодное водоснабжение' |'По нормативу'    |'полив из колонки'           |'20,120'        |'01.07.2020'   |'01.07.2020'      |'Нет'           |'357,21' |'17,754000'  |''                 |'31.07.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Дмитриенко Глеб Владимирович' |'Холодное водоснабжение' |'полив_Холодное водоснабжение' |'По нормативу'    |'полив из колонки'           |'20,120'        |'01.07.2020'   |'01.07.2020'      |'Нет'           |''       |''           |'17,754000'        |'31.07.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Дмитриенко Глеб Владимирович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'По нормативу'    |'летний водопровод'          |'20,120'        |'01.07.2020'   |'01.07.2020'      |'Нет'           |''       |''           |'33,480000'        |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Дмитриенко Глеб Владимирович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'По нормативу'    |'летний водопровод'          |'20,120'        |'01.07.2020'   |'01.07.2020'      |'Нет'           |'673,62' |'33,480000'  |''                 |'01.08.2020'  |'01.07.2020'   |
