# 🪙 BTC Testnet Wallet (Chainstack)

Flutter-приложение для работы с Bitcoin Testnet (через Chainstack API).  
Архитектура построена по принципам **Clean Architecture** + **Bloc** + **Freezed**.

---

## ⚙️ Стек технологий

- **Flutter** (UI, кроссплатформа)
- **Bloc / flutter_bloc** (состояния и события)
- **Freezed** (модели, стейт-машины, `Either`)
- **Injectable + GetIt** (DI, инжекция зависимостей)
- **qr_flutter** (QR-коды для депозита)
- **Chainstack API** (провайдер данных по Testnet)

---

## 📦 Архитектура

- `core/` — базовые сущности (Either, XError, utils, extensions)
- `app/env/` — модель окружения (`AppEnvironment`, адреса по умолчанию)
- `features/wallet/`
    - `data/` — DTO + datasources
    - `domain/` — репозитории (абстракции)
    - `presentation/state/` — Bloc + Freezed state/event
    - `presentation/pages/` — UI фичи
- `features/history/` — история транзакций
- `features/withdrawal/` — вывод средств
- `features/deposit/` — пополнение (QR)

---

## ✅ Что сделано

### 🔑 Data слой
- Модели на основе **Freezed** (`AddressTxDto`, `WalletState`, `HistoryState` и др.)
- Реализация собственного **Either** (с безопасным доступом `.left/.right`)
- DTO ↔ Domain преобразования
- Datasources для запросов в Chainstack API

### 🔗 Repository слой
- `IWalletRepository` — баланс, история транзакций, стримы
- `IWithdrawalRepository` — отправка средств
- Реактивные стримы `balanceSats$`, `txs$`

### 🎛 State Management
- **WalletBloc** — баланс, адрес, ошибки
- **HistoryBloc** — история (refresh, пагинация, обновления)
- **WithdrawalBloc** — отправка транзакций (эмуляция)

### 📱 UI / Presentation
- **WalletPage**
    - адрес кошелька
    - баланс
    - кнопки: «Получить» / «Отправить» / «История»
- **DepositPage**
    - QR-код по текущему адресу из WalletBloc
- **WithdrawalPage**
    - форма вывода средств
    - интеграция с WithdrawalBloc (валидация, ошибки, успех)
- **HistoryPage**
    - список транзакций (refresh, infinite scroll)

---

## 🧪 Обработка ошибок
- Все запросы обёрнуты в `Either<XError, T>`
- Ошибки пробрасываются в Bloc и отображаются в UI
- `XError` поддерживает `internal`, `network`, `server` и другие шаблоны ошибок



## 📚 Используемые пакеты

### 🔑 Core & Архитектура
- **get_it** — сервис-локатор для внедрения зависимостей (DI).
- **injectable** — генератор кода для удобной регистрации зависимостей в get_it.

### 🧩 State Management
- **flutter_bloc** — управление состоянием через Bloc.
- **bloc_concurrency** — стратегия обработки событий (restartable, droppable и др.).
- **freezed / freezed_annotation** — кодогенерация для моделей, состояний, событий.

### 🔄 Reactive / Streams
- **rxdart** — расширенные возможности для работы со Stream (например, `combineLatest`).

### 🌐 Сеть и API
- **dio** — HTTP-клиент для запросов.
- **json_annotation / json_serializable** — генерация JSON сериализации/десериализации.
- **internet_connection_checker** — проверка соединения с интернетом.
- **connectivity_plus** — информация о типе сети (Wi-Fi, mobile).
- **http_cache_file_store** — хранение закэшированных ответов в файлах.
- **dio_cache_interceptor** — кеширование запросов Dio.

### 🎨 UI / UX
- **google_fonts** — шрифты Google Fonts.
- **flutter_svg** — отрисовка SVG.
- **pull_to_refresh** — нативный `Pull-to-Refresh`.
- **modal_bottom_sheet** — кастомные bottom sheets.
- **oktoast** — отображение тостов.
- **sliver_tools** — дополнительные виджеты для sliver-архитектуры.
- **shimmer** — эффект «мигающей» загрузки (skeleton).
- **qr_flutter** — генерация QR-кодов.
- **theme_tailor_annotation** — генерация тем (light/dark) через аннотации.
- **provider** — вспомогательный стейт-менеджер (локальные зависимости в дереве).

### 📱 Навигация и локализация
- **beamer** — декларативный роутинг, альтернатива Navigator 2.0.
- **easy_localization** — мультиязычность.

### 🔒 Хранение и безопасность
- **flutter_secure_storage** — хранение чувствительных данных (ключи, токены).
- **shared_preferences** — простое локальное хранилище.

### 🛠️ Утилиты
- **mask_text_input_formatter** — форматирование ввода (например, суммы, номера карт).
- **collection** — расширенные коллекции и утилиты.
- **share_plus** — системный шэринг (текст, ссылки, файлы).
- **uuid** — генерация UUID.

### 📝 Логирование
- **talker_flutter** — UI-логгер для ошибок и событий.
- **talker_dio_logger** — интеграция логов Dio с talker.

### 🧑‍💻 DevTools
- **build_runner** — генерация кода (freezed, retrofit, json_serializable, injectable).
- **retrofit_generator** — генератор REST-клиентов.
- **injectable_generator** — генератор DI-модулей.
- **json_serializable** — генерация JSON парсеров.
- **flutter_lints** — набор правил для стиля кода.
- **flutter_test** — стандартное тестирование.

---

## 👨‍💻 Запуск проекта
```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run