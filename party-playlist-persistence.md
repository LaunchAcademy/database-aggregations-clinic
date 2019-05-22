
### Acceptance Criteria

* Navigating to `/songs/new` presents the user with a form to add a new song. The form should allow a user to designate the title, song_length (string), artist and album for a song.
* Submitting the form with all required fields filled out persists the song in the database via `POST` request to `/songs`
* The user is redirected to the `/songs` index page when the form has been submitted correctly. The newly persisted song should appear on the page.
* If the user submits the form without all required fields, the `/songs/new` page should be re-rendered with error messages telling the user which fields cannot be blank (only the `album` field should be optional).

### Non-Core
* If the form is filled out incorrectly, it should be re-rendered with pre-filled values that correspond to what they had previously entered.
* Normalize your database by creating a new `artists` table in your database that forms a one-to-many relationship with the `songs` table respectively. Your app should still satisfy all of the core acceptance criteria, but submitting the form should add a new value to both the `songs` table and `artists` table with your new song information.

https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql?view=sql-server-2017
https://ryanwingate.com/tools/sql/aggregations/
https://www.tinahang.com/2018/08/07/sql-aggregations/
