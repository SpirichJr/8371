<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>

                <h2> Новостная лента </h2>
                <table border="1">
                    <tr bgcolor="#FFD700">
                        <th colspan="2">Новости</th>
                    </tr>
                    <xsl:for-each select="body/news_feed">
                        <tr>
                            <xsl:for-each select="news">
                                <td><xsl:value-of select="."></xsl:value-of></td>
                            </xsl:for-each>
                        </tr>
                        <tr bgcolor="#FFFF00">
                            <th colspan="2">Концерты</th>
                        </tr>
                        <tr>
                            <xsl:for-each select="concerts">
                                <td><xsl:value-of select="."></xsl:value-of></td>
                            </xsl:for-each>
                        </tr>
                        <tr bgcolor="#BDB76B">
                            <th colspan="2">Мероприятия</th>
                        </tr>
                        <tr>
                            <xsl:for-each select="activity">
                                <td><xsl:value-of select="."></xsl:value-of></td>
                            </xsl:for-each>
                        </tr>
                        <tr bgcolor="#F0E68C">
                            <th colspan="3">Обратная связь</th>
                        </tr>
                        <tr>
                            <xsl:for-each select="feedback">
                                <td><xsl:value-of select="."></xsl:value-of></td>
                            </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Подписка</h2>
                <table border="1">
                    <tr bgcolor="#9acd20">
                        <th colspan="5">Тип</th>
                        <th>Длительность</th>
                        <th>Окончание</th>
                    </tr>
                    <tr>
                        <th>Название</th>
                        <th>Цена</th>
                        <th colspan="3">Опции</th>
                        <td><xsl:value-of select="body/subscription/duration"></xsl:value-of></td>
                        <td><xsl:value-of select="body/subscription/end_date"></xsl:value-of></td>
                    </tr>
                        <tr>
                            <td><xsl:value-of select="body/subscription/type/subscription_name"></xsl:value-of></td>
                            <td><xsl:value-of select="body/subscription/type/cost"></xsl:value-of></td>
                            <xsl:for-each select="body/subscription/type/option">
                                <td><xsl:value-of select="."></xsl:value-of></td>
                            </xsl:for-each>
                        </tr>
                </table>

                <h2>Плэйлисты</h2>
                <table border="1">
                    <tr bgcolor="#FFDEAD">
                        <th colspan="2">Имя плэйлитса</th>
                    </tr>
                    <xsl:for-each select="body/playlist">
                        <tr>
                            <td><xsl:value-of select="playlist_name"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2><xsl:for-each select="body/playlist[playlist_id/@number='1']">
                    <xsl:value-of select="playlist_name"></xsl:value-of>
                </xsl:for-each></h2>
                <table border="1">
                    <tr bgcolor="#00BFFF">
                        <th>Название</th>
                        <th>Исполнитель</th>
                        <th>Жанр</th>
                    </tr>
                    <xsl:for-each select="body/playlist[playlist_id/@number='1']">
                        <xsl:for-each select="composition_id/@number">
                            <tr>
                                <xsl:if test=".=1">
                                    <td>Wake Me Up</td>
                                    <td>Avicii feat Aloe Blacc</td>
                                    <td>Танцевальная</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=2">
                                    <td>Hypnodancer</td>
                                    <td>Little Big</td>
                                    <td>Танцевальная</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=3">
                                    <td>Omen</td>
                                    <td>The Prodigy</td>
                                    <td>Танцевальная</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=4">
                                    <td>Не От Мира Сего</td>
                                    <td>Oxxxymiron</td>
                                    <td>Хип-хоп</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=5">
                                    <td>Por una Cabeza</td>
                                    <td>Carlos Gardel</td>
                                    <td>Классичсекая</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=6">
                                    <td>The Final Countdown</td>
                                    <td>Europe</td>
                                    <td>Рок</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=7">
                                    <td>Позови Меня С Собой</td>
                                    <td>Алла Пугачева</td>
                                    <td>Поп</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=8">
                                    <td>Буратино:"Давным Давно"</td>
                                    <td>Николай Литвинов</td>
                                    <td>Детская</td>
                                </xsl:if>
                            </tr>
                        </xsl:for-each>

                    </xsl:for-each>
                </table>


                <h2><xsl:for-each select="body/playlist[playlist_id/@number='2']">
                    <xsl:value-of select="playlist_name"></xsl:value-of>
                </xsl:for-each></h2>
                <table border="1">
                    <tr bgcolor="#00BFFF">
                        <th>Название</th>
                        <th>Исполнитель</th>
                        <th>Жанр</th>
                    </tr>
                    <xsl:for-each select="body/playlist[playlist_id/@number='2']">
                        <xsl:for-each select="composition_id/@number">
                            <tr>
                                <xsl:if test=".=1">
                                    <td>Wake Me Up</td>
                                    <td>Avicii feat Aloe Blacc</td>
                                    <td>Танцевальная</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=2">
                                    <td>Hypnodancer</td>
                                    <td>Little Big</td>
                                    <td>Танцевальная</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=3">
                                    <td>Omen</td>
                                    <td>The Prodigy</td>
                                    <td>Танцевальная</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=4">
                                    <td>Не От Мира Сего</td>
                                    <td>Oxxxymiron</td>
                                    <td>Хип-хоп</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=5">
                                    <td>Por una Cabeza</td>
                                    <td>Carlos Gardel</td>
                                    <td>Классичсекая</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=6">
                                    <td>The Final Countdown</td>
                                    <td>Europe</td>
                                    <td>Рок</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=7">
                                    <td>Позови Меня С Собой</td>
                                    <td>Алла Пугачева</td>
                                    <td>Поп</td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <xsl:if test=".=8">
                                    <td>Буратино:"Давным Давно"</td>
                                    <td>Николай Литвинов</td>
                                    <td>Детская</td>
                                </xsl:if>
                            </tr>
                        </xsl:for-each>

                    </xsl:for-each>
                </table>



                <h2>Фонотека</h2>
                <table border="1">
                    <tr bgcolor="#FFC0CB">
                        <th>Название</th>
                        <th>Исполнитель</th>
                        <th>Жанр</th>
                    </tr>
                    <xsl:for-each select="body/composition">
                        <tr>
                            <td><xsl:value-of select="composition_name"></xsl:value-of></td>
                            <td><xsl:value-of select="singer"></xsl:value-of></td>
                            <td><xsl:value-of select="genre"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>