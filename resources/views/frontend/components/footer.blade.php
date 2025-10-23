<div id="footer">
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title">Về chúng tôi</div>
                    <ul>
                        <li>
                            <a href="{{ route('get.blog.home') }}">Bài viết</a>
                        </li>
                        <li>
                            <a href="{{ route('get.product.list') }}">Sản phẩm</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Tin tức</div>
                    <ul>
                        @if (isset($menus))
                            @foreach($menus as $menu)
                                <li>
                                    <a title="{{ $menu->mn_name }}"
                                        href="{{ route('get.article.by_menu',$menu->mn_slug.'-'.$menu->id) }}">
                                        {{ $menu->mn_name }}
                                    </a>
                                </li>
                            @endforeach
                        @endif
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Chính sách</div>
                    <ul>
                        <li><a href="{{ route('get.static.shopping_guide') }}">Hướng dẫn mua hàng</a></li>
                        <li><a href="{{  route('get.static.return_policy') }}">Chính sách đổi trả</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Địa chỉ</div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5139339979746!2d106.6986747759249!3d10.771894089376591!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f40a3b49e59%3A0xa1bd14e483a602db!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIEvhu7kgdGh14bqtdCBDYW8gVGjhuq9uZw!5e0!3m2!1svi!2s!4v1720066170001!5m2!1svi!2s" width="300" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                <div class="bot">
                    <div class="social">
                        <div class="title">KẾT NỐI VỚI CHÚNG TÔI</div>
                        <p>
                            <a href="tel:0394726213" title="Gọi 0394726213" onclick="_gaq.push(['_trackEvent', 'Contact', 'Call Now Button', 'Phone']);" id="floating-phone">
                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAC8UlEQVR4nK2XW2sTQRTHF32xguLlG+gH8UEws01tReyDINhW++ANfFeoPiiIPgv1wpk0ttK1c5ImIaS1ttVW1Cq00uZivccivaOvWhg5WzfNbnY3m90M/CHsnOxvz8yc/55VlBrG4QjubwTBQhBrC3G8qgtibXSN5pR6jqbuxE6V40WVizEGuKFylHaiOQY4SrGtmtbgG9iqadtVLs4ywAUnmMtDLDCInaF71ARl0fRuBiJZK7BCIIZaILbHG5TjQQbiQ2BoSaIQfjhwoGqmKhdZ65+P9yYCw1ucMqf9YByHy/9wNBqX8fy8/Pp7TT6ezclwJBZg2TFju+cqYGd5YFNPXA4WNqGGMF8IBuei3Zptgwr4ozyofzZnghrS5nK+wQxwgcpzK1u9TrcCjkUH5Zdfq7ZgUmds2D88Is6XLbMYL5+k5ZxbWbSFZleX5Im+pH8wx2c6lKxOBfHXGnB3aroCWlhfkZdSo4FOOAPc0O2VfNYuoLUvqWdnQOfXV+SFxEjAssJNRbBJoZPmFHB7cqoEnl78qZ/0eoAZiMsKvWGcAgj0ovitBL818aY+GYO4pjDAK25BHZjRl5nAudUleUpL1wesuiy1oRvjr0pZvywWHS30ZH9Knht86nGpIwMhL0/Z/W7aBLdmTgePVoTmH73PykYXhwuBCCtH7mv77MrJqkaLmxGE9pzOAUHza8um0ut1hv8J96b2/ncuMeYla4LfeztjAtBpN86AVT0zszb3ESOOlllNN5+/doRZRfZr2t9yyzwEsEPlolgLvAOH5ETxuys0Nf/R/SVBg3qkWsuC9vfO5JTJ4QxlPn2WLVGz4bAInlZsmzvAjJ+6JHslb6cXC73VnmTzlVAQ6a6urm0V4FLrAzjnB24cvmYLsGrrYwxqzCjQL9xG+arNnjGaH8R3qVwkAkMBM57bW0tD325tibxJFOnTxnFPFQ+D+jGqPeocXB1OnxMjFBvoE8ZukL2Sz5LJq1xcJ9FvulayQY/jH1hOiSZAxresAAAAAElFTkSuQmCC">
                            </a>
                            <a href="https://web.facebook.com/profile.php?id=61562254051651">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAACE0lEQVR4nO2WzytEURTHX/EX+PEv2PiVlR/N3Eu2MvfONAkLZWXn55ZiKdkossAgGwtp3POGpClZ2DALiTLIhmSUH2UhejpPo9H7ce+8GTZ869brvXvP5757zj3naNq/XERpvNAfEA1+rndSLvpx4DNh0Xr8puVbTXyjmjKxSJm4pxwMu0E4pHCOL6RX5QykLdESwmCJMnh3AlrG59xIM1sr9gblGxWUw4Uy0LqBc7ThASoePUPTx8/EQ1MoVq4ExSMiXCRlRgNd28boxKExHTkxZpdOjbHJhIPvxaUvrJdKwYTDsgza3bdrPD2/GplKHKXc1kRcoRiRKoG0s3f9DSoFM3gnIb3G2bd4ZRR8l7x8/AJOzByp+ZvDgj2UxgvNu6hg5Ob25QvcO7yvCk7ZJhnMSLLFGEAYSJn+jW5dme9Gxg8UNqDXWcFmGnRfiH500nrsSuFui3brUXMxlAt4au5YftxBGLReoyAMqvjKq4+pmVBgwA7c8dNgfxDaPAVXrmBqF1zh8GoB4XD369cJhantx8BMzGtOIgGoJAze8g3+tCkpkSp/nf0fizlNprrwZhHh4szNEGaqlbWkOdp74jLwBXYymoqweGMRV4/WPDQCafkYlBEuTj1DuUhmDc3sRkyfZ9HsYSBhBKPLtFxFMNo5LLiVTcwBOCfrBk9FmGQw+2CVSTf0+NzYKmrxm5IR7a/qA4sO/OXZpM4FAAAAAElFTkSuQmCC">
                            </a>
                            <a href="https://web.facebook.com/messages/t/351075804760951">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAACO0lEQVR4nO2WS0hUURjHL1RQELUPgqCIoHZtcjXIOTNjD8SIaNEDWgcWEbQomF16ztzJJiRQZlEWFIFtIjIpwkVERShROFBIUwkVKS5ExLJfHOehzX069+LKP3xwuefxu9/5/ueeY1mr8lEiw1qhaUpqTgjNeROV56aj91ljxa1klj1C0ycUE1KDW5g206e5k92RgS15NknFLaGZ9wI6PqDc96YZ2xA0ZbNLaophgS5RNHMsCyoVW4TiSwRoNfvxlM3WUNC9PawTmpGo0CW1HzZzBoKNU+OC1kJx1he6L8cGoZmMG2zmTGRY7wlOag6Hmeh4DySz3u2mrfWaI+tWT7BUFIKgJ3thYhoG3rnDL9yD2y8gbTtq3esHfu4HPdINXyepaSn8dAGGivBhHA52uS73U29jKUa9oGbpPv7AocH38HAE/szD2E9oy3u6e9Qv49dug/bnYLhUBr0Zg7efnR/wfQqO3fAt0yu/jB+4GcUsYekXXO4vv2vJwctPi9CpmfJSBzi73ztjzaX6AYUh6HoCqTojVeGzc9B+J9RevugJbtZsl4q/1c5t1+GQi1GqceAqnOkLt5dTV9jhCa5kPRjHT6Mu28e+0IU62+wUitkYwb/NeR4IrmR9Li6wyNIeClqDKzoiQzW2tVylO9jWMNCUKuhEihO8cO1R3DU+sRpV2gUsFM+E5pHUlKRiRiimzRVHaAaML8x2bBjoClZ8E5pT1koobcCKOanIJzJstFZKspPNkWq1Kut//QOw2ChzE0x/tQAAAABJRU5ErkJggg==">
                            </a>
                            <a href="https://zalo.me/0394726213">
                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAADCUlEQVR4nO3Wy0tUURwH8PkX2mXtAvVe06ygTbXoIS0qoqCoTeS9liktBvJRWpZOkoRRRBGa9tASRMIIQygdNDBJs8jHqBnjpOOojXPPPHzMdV7fOEdn1HLGGbtBCw/8dufM5/x+v/O7jEq1tv6XVamd2SlJkkaSJC0hpFeSJP1yQQjR0T10LyEkYdVg3BmsP5DlqR/4YQMhJKKQJMlHCKkxm81REaGbBSTGn8XYh057xOhvYQw7+1gRGzgRYzll8t+i/jBZLJaNK8KcgFeJqYB+OPISh4jqkGhMCrbwInD+jktJlPVckqT4oDAvoojC1dopReF5vCA4LKCJwh29f/2olouGUHA/hU3j1sCBohdOnC5yLYmugT/7395jR3G1MxSsC1VqA4V/mhcOdH6zobXLDjpax667kVsuY3TcCk2FEyc1buQ9kXGj0onGT47A22hodyD5lgspxS60fHX4S21YER42LWQcyLzKyX5swkJw9bHMLkBbon4wiyN5ngDcN2jD3gwvGtocqG+dxJ6LXhiM1vDgfsPSUj5/O4WDOR4Mj85d6PAVD/oH5/a06+xL4Nr3U8gqWfgGpN91sUtI4cBNHXPl8Zdtl9rLejhksrJqZJfKrNQUv/xIXgJ3f7dhf6aXtab5i4NlrB8KM+On9dPzfSE4nu9GUpY3EBShmV8qlXEo14OMh7M4d9uFj912dgl6rq5lEicK3DhV6GYXD7vH6vuz/2KODUFhTkAvhben+djLVRjvCw6L0FKYRsnraaUz1oYqtcYP77jgY49CQbgwKBybjARehM+P33s5oxTqs1gscUHh+T7X+OHyN8qU2zhqrQuJMjgVUZwAY1K2l43NuHlulumImCciA0fGrCirm7berJBjVoT9Jd+X6Rk9es2DbWk+lj2N3Wov8p/JqG2ewuc+OwaNVvYJpQj9sPTqbXjX5mAPk8721lTvCJ+M6LDQxX/2OBHVi3seQfh4AVUJ6VinWu3iRMTzIgo4AY2cCB0vQr9ccAJ6eBF1dG+0gE2rBteWSuH1C/Ev/+3WAUCaAAAAAElFTkSuQmCC">
                            </a>
                            <a href="{{ route('get.contact') }}">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAACvklEQVR4nGNgIBGEhq5i9ivdIBVcu9MchEFskBgDLUB4/W61xN7j3dnTL+4tnHv9YcXie+/q1zz9B8KVS+++A4llTz+/N7H7WHdQ0y5VKli4XyF54unlFUvuvu3a9v5/9/YPeDFITeWSe2+S+08uD2reK0+WpXFdR0tKFt560r2dsIWY+P3/kgU3H8d1Hiok2sLQ0FXM8d3HpjWsffaZdAtRccOaZ18Teo/NJCoNJPWcmNm26dVfSi2FYZBZ8T1HZ+C1NL7jaF7dmqcU+xQdN6559jWu63AJzoQEiVPiDJuw6yMYE6u+eMGNx6H1u+UwLE7uO7mK2ITUv+vj/88//v7//P0vmE1sgkvqP7UUxdLopr3qoCxDrOvJs/jD//Ild9+Etu1QQcRt99FeYvIpuuWkWNoNzefxXUc64BaDSiRSDNh4/uv/7Ze+gTEp8dy9/cP/zGkX9sDzLajII0Xzrivf/sPArAOfSLK4aO6N++B87V21Wbpy6b0PpGgGWUauxZVL774LrNouyRBYv8uice2zv/SyuHHt07+gWo0BRDSsfUo3ixvWPP0bWLvNlAFUn1YsufeeXhZXLL77zqtkiwRZiYsSi4tgiQuSnc7vpZfFWdMv7IbnY1DrgpQChFyLu7a9/5/Yc7wNqYLYrQZqOdDa4jL0IhMEUiacXEFsJXH92a//j97+BmMQmziL3/9P6ju5GKN2ArWRSuYTXy2Siovn33wUXr1DFkdD4BDNGgLxnYeLsVoKt7zn6Ay6N31AAJTH4nqOTW2ggs/rVj/5mtBDZGMPBuK6jxSCmitkN2/n33wU23W4gIEcEFq/Wy55wqll5UvuvSG2QQ/KMqAmDs6ExECKA9p2qCR0He3KnnZhT+Hc6w9A5S2sCwNig8RAFXxC9/HO8Oa9yhRbiA3U19czgepTWKcNxAaJkWoQAIBkQCc4kx7aAAAAAElFTkSuQmCC">
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

