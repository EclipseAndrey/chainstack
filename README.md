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

---

## 👨‍💻 Запуск проекта
```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run