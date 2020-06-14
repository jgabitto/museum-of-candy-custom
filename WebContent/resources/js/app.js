const foodForm = document.getElementById('foodForm');
//const search = document.querySelector('input');
//const latlongeDisplay = document.getElementById('lead1');
//const locationDisplay = document.getElementById('lead2');
//const forecastDisplay = document.getElementById('lead3');
//const insertCity = document.getElementById('insertCity');

console.log("Hello");

foodForm.addEventListener('submit', (e) => {
	e.preventDefault();
    
    try {
    	
    	let formData = new FormData(foodForm);
    	
        const data = {
                'foodName': formData.get('foodName'),
                'cuisineSelect': formData.get('cuisineSelect'),
                'diet': formData.get('diet'),
                'excludeIngredients': formData.get('excludeIngredients'),
                'intolerances': formData.get('intolerances')
        };
        
        console.log(data);
//    	
//	    const response = await fetch('/foodSearch', {
//	    	method: 'POST',
//	    	body: JSON.stringify(data),
//	    	headers: {'Content-Type': 'application/json'}
//	    });
	    
	    
//	    console.log(response);
	    
	    fetch(`museum-of-candy-custom/foodSearch`,
	    		{
	    			method: 'POST',
	    			headers: {
	    			'Content-Type': 'application/json'
	    			},
	    			body: JSON.stringify(data),
	    		}).then((response) => {
	    response.json().then((data) => {
	    	if (data.error) {
	            console.log(data.error);
	        } else {
	            console.log(data);
	        }
	    	})
	    })
    } catch (e) {
    	console.log(e);
    }
})