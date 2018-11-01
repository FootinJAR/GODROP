<aside class="sidebar-left" role="complementary">
    <!-- navigation  -->
    <nav class="navigation">
        <div class="title">Меню</div>
        <ul class="navigation-list">
            <li>
                <a href="/">
                    <div class="image">
                        <span class="icon-sensor"></span>
                    </div>
                    <div class="text">Играть</div>
                </a>
            </li>
            <li>
                <a href="/about.php">
                    <div class="image">
                        <span class="icon-dialogue"></span>
                    </div>
                    <div class="text">О сайте</div>
                </a>
            </li>
           <!-- <li><a href="/top.php">
                <div class="image">
                    <span class="icon-star"></span>
                </div>
                <div class="text">ТОП игроков</div>
            </a></li> !-->
            <li><a href="/history.php">
                <div class="image">
                    <span class="icon-book"></span>
                </div>
                <div class="text">История</div>
            </a></li>
            <?php if (isset($_SESSION['steamid'])) {
                $exit_class = '';
            } else {
                $exit_class = 'hidden';
            }
            ?>
            <li><a href="settings-page.php" class=" <?php echo $exit_class; ?>">
                <div class="image">
                    <span class="icon-tools"></span>
                </div>
                <div class="text">Настройки</div>
            </a></li>
            <li>
                <a href="steamauth/logout.php" class="action-logout <?php echo $exit_class; ?>">
                    <div class="image">
                        <span class="icon-off"></span>
                    </div>
                    <div class="text">Выйти</div>
                </a>
            </li>
        </ul>
    </nav>
    <!-- navigation end -->

    <div class="side-banner">
        <a href="http://steamcommunity.com/id/user/edit" target="_blank"><img src="/img/banner_prize.png"></a>
        <p class="bonus_ru" style="display: block;">Добавь в свой ник <a href="http://steamcommunity.com/id/user/edit" target="_blank">Steam</a> <span class="side-bonus-name">GODROP.RU</span> и получи <span class="side-bonus-game-price">бонус</span> к выигрышу <img class="percent" src="/img/5percent.png"></p>
    </div>

    <div class="side-last-winner">
        <div class="title">Последний победитель:</div>
        <div class="player-image" id="winner-avatar">
            <img src="https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/43/4364ed317434dfd223475b228c5d54cf55ef4025_full.jpg" alt="">
        </div>
        <div class="name" id="winner-name">CS:GO-Start</div>
    </div>
    <div class="side-last-winner-bottom">
        <div class="captions">
            Выигрыш:<br>
            Шанс:
        </div>
        <div class="numbers">
            <div class="sum">~ <span id="winner-money">692.29 руб.</span></div>
			<div class="chance"><span id="winner-chance">60</span></div>
        </div>
    </div>

    <!-- side-online -->
    <div class="side-online">
        <span class="title">Сейчас на сайте человек:</span> <span class="online-num" id="inf1">0</span>
    </div>
    <!-- side-online end -->

    <!-- side-support -->
    <div class="side-support">
        <a href="https://vk.com/twilightblaze" target="_blank">Тех. поддержка</a>
    </div>
    <!-- side-support end -->
</aside>