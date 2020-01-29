#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
	Дано я выполняю очистку после теста 
    И Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>
    И я подготавливаю тестовые данные
        И я загружаю макет "РегистрацияДокументов\ОперацииСМКД\ИзменениеВидаБлагоустройстваМКД\ИсходныеДанные.mxl"
    И я создаю новый документ    
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Изменить вид благоустройства МКД'
        Тогда открылось окно 'Изменить вид благоустройства МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Изменить вид благоустройства МКД (создание)'
    И я заполняю форму открывшегося документа      
        И из выпадающего списка "МКД" я выбираю точное значение 'Кемерово г, Ленина пр-кт, Дом 98А'
        Тогда открылось окно 'Изменить вид благоустройства МКД (создание) *'
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я перехожу к строке:
        | N | Вид благоустройства общедомовой                        | Услуга                 |
        | 1 | 'ХВ,ГВ,КАН, ванна1500, душ, раковина, мойка, унитаз +' | Холодное водоснабжение |
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я активизирую поле "Вид благоустройства общедомовой"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я выбираю текущую строку
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" из выпадающего списка "Вид благоустройства общедомовой" я выбираю по строке 'отопление, дома строительным объемом от 10000 м3 +'
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я завершаю редактирование строки
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменить вид благоустройства МКД (создание) *' в течение 20 секунд
    И я выполняю очистку после теста     
