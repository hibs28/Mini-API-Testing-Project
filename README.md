# Mini API Testing Project
## Description
This project is to test data that is retrieved from the Open Weather API (Application Programming Interface) and compare it to a JSON file which has all the cities in the world. This checks to see if it has passed or failed.

### Languages used
* Ruby

### Gems required
* JSON
* HTTParty
* RSpec
* Dotenv

## How to download
1. In your terminal create a empty folder/ directory of where you want this template.
2. Once you are in the folder, type in:
` git clone https://github.com/hibs28/Mini-API-Testing-Project.git` 
3. You can then extract the files you want
4. In the Gemfile it should have these gems, if not type them in:
```
gem 'httparty'
gem 'json'
gem 'rspec'
gem 'dotenv' 
```
Then run `bundle` to install those gems. 

## How to use
1. You will need to have an API Key in order for this: <https://home.openweathermap.org/users/sign_up>

2. After you have signed up click on API Keys and copy the key.
3. In the folder *Mini-API-Testing* create a `.env` file and type in `API_KEY=`
4. Paste the key next to it making sure there is **no gaps**, otherwise the key will not work.
5. In terminal, go into the folder and run `RSpec`.
6. You can should see that all the tests has passed.