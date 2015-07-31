$(function(){

  $(".box-post").on("click", function(){
      console.log(this.id);
      $videoPost = this.id;
      console.log($videoPost);
      $(".modal-body").append(
        "<iframe id='ytplayer' width='1150' height='700' src="+this.id+"/>"
      )
  })

  $(".more-skaters").on("click", function(){
    $(".crew-skaters-container").css("padding-bottom", "400px");
    $(".more-skaters").addClass("clicked")
  })

  $(".clicked").on("click", function(){
    $(this).css("color", "red");

  })
  console.log("it's working!!!")
})

//
// "<div class='container'>
//   <div class='row crew-skaters-container'>
//     <div class='col-md-12 col-xs-12'>
//       <h3>Crew Members:</h3>
//       <%@skaters.each do |s|%>
//       <div class='col-sm-2 col-xs-12' data-toggle='modal' data-target='#myModal'>
//         <a href='/skaters/<%=s.id%>'><div class='background-wrapper'>
//           <img class='crew-skater' src='<%=s.photo%>' />
//           <div class='image-caption'>
//             <a href='/skaters/<%=s.id%>'><h1><%=s.name%></h1></a>
//           </div>
//         </div></a>
//       </div>
//       <%end%>
//     </div>
//   </div>
// </div>"
