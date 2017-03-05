var current_fs, next_fs, previous_fs; //fieldsets
        var left, opacity, scale; //fieldset properties that are animated

        $(".next").click(function(){
            console.log("123123123");
            current_fs = $(this).parent();
            next_fs = $(this).parent().next();
            //activate the next step on the progressbar using the index of next_fs
            $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
            console.log("herhe");

            //Show the next fieldset
            next_fs.show();
            //Hide the current fieldset with style
            current_fs.animate({opacity:0}, {
                step:function(now, mx){
                    //as the opacity of current_fs reduces to 0
                    //1. scale current_fs down to 80%
                    scale = 1-(1-now)*0.2;
                    //2. bring next_fs from the right(50%)
                    left = (now*50)+"%";
                    //3. increase opacity of next_fs to 1 as it moves in
                    opacity = 1-now;
                    current_fs.css({'transform':'scale('+scale+')'});
                    next_fs.css({'left':left, 'opacity': opacity});
                },
                duration: 800,
                complete:function(){
                    current_fs.hide();
                }
                //This comes from the custom easing plugin
            });
            $(".previous").click(function(){
                current_fs = $(this).parent();
                previous_fs = $(this).parent().prev();
                //activate the next step on the progressbar using the index of next_fs
                $("#progressbar li").eq($(" fieldset").index(current_fs)).removeClass("active");
                console.log("herhe");

                //Show the next fieldset
                previous_fs.show();
                //Hide the current fieldset with style
                current_fs.animate({opacity:0}, {
                    step:function(now, mx){
                        //as the opacity of current_fs reduces to 0
                        //1. scale current_fs down to 80%
                        scale = 0.8+(1-now)*0.2;
                        //2. bring next_fs from the right(50%)
                        left = ((1-now)*50)+"%";
                        //3. increase opacity of next_fs to 1 as it moves in
                        opacity = 1-now;
                        current_fs.css({'left':left});
                        previous_fs.css({'transform':'scale('+scale+')', 'opacity': opacity});
                    },
                    duration: 800,
                    complete:function(){
                        current_fs.hide();
                    }
            })
        });
  });