#language: ru
@tree
Функционал: Расчет Подчиненных услуг при наличии простых услуг без ПУ
Как <Роль>
Я хочу <проверить расчет подчиненных услуг при наличии простых услуг>
Чтобы <бизнес-эффект>
"https://trello.com/c/bxtd6d4q"
Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПодчиненныхУслугПриНаличииПростыхУслугБезПУ>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПодчиненныхУслугПриНаличииПростыхУслугБезПУ"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Когда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2019' по 'Ноябрь 2019'    
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 21
        #Июль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета    |Сверх норматива |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'237302431'     |'Нет'           |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,960000'   |'10,833333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'По нормативу'           |'Основное направление'       |''           |'Нет'           |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,760000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление'   |'По нормативу'           |'полив из водопровода'       |''           |'Нет'           |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'Начисление'   |'По нормативу'           |'мытье в бане'               |''           |'Нет'           |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,200000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета    |Сверх норматива |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'237302431'     |'Да'            |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'7,873333'   |''                 |
        #Август
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета    |Сверх норматива |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'237302431'     |'Нет'           |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'10,833333'  |'10,833333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'По нормативу'           |'Основное направление'       |''           |'Нет'           |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,760000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление'   |'По нормативу'           |'полив из водопровода'       |''           |'Нет'           |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'81,328649'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'Начисление'   |'По нормативу'           |'мытье в бане'               |''           |'Нет'           |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,200000'         |
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление'   |'По нормативу'           |'полив из водопровода'       |''           |'Нет'           |'01.09.2019'   |'30.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'76,081639'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета    |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'237302431'     |'Нет'           |'01.09.2019'   |'30.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'10,472222'  |'10,472222'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'По нормативу'           |'Основное направление'       |''           |'Нет'           |'01.09.2019'   |'30.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,668000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'Начисление'   |'По нормативу'           |'мытье в бане'               |''           |'Нет'           |'01.09.2019'   |'30.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,193333'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление'   |'По нормативу'           |'полив из водопровода'       |''           |'Нет'           |'30.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета    |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'237302431'     |'Нет'           |'30.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,361111'   |'0,361111'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'По нормативу'           |'Основное направление'       |''           |'Нет'           |'30.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,092000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'Начисление'   |'По нормативу'           |'мытье в бане'               |''           |'Нет'           |'30.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,006667'         |
        #Октябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета    |Сверх норматива |Начало периода |Конец периода |
        |'31.10.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'Расчетный'              |'Основное направление'       |'237302431'     |'Нет'           |'01.10.2019'   |'01.11.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,960000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'31.10.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'По нормативу'           |'Основное направление'       |''           |'Нет'           |'01.10.2019'   |'01.11.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,760000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'31.10.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление'   |'По нормативу'           |'полив из водопровода'       |''           |'Нет'           |'01.10.2019'   |'01.11.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Сверх норматива |Начало периода |Конец периода |
        |'31.10.2019 23:59:59' |'Рыбкина Марина Васильевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'Начисление'   |'По нормативу'           |'мытье в бане'               |''           |'Нет'           |'01.10.2019'   |'01.11.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,200000'         |