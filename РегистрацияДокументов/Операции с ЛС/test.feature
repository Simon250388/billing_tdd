#language: ru

Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>

	И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
	Тогда открылось окно 'Открытие/закрытие лс физического лица'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылось окно 'Выбор вида операции'
	И в таблице "СписокОпераций" я перехожу к строке:
		| Значение                          |
		| Смена собственника лицевого счета |
	И в таблице "СписокОпераций" я выбираю текущую строку
	Тогда открылось окно 'Открытие/закрытие лс физического лица (создание)'
	И из выпадающего списка "Абонент" я выбираю точное значение 'Казакова  Любовь  Ивановна '
	Тогда открылось окно 'Открытие/закрытие лс физического лица (создание) *'
	И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
		| N | Вид канальности  | Ед.изм. | Прибор учета                | Точка учета                         | Услуга                |
		| 1 | Одноканальный ХВ | м3      | '19500666                 ' | ввод_Горячее водоснабжение_Головная | Горячее водоснабжение |
	И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонТочкаУчета"
	И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
		| N | Ед. изм. |ТекущиеПоказания |Значение тарифа | Переворот | Состояние показаний | Шкала    | Сумма     |
		| 1 | м3       | '20'            |'81,98'         | Нет       | Приняты             | Основная | '1639,60' |
	И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗонПредыдущиеПоказания"
	И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗонТекущиеПоказания"
	И я нажимаю на кнопку 'Провести'
