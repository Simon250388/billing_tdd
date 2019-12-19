            #language: ru
            @tree
            Функционал: <описание фичи>

            Как <Роль>
            Я хочу <описание функционала>
            Чтобы <бизнес-эффект>

            Контекст:
            Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

            Сценарий: <описание сценария>
            И я загружаю макет "СКЭК\Начисления\Кухта\ИсходныеДанные.mxl"
            И я перепровжу загруженные данные
                И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
                Тогда открылось окно 'Открытие/закрытие лс физического лица'
                И в таблице 'Список' я выделяю все строки
                И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
                И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
                Тогда открылось окно 'Регистрация показаний абонента'
                И в таблице 'Список' я выделяю все строки
                И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
                И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
                Тогда открылось окно 'Подключение/отключение услуг'
                И в таблице 'Список' я выделяю все строки
                И в таблице "Список" я активизирую поле "Вид операции"
                И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
                И В командном интерфейсе я выбираю 'Работа с абонентами' 'Приходный кассовый ордер'
                Тогда открылось окно 'Приходный кассовый ордер'
                И в таблице 'Список' я выделяю все строки
                И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
                И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить формулу расчета точек учета'
                Тогда открылось окно 'Изменить формулу расчета точек учета'
                И в таблице 'Список' я выделяю все строки
                И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
                И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить технический статус точки учета'
                Тогда открылось окно 'Изменить технический статус точки учета'
                И в таблице 'Список' я выделяю все строки
                И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И я выполняю начисления
                И В командном интерфейсе я выбираю 'Расчет начислений' 'Выполнение начислений'
                Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
                И я нажимаю кнопку выбора у поля "Месяц с"
                Тогда открылось окно 'Выбор периода'
                И в поле 'ВыбираемыйПериод' я ввожу текст '2019'
                И я перехожу к следующему реквизиту
                # Октябрь 2019
                И я нажимаю на кнопку 'Октябрь'
                И я нажимаю на кнопку 'Выбрать'
                Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
                И из выпадающего списка "Организация" я выбираю по строке 'ОАО "СКЭК"'
                И из выпадающего списка "Территориальный орган" я выбираю по строке 'Кемеровский городской округ'
                И я изменяю флаг 'ОтборПоДому'
                И Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок
            И я проверяю полученные результаты
                И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
                Тогда открылось окно 'Объем начислений'
                И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
                Тогда открылось окно 'Выберите период'
                И в поле 'DateBegin' я ввожу текст '01.10.2019'
                И в поле 'DateEnd' я ввожу текст '31.10.2019'
                И я перехожу к следующему реквизиту
                И я нажимаю на кнопку 'Выбрать'
                # ХВС 01-18
                И в таблице "Список" я перехожу к строке:
                | Период        | Организация | Филиал                                         | Строение                                         | Абонент                               | Точка учета                        | Услуга                                  | Начало периода | Конец периода |
                | 31.10.2019 23:59:59 | ОАО "СКЭК"      | Кемеровский городской округ | Кемерово г, Красивая ул, Дом № 11 | Кухта Сергей Витальевич | ввод_ХВС + водоотведение | 'Холодное водоснабжение' | '01.10.2019'                | '18.10.2019'              |
                И в таблице "Список" текущая строка равна:
                | Объем услуги | Объем потребленный |
                | '9,000000'              | '9,000000'                          |
                # Водоотведение 01-18
                И в таблице "Список" я перехожу к строке:
                | Период        | Организация | Филиал                                         | Строение                                         | Абонент                               | Точка учета                        | Услуга                 | Начало периода | Конец периода |
                | 31.10.2019 23:59:59 | ОАО "СКЭК"      | Кемеровский городской округ | Кемерово г, Красивая ул, Дом № 11 | Кухта Сергей Витальевич | ввод_ХВС + водоотведение | 'Водоотведение' | '01.10.2019'                | '18.10.2019'              |
                И в таблице "Список" текущая строка равна:
                | Объем услуги | Объем потребленный |
                | '9,000000'              | '9,000000'                          |
                # ХВС 18-01
                И в таблице "Список" я перехожу к строке:
                | Период        | Организация | Филиал                                         | Строение                                         | Абонент                               | Точка учета                        | Услуга                                  | Начало периода | Конец периода |
                | 31.10.2019 23:59:59 | ОАО "СКЭК"      | Кемеровский городской округ | Кемерово г, Красивая ул, Дом № 11 | Кухта Сергей Витальевич | ввод_ХВС + водоотведение | 'Холодное водоснабжение' | '18.10.2019'                | '01.11.2019'              |
                И в таблице "Список" текущая строка равна:
                | Объем услуги | Объем потребленный |
                | ''              | '2,000000'                          |
                # Водоотведение 18-01
                И в таблице "Список" я перехожу к строке:
                | Период        | Организация | Филиал                                         | Строение                                         | Абонент                               | Точка учета                        | Услуга                 | Начало периода | Конец периода |
                | 31.10.2019 23:59:59 | ОАО "СКЭК"      | Кемеровский городской округ | Кемерово г, Красивая ул, Дом № 11 | Кухта Сергей Витальевич | ввод_ХВС + водоотведение | 'Водоотведение' | '18.10.2019'                | '01.11.2019'              |
                И в таблице "Список" текущая строка равна:
                | Объем услуги | Объем потребленный |
                | ''              | '2,000000'                          |
                # Огород 18-01
                И в таблице "Список" я перехожу к строке:
                | Период                | Организация   | Филиал                        | Строение                          | Абонент                   | Точка учета                   | Услуга                    | Начало периода    | Конец периода |
                | 31.10.2019 23:59:59   | ОАО "СКЭК"    | Кемеровский городской округ   | Кемерово г, Красивая ул, Дом № 11 | Кухта Сергей Витальевич   | огород_Холодное водоснабжение | 'Холодное водоснабжение'  | '18.10.2019'      | '01.11.2019'               |
                И в таблице "Список" текущая строка равна:
                | Объем услуги | Объем потребленный |
                | '1,000000'              | '1,000000'                          |
                # Расчетная точка учета 18-01
                И в таблице "Список" я перехожу к строке:
                | Период        | Организация | Филиал                                         | Строение                                         | Абонент                               | Точка учета                   | Услуга                                  | Начало периода | Конец периода |
                | 31.10.2019 23:59:59 | ОАО "СКЭК"      | Кемеровский городской округ | Кемерово г, Красивая ул, Дом № 11 | Кухта Сергей Витальевич | '*_ХВС + водоотведение' | 'Холодное водоснабжение' | '18.10.2019'                | '01.11.2019'              |
                И в таблице "Список" текущая строка равна:
                | Объем услуги | Объем потребленный |
                | '1,000000'              | '1,000000'                          |
                # Водоотведение 18-01
                И в таблице "Список" я перехожу к строке:
                | Период        | Организация | Филиал                                         | Строение                                         | Абонент                               | Точка учета                   | Услуга                 | Начало периода | Конец периода |
                | 31.10.2019 23:59:59 | ОАО "СКЭК"      | Кемеровский городской округ | Кемерово г, Красивая ул, Дом № 11 | Кухта Сергей Витальевич | '*_ХВС + водоотведение' | 'Водоотведение' | '18.10.2019'                | '01.11.2019'              |
                И в таблице "Список" текущая строка равна:
                | Объем услуги | Объем потребленный |
                | '1,000000'              | '1,000000'                          |
            И я удаляю тестовые данные
                И я закрываю сеанс TESTCLIENT
                И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Истина)"
                И я выполняю код встроенного языка на сервере "УдалитьДанныеИнформационнойБазы()"
                И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Ложь)"

