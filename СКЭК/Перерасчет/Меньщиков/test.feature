            #language: ru
            @tree
            Функционал: Правильность формирования документа перерасчет - операция изменение параметров расчета

            Как <Роль>
            Я хочу <описание функционала>
            Чтобы <бизнес-эффект>

            Контекст:
            Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


            Сценарий: <описание сценария>
            И я загружаю макет "СКЭК\Перерасчет\Меньщиков\ИсходныеДанные.mxl"
            И я перепровожу созданные документы
                И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
                Тогда открылось окно 'Открытие/закрытие лс физического лица'
                И в таблице 'Список' я выделяю все строки
                И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
                И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
                Тогда открылось окно 'Регистрация показаний абонента'
                И в таблице 'Список' я выделяю все строки
                И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И я выполняю начисления
                И В командном интерфейсе я выбираю 'Расчет начислений' 'Выполнение начислений'
                Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
                И я нажимаю кнопку выбора у поля "Месяц с"
                Тогда открылось окно 'Выбор периода'
                И в поле 'ВыбираемыйПериод' я ввожу текст '2019'
                И я перехожу к следующему реквизиту
                # Июль 2019
                И я нажимаю на кнопку 'Июль'
                И я нажимаю на кнопку 'Выбрать'
                Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
                И из выпадающего списка "Организация" я выбираю по строке 'ОАО "СКЭК"'
                И из выпадающего списка "Территориальный орган" я выбираю по строке 'Березовский городской округ'
                И я изменяю флаг 'ОтборПоДому'
                И я нажимаю на кнопку 'Выполнить все операции'
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатковМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатков" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументов" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУ" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатковНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачисленийМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРасчетНачисленийНаМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслугМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиИндивидуальныеНачисления" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачислений" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслуг" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачислениеПроцентовРассрочки" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачислениеПени" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРасчетЛьгот" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачисленийНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиИндивидуальныеНачисленияНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачисленияПоДолевымСхемам" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРаспределениеОбъемаМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиВзаиморасчетов" имеет заголовок "Нет Ошибок"
                # Август 2019
                И в поле "Месяц с" я увеличиваю значение
                И я нажимаю на кнопку 'Выполнить все операции'
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатковМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатков" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументов" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУ" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатковНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачисленийМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРасчетНачисленийНаМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслугМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиИндивидуальныеНачисления" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачислений" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслуг" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачислениеПроцентовРассрочки" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачислениеПени" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРасчетЛьгот" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачисленийНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиИндивидуальныеНачисленияНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачисленияПоДолевымСхемам" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРаспределениеОбъемаМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиВзаиморасчетов" имеет заголовок "Нет Ошибок"
                # Сентябрь 2019
                И в поле "Месяц с" я увеличиваю значение
                И я нажимаю на кнопку 'Выполнить все операции'
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатковМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатков" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументов" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУ" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатковНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачисленийМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРасчетНачисленийНаМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслугМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиИндивидуальныеНачисления" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачислений" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслуг" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачислениеПроцентовРассрочки" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачислениеПени" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРасчетЛьгот" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачисленийНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиИндивидуальныеНачисленияНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачисленияПоДолевымСхемам" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРаспределениеОбъемаМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиВзаиморасчетов" имеет заголовок "Нет Ошибок"
                # Октябрь 2019
                И в поле "Месяц с" я увеличиваю значение
                И я нажимаю на кнопку 'Выполнить все операции'
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатковМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатков" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументов" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУ" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатковНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачисленийМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРасчетНачисленийНаМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслугМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиИндивидуальныеНачисления" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачислений" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслуг" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачислениеПроцентовРассрочки" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачислениеПени" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРасчетЛьгот" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачисленийНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиИндивидуальныеНачисленияНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачисленияПоДолевымСхемам" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРаспределениеОбъемаМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиВзаиморасчетов" имеет заголовок "Нет Ошибок"
                # Ноябрь 2019
                И в поле "Месяц с" я увеличиваю значение
                И я нажимаю на кнопку 'Выполнить все операции'
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатковМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатков" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументов" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУ" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиЗаполнениеНачальныхОстатковНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачисленийМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРасчетНачисленийНаМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслугМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиИндивидуальныеНачисления" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачислений" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслуг" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачислениеПроцентовРассрочки" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачислениеПени" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРасчетЛьгот" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиПерерасчетСреднихНачисленийНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиИндивидуальныеНачисленияНП" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиНачисленияПоДолевымСхемам" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиРаспределениеОбъемаМКД" имеет заголовок "Нет Ошибок"
                И поле с именем "ОшибкиВосстановлениеПоследовательностиВзаиморасчетов" имеет заголовок "Нет Ошибок"
            И я выполняю проверку заполнения документа
                И В командном интерфейсе я выбираю 'Расчет начислений' 'Перерасчет'
                Тогда открылось окно 'Перерасчет'
                И в таблице "Список" я перехожу к первой строке
                И в таблице "Список" я выбираю текущую строку
                Тогда открылось окно 'Перерасчет * от *'
                И я нажимаю на кнопку 'Заполнить'
                И я перехожу к закладке "Расшифровка"
                И я проверяю правильность расчета услуги отопления                   
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга       | Точка учета         | Начало периода | Конец периода |
                    | '01.08.2019'        | 'Отопление'| 'ввод_Отопление'    |'01.08.2019'    |'01.09.2019'   | 
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По нормативу'         | '2,207790'              | '2,207790'                          |
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга       | Точка учета       | Начало периода | Конец периода |
                    | '01.09.2019'                        | 'Отопление' | 'ввод_Отопление' | '01.09.2019'                  | '01.10.2019'                |
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По нормативу'         | '2,207790'              | '2,207790'                          |
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга       | Точка учета       | Начало периода | Конец периода |
                    | '01.10.2019'                        | 'Отопление' | 'ввод_Отопление' | '01.10.2019'                  | '01.11.2019'                |
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По нормативу'         | '2,207790'              | '2,207790'                          |
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга       | Точка учета       | Начало периода | Конец периода |
                    | '01.11.2019'                        | 'Отопление' | 'ввод_Отопление' | '01.11.2019'                  | '01.12.2019'                |
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По нормативу'         | '2,207790'              | '2,207790'                          |
                И я проверяю правильность расчета услуги хвс
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода |
                    | '01.08.2019'        | 'Холодное водоснабжение'    | 'ванная_ХВС + водоотведение'    | '01.08.2019'     | '01.09.2019'    | 
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По приборам'         | '6,000000'              | '6,000000'                          |
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода |
                    | '01.09.2019'        | 'Холодное водоснабжение'    | 'ванная_ХВС + водоотведение'    | '01.09.2019'     | '01.10.2019'    | 
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По приборам'         | '5,000000'              | '5,000000'                          |
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода |
                    | '01.10.2019'        | 'Холодное водоснабжение'    | 'ванная_ХВС + водоотведение'    | '01.10.2019'     | '01.11.2019'  | 
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По приборам'         | '5,000000'              | '5,000000'                          |
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода |
                    | '01.11.2019'        | 'Холодное водоснабжение'    | 'ванная_ХВС + водоотведение'    | '01.11.2019'     | '01.12.2019'    | 
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По приборам'         | '5,000000'              | '5,000000'                          |
                И я проверяю правильность расчета услуги водоотведение
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода |
                    | '01.08.2019'        | 'Водоотведение'    | 'ванная_ХВС + водоотведение'    | '01.08.2019'     | '01.09.2019'    | 
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По приборам'      | '6,000000'              | '6,000000'                          |
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода |
                    | '01.09.2019'        | 'Водоотведение'    | 'ванная_ХВС + водоотведение'    | '01.09.2019'     | '01.10.2019'    | 
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По приборам'      | '5,000000'              | '5,000000'                          |
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода |
                    | '01.10.2019'        | 'Водоотведение'    | 'ванная_ХВС + водоотведение'    | '01.10.2019'     | '01.11.2019'    | 
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По приборам'      | '5,000000'              | '5,000000'                          |
                    И в таблице "Расшифровка" я перехожу к строке:
                    | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода |
                    | '01.11.2019'        | 'Водоотведение'    | 'ванная_ХВС + водоотведение'    | '01.11.2019'     | '01.12.2019'    | 
                    И в таблице "Расшифровка" текущая строка равна:
                    | Способ начисления | Объем услуги | Объем потребленный |
                    | 'По приборам'      | '5,000000'              | '5,000000'                          |
            И я выполняю очистку после теста
                И я закрываю сеанс TESTCLIENT
                И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Истина)"
                И я выполняю код встроенного языка на сервере "УдалитьДанныеИнформационнойБазы()"
                И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Ложь)"

