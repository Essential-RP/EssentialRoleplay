$(document).on("click", "#get-location", function (e) {  
    e.preventDefault();
    var event = $(this).data("event");
    $.post("https://essential-jobtablet/CreateBlip", JSON.stringify({
        event: event,
    }));
});

function addJobsList(data) {
    $(".tablet__job--list").html("");
    for (let i = 0; i < data.length; i++) {
        const v = data[i];
        var addOption = 
        `<div class="tablet__job--item animate__animated animate__fadeInUp animate__delay-${i}s">
            <div class="tablet__job--item--eles">
                <i class="${v.icon} icon"></i> 
            </div>
            <div class="tablet__job--item--eles">
                <div class="tablet__job--content">
                    <p class="tablet__job--content--name">${v.label}</p>
                    <div class="tablet__job--content--bottom">
                        <p class="tablet__job--content--bottom-salary bottom__content">
                            <span><i class="fa-solid fa-star"></i></span>
                            <span class="salary__content ${v.salary}">${v.salary}</span>
                        </p>
                        <p class="bar"></p>
                        <p class="tablet__job--content--bottom-require bottom__content">
                            <span><i class="fa-solid fa-user"></i></span>
                            <span>${v.mem}</span>
                        </p>
                        <p class="bar"></p>
                        <p class="tablet__job--content--bottom-require bottom__content">
                            <span><i class="fa-solid fa-users"></i></span>
                            <span>${v.count}</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="get__overlay" data-event="${v.event}" id="get-location">
                <i class="fa-solid fa-map-location-dot"></i>
                <p>Set GPS Location</p>
            </div>
        </div>`;
        $(".tablet__job--list").append(addOption);
    };
};

function LoadJobCenter() {
    $.post('https://essential-jobtablet/GetData', JSON.stringify({}), function() {});
};

$(function() {  
    window.addEventListener('message', function(e) {
        if (e.data.action === 'jobcenter') {
            closeAllScreen();
            $("#job-screen").fadeIn("1500");
            addJobsList(e.data.data);
        };
    });
});