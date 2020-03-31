    #language: ru
    @tree   
    Функционал: <описание фичи>

    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


    Сценарий: <ПерерасчетНаОснованииБлокАкта>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПерерасчетНаОснованииБлокАкта.mxl"
    И я перепровожу созданные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И я создаю перерасчет
        И В командном интерфейсе я выбираю 'Расчет начислений' 'Перерасчет'
        Тогда открылось окно 'Перерасчет'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение                        |
        | Регистрация блокировочного акта |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Перерасчет (создание)'
        И в поле 'от' я ввожу текст '01.07.2019  0:00:00'
        И из выпадающего списка "Абонент" я выбираю по строке 'Прокудина Ольга Владимировна'
        И в таблице "ДвиженияэнргОбъемНачислений" я нажимаю на кнопку с именем 'ДвиженияэнргОбъемНачисленийДобавить'
        И в таблице "ДвиженияэнргОбъемНачислений" я активизирую поле "Расчетный период"
        И в таблице "ДвиженияэнргОбъемНачислений" я выбираю текущую строку
        И в таблице "ДвиженияэнргОбъемНачислений" я нажимаю кнопку выбора у реквизита "Расчетный период"
        И в таблице "ДвиженияэнргОбъемНачислений" я завершаю редактирование строки
        И в таблице "ДвиженияэнргОбъемНачислений" я активизирую поле "Точка учета"
        И в таблице "ДвиженияэнргОбъемНачислений" из выпадающего списка "Точка учета" я выбираю по строке 'ввод_Холодное водоснабжение'
        И в таблице "ДвиженияэнргОбъемНачислений" я активизирую поле "Объем услуги"
        И в таблице "ДвиженияэнргОбъемНачислений" я выбираю текущую строку
        И в таблице "ДвиженияэнргОбъемНачислений" в поле 'Объем услуги' я ввожу текст '15,000000'
        И я перехожу к следующему реквизиту
        И в таблице "ДвиженияэнргОбъемНачислений" в поле 'Объем потребленный' я ввожу текст '15,000000'
        И в таблице "ДвиженияэнргОбъемНачислений" я активизирую поле "Сумма"
        И в таблице "ДвиженияэнргОбъемНачислений" в поле 'Сумма' я ввожу текст '250,00'
        И в таблице "ДвиженияэнргОбъемНачислений" я завершаю редактирование строки
    И я провожу созданный документ    
        И я нажимаю на кнопку 'Записать и закрыть'
        И я жду закрытия окна 'Перерасчет (создание) *' в течение 20 секунд
