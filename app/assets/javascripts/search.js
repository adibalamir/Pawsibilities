$(document).ready(function() {

  $(".reveal-checkbox-container").click(function() {
     $(this).siblings(".checkbox-container").slideToggle();
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