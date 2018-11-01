<?php include('head.php'); ?>

<body id="main-page">
<div class="wrapper">
    
<?php include('header.php'); ?>

<div class="content" role="main">
<div class="container">
<div class="content-box shown">
<div class="content-main">
<div class="content-main-inner">
    <!-- promo noauth -->
    <?php if(!isset($_SESSION['steamid'])) {
	$detailsWrapClass = 'hidden';
	$enterClass = ''; 
        $text_game = 'Вступай в игру сейчас и выиграй: '; 
        ?>
        <div class="promo">
            <!-- jackpot -->
            <div class="jackpot">
                <div class="main-jackpot">
                    <div class="main-jackpot-value"><span class="jackpotNum">10000 руб.</span></div>
                    <div class="main-jackpot-title">
                        <strong>главный джекпот игры:</strong>
                    </div>
                </div>
                <h3>Авторизируйся, чтобы испытать удачу</h3>
                <div class="buttons">
                    <a href="logger.php?login" class="btn-yellow action-login">
                        <span class="icon-steam"></span>
                        <span class="text">Войти на сайт через Steam и попробовать получить <strong><span class="jackpotNum">1 000 руб.</span>!</strong></span>
                    </a>
                </div>
                <p><strong>Участвующие вносят скины, по достижении определенного максимального количества случайным образом выбирается победитель, который получит все скины. Шанс выигрыша зависит от стоимости внесенных скинов.</strong></p>
            </div>
            <!-- jackpot end -->

            <!-- infos -->

            <div class="infos">
                <div class="infos-columns">
                    <div class="column-25">
                        <div class="column-inner">
                            <div class="infos-item">
                                <div class="infos-item-title">Сегодня игр</div>
                                <div class="infos-item-value totalGamesPlayed" id="inf7">0</div>
                            </div>
                        </div>
                    </div>
                    <div class="column-25">
                        <div class="column-inner">
                            <div class="infos-item">
                                <div class="infos-item-title">Сегодня уникальных игроков</div>
                                <div class="infos-item-value totalUniquePlayers" id="inf3">0</div>
                            </div>
                        </div>
                    </div>
                    <div class="column-25">
                        <div class="column-inner">
                            <div class="infos-item">
                                <div class="infos-item-title">Сегодня розыграно вещей</div>
                                <div class="infos-item-value"><span class="totalItems" id="inf8">0</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="column-25">
                        <div class="column-inner">
                            <div class="infos-item">
                                <div class="infos-item-title">Максимальный выигрыш</div>
                                <div class="infos-item-value">~<span class="maxPayed jackpotNum">0 руб.</span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- infos end -->
        </div>
    <?php } else {
        $text_game = 'НА КОНУ: '; 
        $detailsWrapClass = '';
        $enterClass = 'hidden'; 

        ?>

    <!-- promo end -->

    <!-- promo no token -->
    <div class="token-block promo hidden">
        <!-- jackpot -->
        <div class="jackpot">
            <!-- form-get-link -->
            <div class="form-get-link">
                <h4>Внимание! Необходимо ввести ссылку на обмен. <a class="trade-link" href="http://steamcommunity.com/id/id/tradeoffers/privacy#trade_offer_access_url" target="_blank">( Где взять ссылку? )</a></h4>
                <div class="form-line">
                    <div class="wrap-input"><input rel="get-trade-link" type="text" name="link" placeholder="Например: https://steamcommunity.com/tradeoffer/new/?partner=139344829&token=Ea-NK7ZF"></div>
                </div>
                <div class="buttons">
                    <div class="btn-yellow save-link">Запомнить ссылку</div>
                    <p>Обязательно <a href="http://steamcommunity.com/id/id/edit/settings" target="_blank" class="openinv-link">откройте инвентарь</a> в Steam для получения приза! </p>
                </div>
            </div>
            <!-- form-get-link end -->
        </div>
        <!-- jackpot end -->
    </div>
    <!-- promo end -->

    <!-- promo banner vk -->
    <div class="promo">
        <a href="https://vk.com/twilightblaze" target="_blank">
            <img src="img/vk-banner.png" alt="Открытие сайта">
        </a>
    </div>
    <!-- promo banner vk end -->
    <?php } ?>

    <div class="game">
    <div class="game-top">
        <a class="sound-link sound-link-on"><i class="icon-sound active"></i><span class="text">Выключить звук</span></a>
        <a class="sound-link sound-link-off hidden"><i class="icon-sound"></i><span class="text">Включить звук</span></a>

	<div class="game-title">Игра #<span class="game-num">100</span></div>
        <!-- <div class="beta-test">Игра находится на стадии тестирования. Просим извинения за возможные сбои.</div> -->
    </div>
    <div class="game-info gameend hidden">
        <div class="game-status"><strong>Игра #<span class="game-num">99</span> - закончилась!</strong></div>
        <div class="all-players">
            <div class="all-players-list" style="-moz-transform: translate3d(390px, 0, 0);-ms-transform: translate3d(390px, 0, 0);-o-transform: translate3d(390px, 0, 0);-webkit-transform: translate3d(390px, 0, 0);transform: translate3d(390px, 0, 0); -moz-transition: 13s ease;-o-transition: 13s ease;-webkit-transition: 13s ease;transition: 13s ease; backface-visibility: hidden;">
	    </div>
        </div>
        <div class="winner">
            <div class="winner-left">
                <h3>Победил игрок: <span id="winner-end"> ??? </span></h3>
                <div class="winner-cost">
                    <span class="winner-cost-title">Выигрыш: </span>
                    <span class="winner-cost-value">~ 100.0</span>
                    <span class="winner-cost-valuta"> руб.</span>
                </div>
                <p>Выигрыш можно получить в инвентаре Steam</p>
            </div>
            <div class="winner-right">
                <div class="newgame-timer">
                    <!-- <span class="newgame-timer-title">Новая игра через:</span>
                    <div class="timer countdownHolder">
						<span class="countMinutes"><span class="position"><span class="digit static" style="top: 0px; opacity: 1;">0</span></span><span class="position"><span class="digit static" style="top: 0px; opacity: 1;">0</span></span></span>
						<span class="countDiv countDiv0">:</span>
						<span class="countSeconds"><span class="position"><span class="digit static" style="top: 0px; opacity: 1;">0</span></span><span class="position"><span class="digit static" style="top: 0px; opacity: 1;">0</span></span></span>
					</div> -->
                </div>

                <div class="buttons">
                    <a class="btn-yellow put-link" href="https://steamcommunity.com/tradeoffer/new/?partner=139344829&token=Ea-NK7ZF" target="_blank">Внести депозиты первым</a>
                </div>
            </div>
            <span class="arrow-wh-top"></span>
            <span class="arrow-wh-top"></span>
            <span class="arrow-wh-top"></span>
        </div>
    </div>
    <div class="game-info gameactive">
        <div class="game-status">
            <span class="icon-bell"></span>
            <span class="text">до начала розыгрыша</span>
        </div>
        <div class="game-progress">
            <!-- timer -->
            <div class="timer countdownHolder" style="display: block;">
				<!-- <span class="countMinutes"><span class="position"><span class="digit static" style="top: 0px; opacity: 1;">0</span></span><span class="position"><span class="digit static" style="top: 0px; opacity: 1;">1</span></span></span>
				<span class="countDiv countDiv0">:</span>
				<span class="countSeconds"><span class="position"><span class="digit static" style="top: 0px; opacity: 1;">0</span></span><span class="position"><span class="digit" style="top: -2.1em; opacity: 0;">0</span><span class="digit" style="top: 0em; opacity: 1;">0</span></span></span> -->
                    <div id="timer" style="color:#333; font-weight:100;"><span id="timer-1" class="timer-digit">0</span><span id="timer-2" class="timer-digit">0</span>:<span id="timer-3" class="timer-digit">0</span><span id="timer-4" class="timer-digit">0</span>
		    </div>

			</div>
            <!-- timer end -->

            <div class="or-text" style="display: block;">или через</div>

            <!-- progressbar -->
            <div class="wrap-progressbar" style="box-shadow: none;">
                <div class="progressbar" data-val="0"></div>
                <div class="progressbar-text"><span id="items-count-temp" style="font-size:40px; font-weight:bold;">0</span>предметов</div>
                <div class="progressbar-value" id="pb" style="width: 0%;">
                    <div class="progressbar-stripes" style="background-color: yellow;"></div>
                </div>
            </div>
            <!-- progressbar end -->
        </div>

        <!-- game-price -->

        <div class="game-price">
            <div class="game-price-inner">
                <div class="game-price-content">
                    <p><?php echo $text_game; ?><span>~ <span id="jackpot-temp">0 руб.</span></span></p>
                    
                </div>
                <div class="game-price-decor-left">
                    <i class="arrow-wh-right"></i>
                    <i class="arrow-wh-right"></i>
                    <i class="arrow-wh-right"></i>
                    <div>
                        <span><s></s></span>
                        <span><s></s></span>
                    </div>
                </div>
                <div class="game-price-decor-right">
                    <i class="arrow-wh-left"></i>
                    <i class="arrow-wh-left"></i>
                    <i class="arrow-wh-left"></i>
                    <div>
                        <span><s></s></span>
                        <span><s></s></span>
                    </div>
                </div>
            </div>
        </div>
        <!-- game-price end -->
<a href="logger.php?login" class="btn-yellow action-login come_and_play <?php echo $enterClass; ?>">
    <span class="icon-steam"></span>
    <span class="text">Войти и играть</span>
</a>
   
 </div>

    <div class="game-content">
        <div class="details-wrap <?php echo $detailsWrapClass; ?>">
            <div class="details type-second">
                <div class="details-left">
                    <p>Вы вложили в игру - </p><p class="player-items-num" id="player-items-count">0</p> <span>(из 20)</span> предметов<p></p>
                    <div>Мин. ставка 1₽, <!--b>макс. ставка 400$</-->максимум предметов 20.</div>
                    <div>Чем выше ставка, тем больше шанс победить. <a href="/about.php">Подробнее</a></div>
                </div>
                <i class="arrow-gray-right"></i>
                <div class="details-middle">
                    <p>Ваш шанс: <b class="details-percent"><span id="chance-temp">0</span>%</b></p>
                    <!--div><a class="open-drop-count" href="#">Как считается?</a></div-->
                </div>
                <div class="details-right">
                    <a class="btn-yellow put-link" href="https://steamcommunity.com/tradeoffer/new/?partner=139344829&token=Ea-NK7ZF" target="_blank">Вложить еще</a>
                </div>
            </div>
        </div>
	<div class="gametime gamepause hidden">
        <img src="/img/clock.png">Игра окончена! Вносятся последние ставки.
        </div>

       <div class="players-percent hidden">
            <div class="players-arrows players-left" style="display: none;"></div>
            <div class="players-tape">
                
            </div>
            <div class="players-arrows players-right" style="display: none;"></div>
        </div>
        
        <!-- game-table -->
        <div class="def-table game-table">
            <table>
                <tbody id="game">
                </tbody>
            </table>
        </div>
        <!-- game-table end -->
        <div class="gametime gamestart">
            <span class="icon-start"></span>
            <div class="gametime-text first-row">Игра началась! Вносите депозиты!</div>
          < игрок сделавший первую ставку получает <b>бонус +2%</b> в случае выигрыша >
        </div>
    </div>
    <p class="steampowered">Powered by Steam, a registered trademark of Valve Corporation.</p>
</div>
</div>
</div>
<?php include('sidebar.php'); ?>
</div>
</div>
</div>
</div>

</body>
</html>
