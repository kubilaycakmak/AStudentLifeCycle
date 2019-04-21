<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="apple-touch-icon" href="/static/images/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/static/images/apple-touch-icon-114x114.png" />
    <link rel="image_src" href="/static/images/logo.gif" />
    <link rel="shortcut icon" href="/static/favicon.gif" type="image/gif" />
    <link rel="stylesheet" type="text/css" href="b1.css" />
    <link rel="stylesheet" type="text/css" href="b2.css" />
    <link rel="stylesheet" type="text/css" href="b3.css" />
    <link rel="stylesheet" type="text/css" href="b4.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/app.css?id=b47f3d414476194f6347" />
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <title>The Crims</title>
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-1065895669"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'AW-1065895669');
    </script>
    <script type="text/javascript">
        window.imagePath = "/static/images/";
        window.staticPath = "/static/";
        window.userChannel = false;
        window.gangChannel = false;
        window.appVersion = "108";

        window.userState = { "messages": [], "messages_prefix": "", "redirect_to": false, "reload": false, "route": false, "route_props": [], "user": { "id": 17175026, "eid": "ZJpomGlplmugaJ2bapaYm2-ZlmfGYWaWxmxobsfHaMhjlW3EbXKUbZ4", "username": "kubilayckmk", "respect": 2, "credits": 0, "country": "tr", "language": "tr", "tolerance": 5, "strength": 5, "charisma": 5, "intelligence": 5, "cash": 400, "cash_numeric": 400, "bank": 0, "stamina": 100, "spirit_name": "Normal", "level": 1, "level_text_name": "LEVEL_PROSPECT", "assault_points": 1000, "character_text_name": "CHARACTER_GANGSTER", "addiction": 0, "avatar": "\/static\/images\/avatars\/avatar_18.jpg", "under_protection": false, "tickets": 200, "alive": true, "in_prison": false, "prison_end_time": null, "prison_end_time_formatted": null, "show_ads": false, "vip": false, "nightclub_id": 0, "new_message": false, "new_relation": false, "new_temp_relation": false, "new_gang": false, "new_task": false, "robbery_power": 3, "single_robbery_power": 3, "gang_robbery_power": 3, "assault_power": 3, "can_favourite_nightclubs": false, "equipment": ["Donan\u0131ml\u0131 \u00f6\u011fe yok"], "push_id": "216bfeabaa881a8f458d92c357292813", "skill_points": null, "gang_push_id": false, "new_relation_sound": true, "is_crew": false, "is_test": false, "gang": null, "is_gang_leader": false, "is_co_leader": false, "mui": false }, "tutorials": [{ "section": "bank", "type": 1, "title": "Bank Tutorial ", "youtube_id": "SvBUmvRRkfk", "guide": "" }, { "section": "blackmarket", "type": 1, "title": "Black Market", "youtube_id": "o9TGli1PmJU", "guide": "" }, { "section": "robbery", "type": 1, "title": "Robbery and Gang", "youtube_id": "d5OgPCIDgFE", "guide": "" }, { "section": "docks", "type": 1, "title": "The Docks", "youtube_id": "6FQ9YZey7-A", "guide": "" }, { "section": "robbery", "type": 1, "title": "How to donate to gang!", "youtube_id": "e4C6lPqi2Kk", "guide": "" }], "today": 9, "time": "g\u00fcn 9 13:28", "start_timestamp": 1555426800 };
        window.stateName = '899cedecb9132f7fe79736f8f80c415d';
        window.nightclubTimeout = 15;
        window.startTime = 1555426800;

        window.onload = function () {
            document.onkeydown = function (e) {
                let bannedKeys = [
                    'ArrowLeft',
                    'ArrowRight',
                    'Backspace',
                ];

                if ((e.metaKey || e.altKey) && bannedKeys.includes(e.key)) {
                    e.preventDefault();

                    return false;
                }

                return true;
            };
        }
    </script>
</head>

<body ondragstart="return false" ondrop="return false">
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous"
        src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=2300750460248519&autoLogAppEvents=1"></script>
    <div id="app">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="pull-left" href="/newspaper#/newspaper">
                        <img src="/static/images/tc-menu-logo.png" width="82" height="39">
                    </a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-left">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Search"><i
                                        class="icon icon-search"></i></a>
                                <ul class="dropdown-menu">
                                    <li style="padding: 10px">
                                        <form action="/user/search" method="post">
                                            <fieldset>
                                                <input type="text" name="search" value="" placeholder="Kullanıcı bul"
                                                    style="padding: 8px">
                                                <input type="submit" name="submit" value="Ara" class="btn btn-default">
                                            </fieldset>
                                        </form>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" id="menu-user" class="dropdown-toggle" data-toggle="dropdown">
                                    Profil <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="/user/17175026">
                                            Profil </a>
                                    </li>
                                    <li>
                                        <a href="/user/edit">
                                            Profili düzenle </a>
                                    </li>
                                    <li>
                                        <a href="#/user/tasks">
                                            Seviyeler </a>
                                    </li>
                                    <li>
                                        <a href="/user/17175026/stats">
                                            Yetenekler </a>
                                    </li>
                                    <li>
                                        <a href="/user/17175026/guestbook">
                                            Ziyaretçi defteri </a>
                                    </li>
                                    <li>
                                        <a href="/user/17175026/password">
                                            Şifre değiştirme </a>
                                    </li>
                                    <li>
                                        <a href="/user/changeusername">
                                            Kullanıcı adını değiştir </a>
                                    </li>
                                    <li>
                                        <a href="/user/17175026/logs">
                                            Son İşlemler </a>
                                    </li>
                                    <li>
                                        <a href="/user/ignore">
                                            Önemsizler listesi </a>
                                    </li>
                                    <li>
                                        <a href="/user/resetforumpassword?17175026">
                                            Forum parolası </a>
                                    </li>
                                    <li>
                                        <a href="/user/achievements?17175026">
                                            Başarılar </a>
                                    </li>
                                    <li>
                                        <a href="/reviews?17175026">
                                            Oyun incelemesi </a>
                                    </li>
                                    <li>
                                        <a href="/user/17175026/trustedaccounts">
                                            Güvenilir Hesaplar </a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="/credits">Krediler</a></li>
                            <li class="dropdown">
                                <a href="#" id="menu-stats" class="dropdown-toggle" data-toggle="dropdown">
                                    İstatistikler <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="/stats">
                                            İstatistikler </a>
                                    </li>
                                    <li>
                                        <a href="/stats/gangs">
                                            Çete durumu </a>
                                    </li>
                                    <li>
                                        <a href="/stats/killers">
                                            En çok adam öldürenler </a>
                                    </li>
                                    <li>
                                        <a href="/stats/game">
                                            Oyun istatistikleri </a>
                                    </li>
                                    <li>
                                        <a href="/stats/events">
                                            Geçmiş olaylar </a>
                                    </li>
                                    <li>
                                        <a href="#/stats/online">
                                            Online </a>
                                    </li>
                                    <li>
                                        <a href="/winners">
                                            Kazananlar </a>
                                    </li>
                                    <li>
                                        <a href="/stats/reputation">
                                            Şöhret </a>
                                    </li>
                                    <li>
                                        <a href="#/stats/medals">
                                            Madalyalar </a>
                                    </li>
                                    <li>
                                        <a href="#/stats/badges">
                                            Başarılar </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" id="menu-help" class="dropdown-toggle" data-toggle="dropdown">
                                    Yardım Merkezi <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="/help/guide">
                                            Oyun Rehberi </a>
                                    </li>
                                    <li>
                                        <a href="http://forum.thecrims.com">
                                            Forum </a>
                                    </li>
                                    <li>
                                        <a href="http://support.thecrims.com/index.php?_m=tickets&_a=submit">
                                            Bug bildir </a>
                                    </li>
                                    <li>
                                        <a href="/rules">
                                            Kurallar & Üyelik Koşulları </a>
                                    </li>
                                    <li>
                                        <a href="http://support.thecrims.com">
                                            Destek Merkezi </a>
                                    </li>
                                    <li>
                                        <a href="/crew">
                                            Takım </a>
                                    </li>
                                    <li>
                                        <a href="/changelog">
                                            Değişiklik listesi </a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="/recruit">Davet et</a></li>
                        </ul>
                        <div class="pull-right" style="color: #ffcc66; padding: 14px 0px 10px; font-size: 10px">
                            <div class="pull-left" id="game-time">
                                Gün 9 13:28 </div>
                        </div>
                        <div class="nav-collapse collapse">
                            <ul class="nav">
                                <li><a href="/reports" title="Raporlar"><i class="icon-file"></i></a></li>
                                <li>
                                    <a href="#/user/vip" title="VIP">VIP</a>
                                </li>
                            </ul>
                        </div>
                        <div class="nav-collapse collapse">
                            <ul class="nav pull-right">
                                <li><a href="/logout" title="Çıkış"><i class="icon-off"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="container">
            <div id="page">
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top">
                            <div id="header"></div>
                            <div id="content">
                                <table cellpadding="0" cellspacing="0" border="0" width="809" id="content_table">
                                    <tr>
                                        <td width="100%" valign="top">
                                            <div id="content_left" class="content_style">
                                                <ul class="action_menu">
                                                    <router-link :to="{ name: 'assault' }" tag="li" exact>
                                                        <div id="menu-assault">
                                                            <div id="menu-sprite-assault" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Çete
                                                                saldırıları</span><br />Biraz puşt pataklayın.
                                                        </div>
                                                    </router-link>
                                                    <router-link :to="{ name: 'robberies' }" tag="li" exact>
                                                        <div id="menu-robbery">
                                                            <div id="menu-sprite-robbery" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Soygun</span><br />Gidip
                                                            bir şeyi tırtıkla.
                                                        </div>
                                                    </router-link>
                                                    <router-link :to="{ name: 'nightlife' }" tag="li" exact>
                                                        <div id="menu-nightlife">
                                                            <div id="menu-sprite-nightlife" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Gece
                                                                hayatı</span><br />Ortamlara ak.
                                                        </div>
                                                    </router-link>
                                                    <li data-link="/alley">
                                                        <div id="menu-alley">
                                                            <div id="menu-sprite-alley" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Ara Sokak</span><br />Biraz
                                                            ekstra iş yap.
                                                        </div>
                                                    </li>
                                                    <router-link :to="{ name: 'hookers' }" tag="li" exact>
                                                        <div id="menu-hookers">
                                                            <div id="menu-sprite-hookers" class="menu-sprite"></div>
                                                            <span
                                                                class="action_menu_header">Fahişeler</span><br />Kızlarını
                                                            ziyaret et.
                                                        </div>
                                                    </router-link>
                                                    <router-link :to="{ name: 'market-drug-components' }" tag="li"
                                                        exact>
                                                        <div id="menu-armsdealer">
                                                            <div id="menu-sprite-armsdealer" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Kara
                                                                Borsa</span><br />Biraz alet yüklen.
                                                        </div>
                                                    </router-link>
                                                    <router-link :to="{ name: 'drugdealer' }" tag="li" exact>
                                                        <div id="menu-drugdealer">
                                                            <div id="menu-sprite-drugdealer" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Uyuşturucu
                                                                tüccarı</span><br />Mal alıp satın.
                                                        </div>
                                                    </router-link>
                                                    <router-link :to="{ name: 'stockmarket' }" tag="li" exact>
                                                        <div id="menu-stockmarket">
                                                            <div id="menu-sprite-stockmarket" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Borsa</span><br />Yatırım
                                                            yap ve zengin ol!
                                                        </div>
                                                    </router-link>
                                                    <router-link :to="{ name: 'buildings' }" tag="li" exact>
                                                        <div id="menu-buildings">
                                                            <div id="menu-sprite-buildings" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Binalar</span><br />Kendi
                                                            malını üret.
                                                        </div>
                                                    </router-link>
                                                    <router-link :to="{ name: 'hospital' }" tag="li" exact>
                                                        <div id="menu-hospital">
                                                            <div id="menu-sprite-hospital" class="menu-sprite"></div>
                                                            <span
                                                                class="action_menu_header">Hastane</span><br />İyileşin.
                                                        </div>
                                                    </router-link>
                                                    <router-link :to="{ name: 'bank' }" tag="li" exact>
                                                        <div id="menu-bank">
                                                            <div id="menu-sprite-bank" class="menu-sprite"></div>
                                                            <span
                                                                class="action_menu_header">Banka</span><br />Paracıklarınızı
                                                            güvenli bir yere koyun.
                                                        </div>
                                                    </router-link>
                                                    <li data-link="/casino">
                                                        <div id="menu-casino">
                                                            <div id="menu-sprite-casino" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Kumarhane</span><br />Biraz
                                                            cebinizi doldurun.
                                                        </div>
                                                    </li>
                                                    <router-link :to="{ name: 'prison' }" tag="li" exact>
                                                        <div id="menu-prison">
                                                            <div id="menu-sprite-prison" class="menu-sprite"></div>
                                                            <span
                                                                class="action_menu_header">Hapishane</span><br />Tongaya
                                                            mı düşürüldünüz? Hay aksi!
                                                        </div>
                                                    </router-link>
                                                </ul>
                                            </div>
                                            <div id="content_middle">
                                                <div class="content_style main-content ">
                                                    <div id="modal-dialog"></div>
                                                    <loading></loading>
                                                    <status-messages></status-messages>
                                                    <router-view></router-view>
                                                    <div v-if="showLegacyHtml">
                                                        <ul class="nav nav-tabs">
                                                            <li class="active"><a href="/user/17175026">Profil</a></li>
                                                            <li><a href="/user/17175026/stats">Yetenekler</a></li>
                                                            <li><a href="/user/17175026/guestbook">Ziyaretçi defteri</a>
                                                            </li>
                                                        </ul>
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td valign="top" width="1" style="padding-right: 10px">
                                                                    <a href="/user/17175026"><img
                                                                            src="/static/images/avatars/avatar_18.jpg"
                                                                            width="32" height="40" border="0"
                                                                            data-userid="17175026"
                                                                            data-username="kubilayckmk"></a> </td>
                                                                <td valign="middle" width="1">
                                                                    <div class="flag tr"></div>
                                                                </td>
                                                                <td valign="middle"><span
                                                                        class="profile-header">*kubilayckmk</span>
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td valign="middle" align="right">
                                                                    <span class="profile-header">#4205</span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <hr size="1" style="margin-top: 10px">
                                                        <div id="statusbox"></div>
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0"
                                                            style="margin-top: 10px">
                                                            <tr>
                                                                <td valign="top" width="60%">
                                                                    <table width="100%" border="0" cellspacing="0"
                                                                        cellpadding="0">
                                                                        <tr>
                                                                            <td><b>Saygınlık</b></td>
                                                                            <td><span class="nicktext">2</span></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>ID</b></td>
                                                                            <td style="padding-left: 1px;">17175026</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Şöhret</b></td>
                                                                            <td style="padding-left: 1px;">0</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Kayıt tarihi</b>
                                                                            </td>
                                                                            <td style="padding-left: 1px;">2015-03-27
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Son giriş</b>
                                                                            </td>
                                                                            <td style="padding-left: 1px;">2019-04-18
                                                                                20:19:19</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Karakter</b></td>
                                                                            <td style="padding-left: 1px;">Gangster</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Seviye</b></td>
                                                                            <td style="padding-left: 1px;">1</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Öldürme</b></td>
                                                                            <td style="padding-left: 1px;">0</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Öldürülme</b>
                                                                            </td>
                                                                            <td style="padding-left: 1px;">0</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Cinsiyet</b></td>
                                                                            <td style="padding-left: 1px;">Erkek</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Doğum tarihi</b>
                                                                            </td>
                                                                            <td style="padding-left: 1px;">1940-11-30
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Profil
                                                                                    ziyaretçileri</b></td>
                                                                            <td style="padding-left: 1px;">71</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Online olunan
                                                                                    zamanlar</b></td>
                                                                            <td style="padding-left: 1px;">00:00</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Ban sayısı</b>
                                                                            </td>
                                                                            <td style="padding-left: 1px;">0</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Yatırım Puanı</b>
                                                                            </td>
                                                                            <td style="padding-left: 1px;">0</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" nowrap><b>Çete Bağış
                                                                                    Puanı</b></td>
                                                                            <td style="padding-left: 1px;">0</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td valign="top" align="center">
                                                                    <ul class="medal_list">
                                                                        <li><img src="/static/images/medals/medal_year4.gif"
                                                                                alt="4 yıldır üye."
                                                                                data-toggle="tooltip"
                                                                                data-original-title="4 yıldır üye.">
                                                                        </li>
                                                                    </ul>
                                                                    <div class="well well-small"><img class="btn-image"
                                                                            src="/static/images/icons/lightbulb_on.gif">Kullanıcı
                                                                        çevrimiçi <br />
                                                                        Son giriş 2 minutes ago </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <div id="profile-achievements" class="pull-left">
                                                            <h2>Başarılar</h2>
                                                            <ul class="badge_list">
                                                                <li><img src="/static/images/badges/vip.png"
                                                                        alt="The Crims VIP" data-toggle="tooltip"
                                                                        data-original-title="The Crims VIP">
                                                                    <div class="badge_list_quantity">2</div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div id="profile-description">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="content_right" class="content_style">
                                                <user-profile></user-profile>
                                                <ul class="action_menu">
                                                    <li data-link="/help">
                                                        <div id="menu-help">
                                                            <img border="0" src="/static/images/menu/icon_support.gif"
                                                                align="left" class="action-menu-image">
                                                            <span class="action_menu_header">Yardım
                                                                Merkezi</span><br />Buradan yardım alabilirsiniz
                                                        </div>
                                                    </li>
                                                    <router-link :to="{ name: 'docks' }" tag="li" exact>
                                                        <div id="menu-docks">
                                                            <div id="menu-sprite-docks" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Liman</span><br />Limandaki
                                                            koku da ne?
                                                        </div>
                                                    </router-link>
                                                    <router-link :to="{ name: 'training' }" tag="li" exact>
                                                        <div id="menu-training">
                                                            <div id="menu-sprite-training" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Eğitim
                                                                Merkezi</span><br />Kasları esnet!
                                                        </div>
                                                    </router-link>
                                                    <router-link :to="{ name: 'square' }" tag="li" exact>
                                                        <div id="menu-square">
                                                            <div id="menu-sprite-square" class="menu-sprite"></div>
                                                            <span
                                                                class="action_menu_header">Meydan</span><br />Insanlarla
                                                            tanış ve konuş.
                                                        </div>
                                                    </router-link>
                                                    <li data-link="/fightclub">
                                                        <div>
                                                            <div id="menu-sprite-fightchat" class="menu-sprite"></div>
                                                            <span class="action_menu_header">Dövüş
                                                                Kulübü</span><br />Birileriyle kavga edin.
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td valign="top" align="center" style="padding-top: 0px; padding-left:10px;">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div id="site-info-wrapper">
        <div id="site-info">
            <div>
                <h4>Başla</h4>
                <ul>
                    <li><a href="/rules">Kurallar & Üyelik Koşulları</a></li>
                    <li><a href="http://forum.thecrims.com/forumdisplay.php?10-News" target="_blank">Haberler</a></li>
                    <li><a href="/wallpapers">Duvar Kağıtları</a></li>
                    <li><a href="/fansites">Fan siteleri</a></li>
                    <li><a href="/stuff">Ivır zıvır</a></li>
                </ul>
            </div>
            <div>
                <h4>İstatistikler</h4>
                <ul>
                    <li><a href="/stats">İstatistikler</a></li>
                    <li><a href="/stats/gangs">Çete durumu</a></li>
                    <li><a href="/stats/killers">En çok adam öldürenler</a></li>
                    <li><a href="/stats/game">Oyun istatistikleri</a></li>
                    <li><a href="/stats/events">Geçmiş olaylar</a></li>
                    <li><a href="#/stats/online">Online</a></li>
                    <li><a href="/winners">Kazananlar</a></li>
                    <li><a href="/stats/reputation">Şöhret</a></li>
                    <li><a href="#/stats/medals">Madalyalar</a></li>
                    <li><a href="#/stats/badges">Başarılar</a></li>
                </ul>
            </div>
            <div>
                <h4>Yardım Merkezi</h4>
                <ul>
                    <li><a href="/help/guide">Oyun Rehberi</a></li>
                    <li><a href="http://forum.thecrims.com">Forum</a></li>
                    <li><a href="http://support.thecrims.com/index.php?_m=tickets&_a=submit">Bug bildir</a></li>
                    <li><a href="/rules">Kurallar & Üyelik Koşulları</a></li>
                    <li><a href="http://support.thecrims.com">Destek Merkezi</a></li>
                    <li><a href="/crew">Takım</a></li>
                    <li><a href="/changelog">Değişiklik listesi</a></li>
                </ul>
            </div>
            <div>
                <a href="#/stats/online">
                    <h4 style="color: #C0B184">
                        Online: 490 </h4>
                </a>
                <ul>
                    <li style="color: #C0B184">Online last 24 hours: 2457</li>
                    <li><a href="https://www.facebook.com/thecrims" title="The Crims on Facebook" target="_blank"><i
                                class="fa fa-facebook fa-2x"></i> Facebook</a></li>
                    <li><a href="https://twitter.com/The_Crims" title="Follow us on Twitter" target="_blank"><i
                                class="fa fa-twitter fa-2x"></i> Twitter</a></li>
                    <li>&copy; 2019 The Crims</li>
                    <li><a href="/changelog">Round 108</a></li>
                    <li>v108</li>
                </ul>
            </div>
        </div>
    </div>
    <div tc-modal id="modal" class="modal hide fade" tabindex="-1" role="dialog">
        <div class="modal-header">
            <a class="close" data-dismiss="modal" aria-hidden="true">&times;</a>
            <h2 class="modal-title"></h2>
        </div>
        <div class="modal-body">
        </div>
    </div>
    <script type="text/javascript">
        window.pusherKey = "4d1de0a9de985ae2f51d";
        var langConfirm = "Emin misiniz?";
        var langCheckbox = "Listeden seçin";
        var langDay = "Gün";
    </script>
    <script src="/static/js/jquery-1.11.3.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/js/jquery.gritter.min.js"></script>
    <script src="/static/js/jquery.cookie.min.js"></script>
    <script src="/static/vendor/blockadblock/blockadblock.js"></script>
    <script src="/static/js/thecrims.js"></script>
    <script src="/static/js/thecrims-jquery.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            live_gametime(9, 13, 28 - 1);
        });
    </script>
    <script src="/static/js/build/app.js?id=be41483b1562ad1e70ac"></script>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-437724-2']);
        _gaq.push(['_gat._anonymizeIp']);
        _gaq.push(['_trackPageview']);
        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
</body>

</html>