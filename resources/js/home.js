// public/js/custom.js

$(document).ready(function () {
    $(".card").click(function () {
        var title = $(this).find(".card-title").text();
        var type = $(this).find(".card-text:eq(0)").text();
        var content = $(this).find(".card-text:eq(1)").text();

        var imageSrc = $(this).find("img").data("src");

        $("#postModal .modal-body").html(`
            <img src="${imageSrc}" alt="${title}" class="img-fluid">
            <h5>${title}</h5>
            <p>ประเภท: ${type}</p>
            <p>${content}</p>
        `);

        $("#postModal").modal("show");
    });
});

const row = document.querySelector(".row");
let isMouseDown = false;
let startX;
let scrollLeft;

row.addEventListener("mousedown", (e) => {
    isMouseDown = true;
    startX = e.pageX - row.offsetLeft;
    scrollLeft = row.scrollLeft;
});

row.addEventListener("mouseleave", () => {
    isMouseDown = false;
});

row.addEventListener("mouseup", () => {
    isMouseDown = false;
});

row.addEventListener("mousemove", (e) => {
    if (!isMouseDown) return;
    e.preventDefault();
    const x = e.pageX - row.offsetLeft;
    const walk = (x - startX) * 3;
    row.scrollLeft = scrollLeft - walk;
});

$("#animeCarousel").carousel({
    interval: 1000, // 1 นาที = 60,000 มิลลิวินาที
});

$(document).ready(function () {
    $(".view-details-button").click(function () {
        var postTitle = $(this).data("post-title");
        var postContent = $(this).data("post-content");

        // อัปเดต Modal ด้วยข้อมูลของการ์ดที่เกี่ยวข้อง
        $("#postModalLabel").text(postTitle);
        $("#modalCardTitle").text(postTitle);
        $("#modalCardContent").text(postContent);

        // เปิด Modal
        $("#postModal").modal("show");
    });
});

$(document).ready(function () {
    $(".read-more-button").click(function () {
        var postId = $(this).data("id");
        var cardInfo = $('.card-info[data-target="' + postId + '"]').html();

        // Populate the modal with the card info
        $("#postModal .modal-body").html(cardInfo);

        // Show the modal
        $("#postModal").modal("show");
    });
});
