    #language: ru
    @tree
    Функционал: <описание фичи>
    "https://trello.com/c/rGeBadV7"
    Как <Роль>
    Я хочу <проверить расчет подчиненных услуг по среднему>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПростыхУслугБезВозмТехнУстан>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПростыхУслугБезВозмТехнУстан.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
        Тогда открылось окно 'Подключение/отключение услуг'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "Тайгинское ВКХ"' и району 'Тайгинский городской округ' и МКД 'Тайга г, Кузнецова ул, Дом № 10' с 'Июль' '2019' по 'Август 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Точка учета"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'ввод_ХВС + водоотведение'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'         
        Тогда в таблице "Список" количество строк "равно" 4
        #Июль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Способ начисления |Значение тарифа |Сверх норматива |Сумма      |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По нормативу'    |'20,120'        |'Нет'           |'674,4224' |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'33,520000'  |'33,520000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Способ начисления |Значение тарифа |Сверх норматива |Сумма      |
        |'31.07.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'По нормативу'    |'18,990'        |'Нет'           |'636,54'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'33,520000'  |'33,520000'        |
        #Август
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Способ начисления |Значение тарифа |Сверх норматива |Сумма      |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По нормативу'    |'20,120'        |'Нет'           |'674,4224' |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'33,520000'  |'33,520000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Способ начисления |Значение тарифа |Сверх норматива |Сумма      |
        |'31.08.2019 23:59:59' |'Бирюков Дмитрий Юрьевич' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'По нормативу'    |'18,990'        |'Нет'           |'636,54'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'33,520000'  |'33,520000'        | 