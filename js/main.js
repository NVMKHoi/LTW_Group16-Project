

// index - tabs

const tabs = document.querySelector(".tabs-head");
const tabButton = document.querySelectorAll(".tablinks");
const contents = document.querySelectorAll(".tabcontent");

tabs.onclick = e => {
    const id = e.target.dataset.id;
    if (id) {
        tabButton.forEach(btn => {
            btn.classList.remove("active");
        });
        e.target.classList.add("active");

        contents.forEach(content => {
            content.classList.remove("active");
        });
        const element = document.getElementById(id);
        element.classList.add("active");
    }
}

function showMore() { //show an extra row in "chuyen-de-iphone.html"
    document.getElementById('row2').style.display = 'flex';
    document.getElementById('more-btn').style.display = 'none';
    document.getElementById('less-btn').style.display = 'block';
}

function showLess() { //hide row
    document.getElementById('row2').style.display = 'none';
    document.getElementById('more-btn').style.display = 'block';
    document.getElementById('less-btn').style.display = 'none';
}

function more() {
    document.getElementById("xm").style.display = 'flex';
    document.getElementById("more").style.display = 'none';
    document.getElementById("hide").style.display = 'block';
}

function hide() {
    document.getElementById("xm").style.display = 'none';
    document.getElementById("more").style.display = 'block';
    document.getElementById("hide").style.display = 'none';
}

