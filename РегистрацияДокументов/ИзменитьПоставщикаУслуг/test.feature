#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>
	И я подготавливаю тестовые данные
        И я загружаю макет "РегистрацияДокументов\ИзменитьПоставщикаУслуг\ИсходныеДанные.mxl"
	И я создаю новый документ	
		Когда открылось окно 'Изменить поставщика услуг'
		И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
		Тогда открылось окно 'Изменить поставщика услуг (создание)'
	И я заполняю форму открывшегося документа	
		И из выпадающего списка "Абонент" я выбираю точное значение 'Гаврилов Аркадий Федорович'
		И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
			| N | Услуга              | Ед.изм. | Прибор учета  | Поставщик           |
			| 1 | ХВС + водоотведение | м3      | '15146603   ' | 'ОАО СКЭК/ОАО СКЭК' |
		И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоныПоставщикПосле2"
		Тогда открылось окно 'Форма выбора поставщика'
		И в таблице "ДанныеСоставныхУслуг" я активизирую поле "Поставщик"
		И в таблице "ДанныеСоставныхУслуг" я выбираю текущую строку
		И в таблице "ДанныеСоставныхУслуг" из выпадающего списка "Поставщик" я выбираю точное значение 'ООО ПКС'
		И в таблице "ДанныеСоставныхУслуг" я завершаю редактирование строки
		И в таблице "ДанныеСоставныхУслуг" я перехожу к строке:
			| Поставщик | Услуга        |
			| ОАО СКЭК  | Водоотведение |
		И в таблице "ДанныеСоставныхУслуг" я выбираю текущую строку
		И в таблице "ДанныеСоставныхУслуг" из выпадающего списка "Поставщик" я выбираю точное значение 'ООО ПКС'
		И в таблице "ДанныеСоставныхУслуг" я завершаю редактирование строки
		И я нажимаю на кнопку 'Завершить'
		И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
			| Шкала     | Предыдущие показания | Значение тарифа | Ед. изм. | Дата последних показаний| Состояние показаний | Коэффициент ПУ |
			| 'Основная'| '290,0000'           |    '16,58/34,2' | 'м3'     | '29.08.2019'            |    'Приняты'        | '1'            |
		И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗонТекущиеПоказания"
		И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
		И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '300,0000'
		И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
	И я провожу документ 	
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Изменить поставщика услуг (создание)' в течение 20 секунд
	И я выполняю очистку после теста

    

