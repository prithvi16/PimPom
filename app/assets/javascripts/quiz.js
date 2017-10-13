


$(document).on('turbolinks:load', function () {
    var app = new Vue({
        el: '#app',
        data: {
            qname: ''
        },
        methods: {
            submitNewQuiz: function () {
                console.log("works fine biatch");
            }
        }
    })
})





