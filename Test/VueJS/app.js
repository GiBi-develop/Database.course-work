const car = (name, model, owner, year, phone, image) => ({name, model, owner, year, phone, image})

const cars =[
    car('Ford ','Focus','Max',2016,'+7 891826 1226','images/3.jpeg'),
    car('Ford ','Focus','Max',2016,'+7 891826 1226','images/2.jpg'),
    car('Ford ','Focus','Max',2016,'+7 891826 1226','images/1.jpg')

]


new Vue({
    el: '#app',
    data: {
        cars: cars
    }
})
