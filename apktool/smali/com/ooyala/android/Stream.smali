.class public Lcom/ooyala/android/Stream;
.super Ljava/lang/Object;
.source "Stream.java"


# static fields
.field private static _selector:Lcom/ooyala/android/StreamSelector;


# instance fields
.field protected _aspectRatio:Ljava/lang/String;

.field protected _audioBitrate:I

.field protected _deliveryType:Ljava/lang/String;

.field protected _framerate:Ljava/lang/String;

.field protected _height:I

.field protected _isLiveStream:Z

.field protected _profile:Ljava/lang/String;

.field protected _url:Ljava/lang/String;

.field protected _urlFormat:Ljava/lang/String;

.field protected _videoBitrate:I

.field protected _videoCodec:Ljava/lang/String;

.field protected _widevineServerPath:Ljava/lang/String;

.field protected _width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/ooyala/android/Stream$DefaultStreamSelector;

    invoke-direct {v0}, Lcom/ooyala/android/Stream$DefaultStreamSelector;-><init>()V

    sput-object v0, Lcom/ooyala/android/Stream;->_selector:Lcom/ooyala/android/StreamSelector;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_deliveryType:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_videoCodec:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_urlFormat:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_framerate:Ljava/lang/String;

    .line 19
    iput v0, p0, Lcom/ooyala/android/Stream;->_videoBitrate:I

    .line 20
    iput v0, p0, Lcom/ooyala/android/Stream;->_audioBitrate:I

    .line 21
    iput v0, p0, Lcom/ooyala/android/Stream;->_height:I

    .line 22
    iput v0, p0, Lcom/ooyala/android/Stream;->_width:I

    .line 23
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_url:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_aspectRatio:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/Stream;->_isLiveStream:Z

    .line 26
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_profile:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_widevineServerPath:Ljava/lang/String;

    .line 72
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_deliveryType:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_videoCodec:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_urlFormat:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_framerate:Ljava/lang/String;

    .line 19
    iput v0, p0, Lcom/ooyala/android/Stream;->_videoBitrate:I

    .line 20
    iput v0, p0, Lcom/ooyala/android/Stream;->_audioBitrate:I

    .line 21
    iput v0, p0, Lcom/ooyala/android/Stream;->_height:I

    .line 22
    iput v0, p0, Lcom/ooyala/android/Stream;->_width:I

    .line 23
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_url:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_aspectRatio:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/Stream;->_isLiveStream:Z

    .line 26
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_profile:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/ooyala/android/Stream;->_widevineServerPath:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, p1}, Lcom/ooyala/android/Stream;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 76
    return-void
.end method

.method public static bestStream(Ljava/util/Set;)Lcom/ooyala/android/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;)",
            "Lcom/ooyala/android/Stream;"
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/ooyala/android/Stream;->_selector:Lcom/ooyala/android/StreamSelector;

    invoke-interface {v0, p0}, Lcom/ooyala/android/StreamSelector;->bestStream(Ljava/util/Set;)Lcom/ooyala/android/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamWithDeliveryType(Ljava/util/Set;Ljava/lang/String;)Lcom/ooyala/android/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ooyala/android/Stream;"
        }
    .end annotation

    .prologue
    .line 279
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Stream;

    .line 280
    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getDeliveryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeliveryTypePlayable(Lcom/ooyala/android/Stream;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/ooyala/android/Stream;->getDeliveryType()Ljava/lang/String;

    move-result-object v4

    .line 257
    const-string/jumbo v0, "hls"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "akamai_hd2_vod_hls"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    .line 258
    :goto_0
    const-string/jumbo v3, "wv_wvm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "wv_hls"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v3, v2

    .line 259
    :goto_1
    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "remote_asset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "wv_mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_3

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    move v0, v1

    .line 257
    goto :goto_0

    :cond_5
    move v3, v1

    .line 258
    goto :goto_1
.end method

.method public static isProfilePlayable(Lcom/ooyala/android/Stream;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 266
    const-string/jumbo v1, "mp4"

    invoke-virtual {p0}, Lcom/ooyala/android/Stream;->getDeliveryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ooyala/android/Stream;->getProfile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "baseline"

    invoke-virtual {p0}, Lcom/ooyala/android/Stream;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetStreamSelector()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/ooyala/android/Stream$DefaultStreamSelector;

    invoke-direct {v0}, Lcom/ooyala/android/Stream$DefaultStreamSelector;-><init>()V

    sput-object v0, Lcom/ooyala/android/Stream;->_selector:Lcom/ooyala/android/StreamSelector;

    .line 70
    return-void
.end method

.method public static setStreamSelector(Lcom/ooyala/android/StreamSelector;)V
    .locals 0

    .prologue
    .line 62
    sput-object p0, Lcom/ooyala/android/Stream;->_selector:Lcom/ooyala/android/StreamSelector;

    .line 63
    return-void
.end method

.method public static streamSetContainsDeliveryType(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p0, p1}, Lcom/ooyala/android/Stream;->getStreamWithDeliveryType(Ljava/util/Set;Ljava/lang/String;)Lcom/ooyala/android/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decodedURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/ooyala/android/Stream;->_urlFormat:Ljava/lang/String;

    const-string/jumbo v1, "encoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ooyala/android/Stream;->_url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-object v0

    .line 243
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/ooyala/android/Stream;->_url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/Stream;->_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAspectRatio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ooyala/android/Stream;->_aspectRatio:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/ooyala/android/Stream;->_audioBitrate:I

    return v0
.end method

.method public getCombinedBitrate()I
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/ooyala/android/Stream;->_videoBitrate:I

    iget v1, p0, Lcom/ooyala/android/Stream;->_audioBitrate:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDeliveryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ooyala/android/Stream;->_deliveryType:Ljava/lang/String;

    return-object v0
.end method

.method public getFramerate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ooyala/android/Stream;->_framerate:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/ooyala/android/Stream;->_height:I

    return v0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ooyala/android/Stream;->_profile:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ooyala/android/Stream;->_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ooyala/android/Stream;->_urlFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/ooyala/android/Stream;->_videoBitrate:I

    return v0
.end method

.method public getVideoCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ooyala/android/Stream;->_videoCodec:Ljava/lang/String;

    return-object v0
.end method

.method public getWidevineServerPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ooyala/android/Stream;->_widevineServerPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/ooyala/android/Stream;->_width:I

    return v0
.end method

.method public isLiveStream()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/ooyala/android/Stream;->_isLiveStream:Z

    return v0
.end method

.method public setAspectRatio(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/ooyala/android/Stream;->_aspectRatio:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lcom/ooyala/android/Stream;->_audioBitrate:I

    .line 181
    return-void
.end method

.method public setDeliveryType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ooyala/android/Stream;->_deliveryType:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setFramerate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/ooyala/android/Stream;->_framerate:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcom/ooyala/android/Stream;->_height:I

    .line 189
    return-void
.end method

.method public setLiveStream(Z)V
    .locals 0

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/ooyala/android/Stream;->_isLiveStream:Z

    .line 221
    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/ooyala/android/Stream;->_profile:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/ooyala/android/Stream;->_url:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setUrlFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/ooyala/android/Stream;->_urlFormat:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/ooyala/android/Stream;->_videoBitrate:I

    .line 173
    return-void
.end method

.method public setVideoCodec(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/ooyala/android/Stream;->_videoCodec:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcom/ooyala/android/Stream;->_width:I

    .line 197
    return-void
.end method

.method update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 4

    .prologue
    .line 79
    const-string/jumbo v0, "delivery_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "ERROR: Fail to update stream with dictionary because no delivery_type exists!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    .line 132
    :goto_0
    return-object v0

    .line 83
    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "ERROR: Fail to update stream with dictionary because no url element exists!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 90
    :cond_1
    :try_start_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "ERROR: Fail to update stream with dictionary because no url.data exists!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "ERROR: Fail to update stream with dictionary because url element is invalid."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 100
    :cond_2
    const-string/jumbo v1, "format"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "ERROR: Fail to update stream with dictionary because no url.format exists!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 106
    :cond_3
    :try_start_1
    const-string/jumbo v1, "widevine_server_path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 107
    const-string/jumbo v1, "widevine_server_path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/Stream;->_widevineServerPath:Ljava/lang/String;

    .line 109
    :cond_4
    const-string/jumbo v1, "delivery_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/Stream;->_deliveryType:Ljava/lang/String;

    .line 110
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/Stream;->_url:Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "format"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/Stream;->_urlFormat:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "video_bitrate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ooyala/android/Stream;->_videoBitrate:I

    :goto_1
    iput v0, p0, Lcom/ooyala/android/Stream;->_videoBitrate:I

    .line 114
    const-string/jumbo v0, "audio_bitrate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/ooyala/android/Stream;->_audioBitrate:I

    :goto_2
    iput v0, p0, Lcom/ooyala/android/Stream;->_audioBitrate:I

    .line 116
    const-string/jumbo v0, "video_codec"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ooyala/android/Stream;->_videoCodec:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/ooyala/android/Stream;->_videoCodec:Ljava/lang/String;

    .line 118
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/ooyala/android/Stream;->_height:I

    :goto_4
    iput v0, p0, Lcom/ooyala/android/Stream;->_height:I

    .line 119
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/ooyala/android/Stream;->_width:I

    :goto_5
    iput v0, p0, Lcom/ooyala/android/Stream;->_width:I

    .line 120
    const-string/jumbo v0, "framerate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ooyala/android/Stream;->_framerate:Ljava/lang/String;

    :goto_6
    iput-object v0, p0, Lcom/ooyala/android/Stream;->_framerate:Ljava/lang/String;

    .line 122
    const-string/jumbo v0, "aspect_ratio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ooyala/android/Stream;->_aspectRatio:Ljava/lang/String;

    :goto_7
    iput-object v0, p0, Lcom/ooyala/android/Stream;->_aspectRatio:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "is_live_stream"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/ooyala/android/Stream;->_isLiveStream:Z

    :goto_8
    iput-boolean v0, p0, Lcom/ooyala/android/Stream;->_isLiveStream:Z

    .line 126
    const-string/jumbo v0, "profile"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ooyala/android/Stream;->_profile:Ljava/lang/String;

    :goto_9
    iput-object v0, p0, Lcom/ooyala/android/Stream;->_profile:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_0

    .line 112
    :cond_5
    :try_start_2
    const-string/jumbo v0, "video_bitrate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 114
    :cond_6
    const-string/jumbo v0, "audio_bitrate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 116
    :cond_7
    const-string/jumbo v0, "video_codec"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 118
    :cond_8
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 119
    :cond_9
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    .line 120
    :cond_a
    const-string/jumbo v0, "framerate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 122
    :cond_b
    const-string/jumbo v0, "aspect_ratio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 124
    :cond_c
    const-string/jumbo v0, "is_live_stream"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    .line 126
    :cond_d
    const-string/jumbo v0, "profile"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_9

    .line 127
    :catch_1
    move-exception v0

    .line 128
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR: Fail to update stream with dictionary because of invalid JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_0
.end method
