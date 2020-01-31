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
        И я загружаю макет "РегистрацияДокументов\ИзменениеКоличестваСобственниковОТЭК.mxl"
    И я создаю новый документ     
        И В командном интерфейсе я выбираю 'Физические лица' 'Изменение количества собственников'
        Тогда открылось окно 'Изменение количества собственников'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Изменение количества собственников (создание)'
    И я заполняю форму открывшегося документа        
        И из выпадающего списка "Абонент" я выбираю точное значение 'Астраханцев Вячеслав Владимирович'
        Тогда открылось окно 'Изменение количества собственников (создание) *'
        И в поле 'Количество собственников' я ввожу текст '3'
    И я провожу документ      
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменение количества собственников (создание) *' в течение 20 секунд
