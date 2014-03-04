# Former js
Simple lib to manipulate form data (read and write)

## Deps
None

## Dev Deps
NodeJS+Bower+Brunch

## Features 
* Parse form data as object
Example:
```
<form id="post_form">
   <input type="text" name="post.name" value="Name"/>
   <input type="checkbox" name="post.is_private" value="true" checked="checked"/>
   <select name="post.category">
      <option value="sports" selected>Sports</option>
      <option value="politics">Politics</option>
   </select>
   <input type="text" name="post.tags[]" value="football"/>
   <input type="text" name="post.tags[]" value="uefa"/>
</form>
```
In your JS:
```
data = FormJS.parse(document.getElementById('post_form'));


data = {
   post:{
      name: 'Name',
      is_private: 'true',
      category: 'Sports',
      tags:[
         'football',
         'uefa'
      ]
   }
}

```
* Fill form data from object
* Use name transformers (e.g. Rails name parsers) and value parsers or build your own.
Example:
```
<form id="post_form">
   <input type="text" name="post[name]" value="Name"/>
   <input type="checkbox" name="post[is_private]" value="true" checked="checked"/>
   <select name="post[category]">
      <option value="sports" selected>Sports</option>
      <option value="politics">Politics</option>
   </select>
   <input type="text" name="post[tags][]" value="football"/>
   <input type="text" name="post[tags][]" value="uefa"/>
</form>
```