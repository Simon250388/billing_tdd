#language: ru
@tree
Функционал: Правильность формирования документа перерасчет - операция изменение параметров расчета

Как <Роль>
Я хочу <проверить перерасчет на основании изменения значения площади>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ПерерасчетНаОснованииУстановкиПУПолив>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПерерасчетНаОснованииУстановкиПУПолив.mxl"
    И я перепровожу созданные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Платежное поручение (входящие)'
        Тогда открылось окно 'Платежное поручение (входящие)'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2019' по 'Ноябрь 2019'
    И я проверю наличие автоматического перерасчета     
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице "Список" я перехожу к строке:
        | Абонент                     | Вид операции              | Дата                 | Номер         |
        | 'Анисимова Галина Ивановна' | 'Акт ввода прибора учета' | '26.12.2019 0:00:00' | '00000000012' |
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Акт ввода прибора учета №00000000012 от *'
        И я нажимаю на кнопку 'Провести'
        Тогда открылось окно '1С:Предприятие'
        И я нажимаю на кнопку 'Да'
    И я проверяю полученные результаты
        Тогда открылось окно 'Перерасчет (создание)'
        И я нажимаю на кнопку 'Заполнить'
        И я перехожу к закладке "Результат"
        Тогда в таблице "РезультатПерерасчета" количество строк "равно" 33
        И таблица "РезультатПерерасчета" стала равной по шаблону:     
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.01.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.01.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,250000' |''          |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.01.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.02.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.02.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,250000' |''          |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.02.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.03.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.03.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,250000' |''          |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.03.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.04.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.04.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,250000' |''          |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.04.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.05.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.05.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,250000' |''          |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.05.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.06.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.06.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,250000' |''          |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.06.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.07.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.07.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,095920' |''          |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.07.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.08.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.08.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,095920' |'68,794521' |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.08.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.09.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.09.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,095920' |'64,356164' |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.09.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.10.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.10.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,095920' |''          |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.10.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.11.2019'      |'Холодное водоснабжение' |'Основное направление'       |'1,380000'  |'1,380000'  |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.11.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'11,095920' |''          |
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До    |Объем После |
        |'01.11.2019'      |'Холодное водоснабжение' |'мытье в бане'               |'0,200000'  |'0,200000'  |
    И я проверяю снятие объема предыдущих периодов
        И я перехожу к закладке "Расшифровка"
        """Тогда в таблице "Расшифровка" количество строк "равно" 34"""
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.01.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.01.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.02.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.02.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.03.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.03.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.04.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.04.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.05.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.05.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.06.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.06.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.07.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.07.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.08.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.08.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'68,793030'   |'68,793030'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.08.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'        |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.09.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'64,354770'  |'64,354770'        |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.09.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.09.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.10.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.10.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.11.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,380000'   |'1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.11.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,200000'   |'0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.01.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.01.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-11,250000'  |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.01.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.02.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.02.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-11,250000'  |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.02.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.03.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.03.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-11,250000'  |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.03.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.04.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.04.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-11,250000'  |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.04.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.05.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.05.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-11,250000'  |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.05.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.06.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.06.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-11,250000'  |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.06.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |''                 |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.07.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |'-1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.07.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-11,095920'  |'-11,095920'        |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.07.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |'-0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.08.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |'-1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.08.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-11,095920'  |'-11,095920'        |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.08.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |'-0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.09.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-10,726056'  |'-10,726056'        |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.09.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |'-1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.09.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |'-0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.09.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,369864'   |'-0,369864'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.10.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |'-1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.10.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-11,095920'  |'-11,095920'        |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.10.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |'-0,200000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.11.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,380000'   |'-1,380000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.11.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-11,095920'  |'-11,095920'        |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                     |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Анисимова Галина Ивановна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'01.11.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,200000'   |'-0,200000'         |
        




    