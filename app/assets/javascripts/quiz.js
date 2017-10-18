



(function () {
    $(document).on('turbolinks:load', function () {
        var app = new Vue({
            el: '#app',
            data: {
                qname: '',
                qlink: "",
                answers: []
            },
            methods: {
                submitAnswers: function () {
                    $.ajax({
                        type: "POST",
                        url: Window.url,
                        data: { answers: this.answers },
                        success: function (resp) {
                            console.log(resp)
                           
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
                        },
                        dataType: "json"
                    });
                }
            }
        })
    })


})();








