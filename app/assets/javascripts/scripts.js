$(function(){
  // $postImage = "";
  // $videoPost = "";
  // $(".post-image").mouseenter(function(){
  //   $postImage = $(this);
  //   $(this).remove(".post-image");
  //   $(this).parents("box-post").append("<img class='post-image' style:'opacity:20%'' src='<%=p.cover_photo%>' />");
  //   console.log("do ittt");
  // })
  //
  // $(".box-post").mouseleave(function(){
  //   $(this).append('$post-image')
  //   console.log("do ittt");
  // })



  $(".box-post").on("click", function(){
      console.log(this.id);
      $videoPost = this.id;
      console.log($videoPost);
      $(".modal-body").append(
        "<iframe id='ytplayer' width='1150' height='700' src="+this.id+"/>"
      )
  })



  // $(".box-post").on("click", function(){
  //   $(this).css("z-index", 2);
  //   $(this).css("position", "fixed");
  //   $(this).animate({
  //     height:"500px",
  //     width: "500px",
  //   });
  // })
  //
  //
  // $('.box-post').click(function(){
  //   	$('.modal-body').empty();
  //   	var title = $(this).attr("title");
  //   	$('.modal-title').html(title);
  //   	$(this.innerHTML).appendTo('.modal-body');
  //   	$('#myModal').modal({show:true});
  // });

  console.log("it's working!!!")
})
