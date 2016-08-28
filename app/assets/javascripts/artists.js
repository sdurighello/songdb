

// function removeSong(){
//
//   event.preventDefault();
//     var $result = $("#search-results");
//     var $keyword = $("#keyword").val();
//     $(".todo").each(function(i){
//       var $title = $(this).find("label").html();
//       if($title === $keyword){
//         $result.html($title);
//       } else {
//         $(this).hide();
//       }
//     })
//     $("#keyword").val(null);
//
//
//   $.ajax({
//     type: "PUT",
//     url: "/todos/" + todoId + ".json",
//     data: JSON.stringify({
//       todo: { completed: isCompleted }
//     }),
//     contentType: "application/json",
//     dataType: "json"})
//
//     .fail(function(error) {
//       console.log(error);
//       alert("Uh oh! Could not change the completed state of this todo!");
//     })
//
//     .done(function(data) {
//       console.log(data);
//
//       if (data.completed) {
//         listItem.addClass("completed");
//       } else {
//         listItem.removeClass("completed");
//       }
//
//       updateCounters();
//     });
// }
//
// $(document).ready(function() {
//   $("remove_song").bind('submit', removeSong);
//
// });
