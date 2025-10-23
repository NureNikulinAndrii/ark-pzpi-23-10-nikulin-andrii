local hp=100;local dmg=20;local result=hp-dmg
local hp = 100 local dmg = 20 local result = hp - dmg

local stats = { health = 100, damage = 50 }
local field = "health" -- Динамічний ключ
-- ДОБРЕ: Статичний доступ (ви знаєте ключ)
print("Пошкодження (статично):", stats.damage)
-- ДОБРЕ: Динамічний доступ (ключ у змінній)
print("Здоров'я (динамічно):", stats[field])
-- ПОГАНО: Статичний ключ у дужках (нечистий стиль)
print("Пошкодження (поганий стиль):", stats["damage"])

local MAX_USERS = 100 -- Константа (ALL_CAPS_SNAKE_CASE)
local current_count = 50 -- Змінна (snake_case)
local function get_user_data(user_id) -- Функція (snake_case)
    return "Користувач ID: " .. user_id
end

-- ПОГАНО:
local c = 100 -- Що таке 'c'?
function GetUserData(ID) -- Не snake_case
    return "Нестандартний стиль"
end

local arr_cache = {}
-- ДОБРЕ: Кешування table.insert у локальну змінну
local insert = table.insert
print("Кешування insert:", insert == table.insert) -- Порівняння посилань
-- Використовуємо швидке локальне посилання
for i = 1, 3 do
    insert(arr_cache, i * 10)
end

local function dangerous_operation()
    -- Ця функція гарантовано викликає помилку
    error("Помилка: Некритична операція не вдалася.")
end
-- Використовуємо pcall для захищеного виклику
local ok, message = pcall(dangerous_operation)
if ok then
    print("Операція успішна!")
else
    -- Помилка перехоплена
    print("Помилка перехоплена (Грамотне завершення):", message)
end
-- Цей рядок буде виконано, незважаючи на помилку вище
print("Програма продовжила роботу!")

-- ПОГАНО: Просто коментар
local function sum_simple(a, b) return a + b end
-- ДОБРЕ: LuaDoc для інтеграції з IDE
-- Обчислює суму двох чисел.
-- @param num1 number Перше число.
-- @param num2 number Друге число.
-- @return number Результат суми.
local function calculate_sum(num1, num2)
    return num1 + num2
end