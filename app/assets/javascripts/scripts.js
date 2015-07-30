$(function(){
  $videoPost = ""
  $(".box-post").on("click", function(){
      console.log(this.id);
      $videoPost = this.id
      console.log($videoPost);
      $('#ytplayer').attr("src", $videoPost);
      $('#ytplayer').load()
      $('#ytplayer').play()
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
