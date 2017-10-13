


$(document).on('turbolinks:load', function () {
    var app = new Vue({
        el: '#app',
        data: {
            qname: '',
            qlink:""
        },
        methods: {
            submitNewQuiz: function () {
                $.ajax({
                    type: "POST",
                    url: "/quiz/new",
                    data: {name: this.qname},
                    success: function(resp){
                        link = "/q/"+resp.qid
                        app.qlink= link 
                    },
                    dataType: "json"
                  });
            }
        }
    })
})





