const rating = document.querySelector('.feeling');
const child = document.querySelectorAll('.child');
const feedback_section = document.querySelector('.mood-section');
const btn = document.querySelector('#btn');

let icon;
rating.addEventListener('click', (event) => {

    icon = event.target.parentNode;

    for (let i = 0; i < child.length; i++) {
        //console.log(child[i])
        child[i].classList.remove('active');
    }

    if (!icon.classList.contains('active')) {
        icon.classList.add('active');
    }
    // console.log(event.target.parentNode);
})

btn.addEventListener('click', () => {
    //console.log(icon);
    const value = icon.getAttribute('data-value');
    let user_feedback;
    let user_feedback_icon;

    if (icon === undefined) {
        user_feedback = "";
    } else {
        user_feedback = icon.children[1].innerText;
        user_feedback_icon = icon.children[0].innerText;
    }

    if (user_feedback !== "") {
        // console.log(user_feedback_icon)
        
      //store in database. Get the value with "value"
        // Get the current session ID
        var session_id = '<?php echo session_id(); ?>';

        // Define the data to be sent in the POST request as a FormData object
        var data = new FormData();
        data.append('session_id', session_id);
        data.append('value', value); // Add the value variable
        // Add any other data you want to send as key-value pairs

        // Make the POST request using the fetch function
        fetch('php/uploadMood.php', {
            method: 'POST',
            body: data,
        })
        .then(response => response.text()) // Use the .text() method to get the response as a string
        .then(html => {
            // Handle the response from the PHP file
            console.log(html);
        })
        .catch(error => {
            // Handle any errors that occur during the POST request
            console.log(error);
        });
        
        feedback_section.innerHTML = `
                    <div class="response-screen ">
                        <p>${user_feedback_icon}</p>
                        <h3>you are feeling ${user_feedback} ${value} today</h3>
                        <p>Thank You  for your response</p>
                
                    <div class="feedback-button">
                        <a href="view.html">Go Home</a>
                    </div>
                    </div>
                `;
    }

})
















