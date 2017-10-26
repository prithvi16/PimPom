



(function () {
    $(document).on('turbolinks:load', function () {
        var app = new Vue({
            el: '#app',
            data: {
                qname: '',
                qlink: "",
                answers: []
            },
            computed: {
                fblink: function () {
                    return 'https://facebook.com/sharer/sharer.php?u=http%3A%2F%2Fpimpom.ml' + this.qlink;
                },
                twlink: function () {
                    return 'https://twitter.com/intent/tweet/?text=Answer%20this%20quick%20poll&amp;url=http%3A%2F%2Fpimpom.ml' + this.qlink;
                },
                golink: function () {
                    return 'https://plus.google.com/share?url=http%3A%2F%2Fpimpom.ml' + this.qlink;

                },
                wplink: function () {
                    return 'whatsapp://send?text=Hey!%20Answer%20a%20quick%20poll%20about%20me!.%20http%3A%2F%2Fpimpom.ml' + this.qlink;
                }
            },
            methods: {
                submitAnswers: function () {
                   
                    
                    $.ajax({
                        type: "POST",
                        url: window.location.href,
                        data: { answers: this.answers },
                        success: function (resp) {
                            console.log(resp)
                            Turbolinks.visit(resp.result, { action: "replace" })
                            
                        },
                        dataType: "json"
                    });

                }
                ,
                submitNewQuiz: function () {
                    $.ajax({
                        type: "POST",
                        url: "/quiz/new",
                        data: { name: this.qname },
                        success: function (resp) {
                            link = "/q/" + resp.qid
                            app.qlink = link
                            $("#thelink").removeClass("hide-my-ass");
                            $("#newsub").addClass("hide-my-ass");
                            console.log("woow");
                        },
                        dataType: "json"
                    });
                }
            }
        })
    })


})();








