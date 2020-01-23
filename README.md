# SalesLoft Code Challenges

This app fulfills the following code challenges:

*`Part 1`*: Show a list of People records that are available via the API.  Display each Person’s name, email address, and job title.

*`Part 2`*: Create a button that, when clicked, displays a frequency count of all the unique characters in all the email addresses of all the People you have access to, sorted by frequency count.

*`Part 3`*:  Create a 2nd button that would show us a list of suggested possible duplicate People.  A human can tell that “benoliv@salesloft.com” and “benolive@salesloft.com” are very likely the same person with just one of the email addresses having a typo.  However we would like you to decide what might constitute a duplicate - up to you.

### Ruby version

```
> ruby --version
ruby 2.6.5p114 (2019-10-01 revision 67812) [x64-mingw32]
```
### Rails version

```
> rails --version
Rails 5.2.4.1
```
### Configuration

```
> bundle install

if using a Mac or Git Bash on Windows
> cp .env.example .env 
```
Add the API key to `.env`

### Run the app
```
> rails server
```
Look at the People list here after starting the server: `http://0.0.0.0:3000/people`
