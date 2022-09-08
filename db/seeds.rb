# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Employee.create(email: "kk@gmail.com", password: "123456",  name: "kk", mobile: "9893454121", address:"rajram", type: "Employee", status: "no") 
# Employee.create(email: "i@gmail.com", password: "123456",  name: "i", mobile: "898948234", address:"sangita", type: "Employee", status: "no") 
# Hr.create(email: "hr@gmail.com", password: "123456",  name: "hruv", mobile: "989546833", address:"mukharji", type: "hr", status: "noUser(id: integer, email: string, encrypted_password: string, reset_password_token: string, reset_password_sent_at: datetime, remember_created_at: datetime, created_at: datetime, updated_at: datetime, name: string, mobile: string, address: string, type: string, status: string) 
User.create(email: "shan1@gmail.com", password: "123123", name: "shan1", mobile: "8908328400", address: "Lig 146", type: "Employee") 
User.create(email: "shan2@gmail.com", password: "123123", name: "shan2", mobile: "8908328400", address: "Lig 146", type: "Employee") 
User.create(email: "shan3@gmail.com", password: "123123", name: "shan3", mobile: "8908328400", address: "Lig 146", type: "Employee") 
Leave.create( leaves_type: "sick", leave_discription: "sick feeling low", starting_date: "20-02-2022", end_date: "19-02-2022",user_id: 5)


# <h1>Total Leaves: <%=  @leaves.count %></h1>  
<!-- <% if current_user %>
 <p>Hello <%= current_user.email%>!</p>
 <p>You Have Sucssfully create Account</p>

 <%= link_to "Sign out", destroy_user_session_path, :method => :delete %>

 <% else %>
 <p>you are not signin .</p>
 <%= link_to "Sign up" , new_user_registration_path %>
 <br>
 <%= link_to "Login" , new_user_session_path %>


<% end %> -->

<% if current_user.employee? %>
<h1>hello,emp</h1>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Leave Managment System</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><%= link_to "Sign out", destroy_user_session_path, :method => :delete %> </li>
      <%= link_to "log out",  destroy_user_session, :method => :delete %> 
    </ul>
  </div>
</nav>
</body>
</html>

<!-- <%= link_to "Sign out", destroy_user_session_path, :method => :delete %> -->
<% end %>
<% if current_user.hr? %>
<h1>hello,hr</h1>
<%= link_to "Sign out", destroy_user_session_path, :method => :delete %>
<% end %> 
