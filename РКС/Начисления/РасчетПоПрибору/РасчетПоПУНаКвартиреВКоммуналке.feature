language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/3dLbBpOj/2146"

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоНормативу>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоПУНаКвартиреВКоммуналке.mxl"
    И я перепровожу загруженные данные
        И Я перепровожу все документы абонента "Каменев Сергей Михайлович"
    И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД '' с 'Июнь' '2020' по 'Июнь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 4
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                     |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 2, Комната 1' |'Каменев Сергей Михайлович' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'     |'Без ПУ'      |'3,110'         |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'66,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                     |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 2, Комната 1' |'Каменев Сергей Михайлович' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'     |'Без ПУ'      |'3,110'         |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'207,33' |'66,666667'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                     |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 2, Комната 1' |'Каменев Сергей Михайлович' |'Электроэнергия' |''                    |'Начисление ОДН' |'По нормативу'    |'Без ПУ'      |'3,110'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'23,50'  |'7,555556'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                     |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 2, Комната 1' |'Каменев Сергей Михайлович' |'Электроэнергия' |''                    |'Начисление'     |'По нормативу'    |'Без ПУ'      |'3,110'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'7,555556'         |