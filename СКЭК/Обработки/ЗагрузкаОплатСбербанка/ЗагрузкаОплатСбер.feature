    #language: ru
    @tree
    Функционал: <описание фичи>
    "https://trello.com/c/i1PX6iyb"
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <ЗагрузкаОплатСбер>
    И я подготавливаю тестовые данные
        И я загружаю макет "ЗагрузкаОплатСбер.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Сентябрь' '2020' по 'Сентябрь 2020'
    И я проверяю загруженные данные
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Платежное поручение (входящие)'
        Тогда открылось окно 'Платежное поручение (входящие)'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Платежное поручение (входящие) (создание)'
        И в поле 'Дата' я ввожу текст '20.10.2020  0:00:00'
        И из выпадающего списка "Организация" я выбираю по строке 'ОАО "СКЭК"'
        И из выпадающего списка "Абонентский отдел" я выбираю по строке 'Кедровский ОЭ'
        И в поле 'Файл для чтения' я ввожу текст '\\172.29.1.50\Users\ShvedovKirill\Реестры сбербанка Кедровка\ПроверкаРеестра(Сбербанк).txt'
        И из выпадающего списка "Источник поступления" я выбираю по строке 'Сбербанк загрузка СтарЛС'
        И я нажимаю на кнопку 'Загрузить'  
    И я проверяю ТЧ "Оплата"    
        И я перехожу к закладке "Оплата (7)"
        И в таблице "Оплата" я перехожу к строке:
        |Абонент                             |Лицевой счет          |Услуга                   |Поставщик    |Период оплаты |Примечание |Сумма оплаты |Дата платежа |Номер платежа                              |ФИО плательщика |
        |'Безруков Владимир Васильевич'      |'0300000523        '  |'Холодное водоснабжение' |''           |'Август 2020' |''         |'272,90'     |'29.08.2020' |'2020082986158615999V09399166301265822206' |''              |
        И в таблице "Оплата" я перехожу к строке:
        |Абонент                             |Лицевой счет          |Услуга                   |Поставщик    |Период оплаты |Примечание |Сумма оплаты |Дата платежа |Номер платежа                              |ФИО плательщика |
        |'Марков Георгий Алексеевич'         |'0300002182        '  |'Холодное водоснабжение' |''           |'Август 2020' |''         |'731,64'     |'30.08.2020' |'2020083086159900000V08436663800852842845' |''              |
        И в таблице "Оплата" я перехожу к строке:
        |Абонент                             |Лицевой счет          |Услуга                   |Поставщик    |Период оплаты |Примечание |Сумма оплаты |Дата платежа |Номер платежа                              |ФИО плательщика |
        |'Швыдкин Владимир Владимирович'     |'0300003710        '  |'Горячее водоснабжение'  |''           |'Июль 2020'   |''         |'1 500,00'   |'21.09.2020' |'2020092186158615999V00931315451429824980' |''              |
        И в таблице "Оплата" я перехожу к строке:
        |Абонент                             |Лицевой счет          |Услуга                   |Поставщик    |Период оплаты |Примечание |Сумма оплаты |Дата платежа |Номер платежа                              |ФИО плательщика |
        |'Швыдкин Владимир Владимирович'     |'0300003710        '  |'Холодное водоснабжение' |''           |'Июль 2020'   |''         |'70,00'      |'21.09.2020' |'2020092186158615999V00931315451429824980' |''              |
        И в таблице "Оплата" я перехожу к строке:
        |Абонент                             |Лицевой счет          |Услуга                   |Поставщик    |Период оплаты |Примечание |Сумма оплаты |Дата платежа |Номер платежа                              |ФИО плательщика |
        |'Пименов Сергей Владимирович'       |'0300000265        '  |'Холодное водоснабжение' |''           |'Август 2020' |''         |'140,00'     |'30.08.2020' |'2020083086158615999V00097890601054962405' |''              |
        И в таблице "Оплата" я перехожу к строке:
        |Абонент                             |Лицевой счет          |Услуга                   |Поставщик    |Период оплаты |Примечание |Сумма оплаты |Дата платежа |Номер платежа                              |ФИО плательщика |
        |'Штаревич Оксана Александровна'     |'0300003656        '  |'Холодное водоснабжение' |''           |'Август 2020' |''         |'1 000,00'   |'28.08.2020' |'2020082886158615999V08560946301264743407' |''              |
        И в таблице "Оплата" я перехожу к строке:
        |Абонент                             |Лицевой счет          |Услуга                   |Поставщик    |Период оплаты |Примечание |Сумма оплаты |Дата платежа |Номер платежа                              |ФИО плательщика |
        |'Соломенников Сергей Александрович' |'0300001025        '  |'Холодное водоснабжение' |''           |'Август 2020' |''         |'278,72'     |'28.08.2020' |'2020082886159900000V04979674800848380622' |''              |
    И я проверяю ТЧ "Показания приборов учета"
        И я перехожу к закладке "Показания приборов учета (4)"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Номер ЛС               |Абонент                         |Точка учета                    |Услуга                   |Прибор учета    |
        |'0300002182        '   |'Марков Георгий Алексеевич'     |'+ввод_Холодное водоснабжение' |'Холодное водоснабжение' |'07274980'      |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Предоставлены |Предыдущие показания |Дата последних показаний |Текущие показания |Состояние показаний |Разница |Значение тарифа |Сумма |
        |'Да'          | '2 198,0000'        | '31.08.2020'            | '2 198,0000'     | 'Приняты'          | ''     | '23,62'        | ''   |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Номер ЛС               |Абонент                         |Точка учета                    |Услуга                   |Прибор учета    |
        |'0300003710        '   |'Швыдкин Владимир Владимирович' |'+ввод_ХВС + водоотведение'    |'ХВС + водоотведение'    |'12012'         |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Предоставлены |Предыдущие показания |Дата последних показаний |Текущие показания |Состояние показаний   |Средний объем |Разница           |Значение тарифа |Сумма     |
        |'Да'          | '221,0000'          | '31.08.2020'            | '225,0000'       | 'Отклонены'          |'1,330'       | '4,000000'       | '66,53'        | '266,12' |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Номер ЛС               |Абонент                         |Точка учета                    |Услуга                   |Прибор учета    |
        |'0300003710        '   |'Швыдкин Владимир Владимирович' |'ввод_ГВС + водоотведение'     |'ГВС + водоотведение'    |'1019063370400' |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Предоставлены |Предыдущие показания |Дата последних показаний |Текущие показания |Состояние показаний   |Разница           |Значение тарифа |Сумма       |
        |'Да'          | '129,0000'          | '31.08.2020'            | '134,0000'       | 'Приняты'            | '5,000000'       | '60,59'        | '302,95'   |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Номер ЛС               |Абонент                         |Точка учета                    |Услуга                   |Прибор учета    |
        |'0300000265        '   |'Пименов Сергей Владимирович'   |'+ввод_ХВС + водоотведение'    |'ХВС + водоотведение'    |'324098'        |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Предоставлены |Предыдущие показания   |Дата последних показаний |Текущие показания   |Состояние показаний     |Разница            |Значение тарифа |Сумма       |
        |'Да'          | '3 716,0000'          | '31.08.2020'            | '3 710,0000'       | 'Отклонены'            | '-6,000000'       | '30,58'        | ''        |
    И я проверяю ТЧ "Не загружена оплата"
        И я перехожу к закладке "Не загруженные данные (3)"
        И я перехожу к закладке "Не загружена оплата"
        И в таблице "НеЗагруженныеДанныеНеЗагруженаОплата" я перехожу к строке:
        |Номер платежного документа                 |Дата платежного документа |Лицевой счет |ФИО Плательщика |Услуга                       |Период оплаты |Сумма оплаты |Описание ошибки                                  |
        |'2020082886158615999V07088551601051105552' |'28.08.2020'              |'2063572'    |''              |'Холодное водоснабжение'     |'01.08.2020'  |'121,94'     |'По указанному лицевому счету абонент не найден' |
    И я проверяю ТЧ "Не загруженные показания"
        И я перехожу к закладке "Не загруженные показания"
        И в таблице "НеЗагруженныеДанныеНеЗагруженныеПоказания" я перехожу к строке:
        |Номер платежного документа                 |Дата платежного документа |ФИО Плательщика                     |Лицевой счет |Абонент                             |Строение                                |Помещение |Услуга                   |Номер прибора учета |Текущие показания |Описание ошибки                                 |
        |'2020082886159900000V04979674800848380622' |'28.08.2020'              |''                                  |'2051046'    |'Соломенников Сергей Александрович' |'Кемерово г, Первомайская ул, Дом № 23' |''        |'Холодное водоснабжение' |''                  |'139'             |'У абонента найдено более одного прибора учета' |
        И в таблице "НеЗагруженныеДанныеНеЗагруженныеПоказания" я перехожу к строке:
        |Номер платежного документа                 |Дата платежного документа |ФИО Плательщика                     |Лицевой счет |Абонент                             |Строение                                |Помещение |Услуга                   |Номер прибора учета |Текущие показания |Описание ошибки                                 |
        |'2020082986158615999V09399166301265822206' |'29.08.2020'              |''                                  |'2050500'    |'Безруков Владимир Васильевич'      |'Кемерово г, Рябиновая ул, Дом № 6'     |'1'       |'Холодное водоснабжение' |''                  |'742'             |'Не найден действующий прибор учета'            |


