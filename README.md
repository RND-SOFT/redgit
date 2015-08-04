# Redgit
Redgit is gem for commit-msg git hook redmine integration.

It offers you opened issues and forces you to select one when you dealing with redmine project manager. Or just skip all if you put `refs #<issue>` in commit message.

## Example
### Setup

```sh
jerry@jerry ~/devel/iteq/lk redgit

Используйте: /home/jerry/bin/redgit setup <project> <api-key> [host = http://redmine.pro]
Отменено: Не задан проект или API-ключ.
```
```sh
jerry@jerry ~/devel/iteq/lk $ redgit setup prj 123d5a71aa1f5ae555dca88746daa337e9a28321
```

### Usage

```ruby
jerry@jerry ~/devel/iteq/lk $ git commit -am "тестовый коммит"

В сообщении не указан номер задачи в виде refs #XXX или fixes #XXX
=======================================
Трекер: http://redmine.pro  Проект: prj
============Выберите задачу============
Последняя:
 [1] 04 Aug 10:55 #4856 (НЕТ)       ИС Личный Кабинет
Открытые:
 [2] 04 Aug 10:55 #4856 (Работаю)   ИС Личный Кабинет
 [3] 04 Aug 07:33 #4846 (Работаю)   Адаптация ИС Пророк под новую архитектуру.
> 2
[master 7346ec3] тестовый коммит refs #4856
 1 file changed, 1 insertion(+)
```

## Installation
### Gem
`gem install redgit`

### Setup
`redgit setup <redmine-project> <api-key> [redmine host]`

## Test
```ruby
jerry@jerry ~/devel/iteq/lk $ redgit issues
 [2] 04 Aug 10:55 #4856 (Работаю)   ИС Личный Кабинет
 [3] 04 Aug 07:33 #4846 (Работаю)   Адаптация ИС Пророк под новую архитектуру.
```

## ToDo

