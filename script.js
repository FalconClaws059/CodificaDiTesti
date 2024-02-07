

function thisFunction(){

    
    anime({
        targets: ".menu-button",
        filter: "brightness(120%)",        
        duration: 1000,
        easing: 'easeOutElastic(2, 0.4)'
    })
    
    anime({
        targets: ".note",
        rotateX: '90deg',     
        duration: 500
    })

    $("#shownote").on({
        'click' : function(){
            if (!$(this).hasClass("shown")){
                anime({
                    targets: ".note",
                    rotateX: '0deg',        
                    duration: 500
                })
                $(this).toggleClass("shown");
            }else{

                anime({
                    targets: ".note",
                    rotateX: '90deg',     
                    duration: 500
                })
                $(this).toggleClass("shown");
            }
        }
    })

    $(".menu-button").on({
        'click': function() {   
            if($(this).hasClass("disabled")){       // Se il pulsante viene attivato
                
                anime({
                    targets: $(this)[0],
                    filter: "brightness(70%)",        
                    duration: 1000
                })
                $(this).toggleClass("disabled")
            }else{
                
                anime({
                    targets: $(this)[0],
                    filter: "brightness(120%)",        
                    duration: 1000
                })
                $(this).toggleClass("disabled")
            }
        },
    });

    $("#A").on({
        'click': function() {
            $('.choice').children(".abbr").toggleClass("hidden");
            $('.choice').children(".expan").toggleClass("hidden");
        } 
    });



    $("#B").on({
        'click': function() {
            $('.del').toggleClass("hidden");
        } 
    });

    $("#C").on('click', function() {
        $(".sic").toggleClass("hidden");
        $(".corr").toggleClass("hidden");
    });
    
};


$(document).ready(thisFunction);