$(document).ready(function() {

  $(".dropdown-toggle").click(function() {
     $(this).siblings(".dropdown-menu").slideToggle();
  });

});


 // <div class="search-parameter">
 //      <button type=button class="reveal-checkbox-container">Gender</button>
 //      <div class="checkbox-container">
 //        <% genders = ["M", "F"] %>
 //        <% genders.each do |gender| %>
 //          <%= check_box_tag("gender[]", value = gender, @selected_genders.include?(gender)) %>
 //          <%= label_tag(gender) %> <br/>
 //        <% end %>
 //      </div>
 //    </div>