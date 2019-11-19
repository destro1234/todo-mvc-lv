# Step 1: Integrate Basic Theme to Asset Pipeline

[X] / - And see a stubbed out, non-dynamic, page with the theme.

# Step 2: Allow people to CRUD lists.

[ ] ListsController
  #index
  - see all their lists
  - doubling as my #new action in that it is presenting the person with a form to create a new list
  / - Index all the lists...
- create a list

- show a list

- i need a model
- i need a controller
- i should a generate resource

Does it impact the DB?
Does it impact my URLS? '/lists/1' #

# Step 3: Add Items to a List

- Make the items in a list
  - a list has many items and every item belongs to a list

  Lists
    2       Shopping List

  Items
  id        description     list_id
    1           cookies         2
    1             milk          2


  CREATE ACTION for an ITEM in a LIST - What is the URL / HTTP method fo that?

  - The form is already present in the list show page.
  - What URL does this form imply?

  POST lists/:id/items #=> Doesn't describe which list we're adding an item to?

  An item doesn't exist in our application outside of the context of the list it belongs to.

  Nested Resource - Items are nested in terms of URLS under their parent list.


  Does it impact the DB? - I probably need an items table - associated with a list.



  Does it impact my URLS? '/lists/1' #



  # Step 4: Add Validations

  Validate that lists have a name
  Validate that items have a description

  # Step 5: I want to add state (complete, incomplete) to Items in a list.
   - Marking items as complete or incomplete

   What URLs do i need and how might my database change?
    - the idea of an item being complete or incomplete require data.
    - new forms for updating the status of an item - which means new URLS

    /lists/1/items
    PUT/PATCH /lists/1/items/1 - Updating the item 1 in list 1
    PUT/PATCH /lists/:list_id/items/:id

    I know i need to steal the checkbox HTML from todomvc


    add this to the view
    <input class="toggle" type="checkbox">

    I need that JS function to submit the form when you click the checkbox

    REFACTOR #1: Start using partials in '/lists/show'






  # Step 6: Deleting Items from a list
    I know i need a new button or link for the delete.

    That needs to hit some sort of URL - we can look that up.

    - RESTful conventions
    - How do we trigger a DELETE request?
    - Browsers only support GET and POST

    a controller action to process the deleting of the item.

    #Step 7: User Signup and Login

    #Step 8: Users have lists and con only see their lists. *








# Step Whatever: Fix Down Arrow on Make a List Form
