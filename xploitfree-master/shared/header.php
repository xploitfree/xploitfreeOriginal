<?php
    include_once "funcs.php";
    include_once './shared/svgs.php'; 
?>
<header class="navheader">
    <div class="content content-wrap">
        <div class="navlogo-section">
            <a class="navlink" href="home.php">
                <div class="navlogo">
                    <span class="brandlogo"><?php logosvg(70, 70); ?></span>
                    <span class="brandname">XploitFree</span>
                </div>
            </a>
        </div>
        <div class="navmenu">
            <a class="navlink navitem" href="services.php"><span class="menutext">Services</span></a>
            <a class="navlink navitem" href="trainings.php"><span class="menutext">Trainings</span></a>
            <a class="navlink navitem" href="aboutus.php"><span class="menutext">About us</span></a>
            <a class="navlink navitem" href="contactus.php"><span class="menutext">Contact us</span></a>
            <a class="navlink navitem" href="blog.php"><span class="menutext">Blog</span></a>
        </div>
    </div>
    <div class="content content-wrap">
        <div class="pagehead">
            <p class="headtext">
                <?php 
                        echo get_heading();
                ?>
            </p>
        </div>
    </div>
</header>
<div class="pichead"></div>