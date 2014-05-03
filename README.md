DeviseSubscribable
--

It adds unsubscribe function for devise.

## TODO

- Create automatic installation command
 - rails generate devise_subscribable MODEL
- Create tests

## Installation

Add DeviseSubscribable to your Gemfile (and Devise if you weren't using them):

```
  gem 'devise'
  gem 'devise_subscribable'
```

## Devise Configuration

Add :subscribable to the devise call in your model (we’re assuming here you already have a User model with some Devise modules):

```
class User < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :subscribable
end
```

## ActiveRecord Migration

Add t.invitable to your Devise model migration:

```
create_table :users do
  ...
  # Subscribable
  t.boolean  :subscribe
  t.string   :unsubscribe_token
  ...
end
add_index :users, :unsubscribe_token, :unique => true
```

or for a model that already exists, define a migration to add DeviseSubscribable to your model:

```
def change
  add_column :users, :unsubscribe_token, :string
  add_column :users, :subscribe, :boolean
  add_index :users, :unsubscribe_token, :unique => true
end
```
