.class public Lcom/ooyala/android/OoyalaAdSpot;
.super Lcom/ooyala/android/AdSpot;
.source "OoyalaAdSpot.java"

# interfaces
.implements Lcom/ooyala/android/AuthorizableItemInternal;
.implements Lcom/ooyala/android/PlayableItem;


# instance fields
.field protected _authCode:I

.field protected _authorized:Z

.field protected _embedCode:Ljava/lang/String;

.field protected _streams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/net/URL;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/ooyala/android/AdSpot;-><init>(ILjava/net/URL;Ljava/util/List;)V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_streams:Ljava/util/Set;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_embedCode:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_authorized:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_authCode:I

    .line 34
    iput-object p4, p0, Lcom/ooyala/android/OoyalaAdSpot;->_embedCode:Ljava/lang/String;

    .line 35
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ooyala/android/AdSpot;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_streams:Ljava/util/Set;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_embedCode:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_authorized:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_authCode:I

    .line 38
    iput-object p2, p0, Lcom/ooyala/android/OoyalaAdSpot;->_api:Lcom/ooyala/android/PlayerAPIClient;

    .line 39
    invoke-virtual {p0, p1}, Lcom/ooyala/android/OoyalaAdSpot;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 40
    return-void
.end method


# virtual methods
.method public embedCodesToAuthorize()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdSpot;->_embedCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object v0
.end method

.method public fetchPlaybackInfo(Lcom/ooyala/android/FetchPlaybackInfoCallback;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;

    invoke-direct {v0, p0, p1}, Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;-><init>(Lcom/ooyala/android/OoyalaAdSpot;Lcom/ooyala/android/FetchPlaybackInfoCallback;)V

    .line 134
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    return-object v0
.end method

.method public fetchPlaybackInfo()Z
    .locals 4

    .prologue
    .line 104
    iget v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_authCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_api:Lcom/ooyala/android/PlayerAPIClient;

    sget-object v1, Lcom/ooyala/android/StreamPlayer;->defaultPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    invoke-virtual {v0, p0, v1}, Lcom/ooyala/android/PlayerAPIClient;->authorize(Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;)Z
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to fetch playback info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthCode()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_authCode:I

    return v0
.end method

.method public getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_embedCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Lcom/ooyala/android/Stream;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_streams:Ljava/util/Set;

    invoke-static {v0}, Lcom/ooyala/android/Stream;->bestStream(Ljava/util/Set;)Lcom/ooyala/android/Stream;

    move-result-object v0

    return-object v0
.end method

.method public getStreams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_streams:Ljava/util/Set;

    return-object v0
.end method

.method public isAuthorized()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_authorized:Z

    return v0
.end method

.method public isHeartbeatRequired()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 4

    .prologue
    .line 57
    sget-object v0, Lcom/ooyala/android/OoyalaAdSpot$1;->$SwitchMap$com$ooyala$android$Constants$ReturnState:[I

    invoke-super {p0, p1}, Lcom/ooyala/android/AdSpot;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/Constants$ReturnState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_embedCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_embedCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_embedCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "authorized"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    const-string/jumbo v1, "authorized"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ooyala/android/OoyalaAdSpot;->_authorized:Z

    .line 71
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 73
    iput v1, p0, Lcom/ooyala/android/OoyalaAdSpot;->_authCode:I

    .line 75
    :cond_0
    iget-boolean v1, p0, Lcom/ooyala/android/OoyalaAdSpot;->_authorized:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "streams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    const-string/jumbo v1, "streams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_streams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 79
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 80
    new-instance v2, Lcom/ooyala/android/Stream;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ooyala/android/Stream;-><init>(Lorg/json/JSONObject;)V

    .line 81
    if-eqz v2, :cond_1

    .line 82
    iget-object v3, p0, Lcom/ooyala/android/OoyalaAdSpot;->_streams:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :pswitch_0
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    .line 99
    :goto_1
    return-object v0

    .line 61
    :pswitch_1
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_UNMATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_1

    .line 88
    :cond_2
    :try_start_1
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_1

    .line 90
    :cond_3
    const-string/jumbo v0, "ad_embed_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "ERROR: Fail to update OoyalaAdSpot with dictionary because no ad embed code exists!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_1

    .line 95
    :cond_4
    const-string/jumbo v0, "ad_embed_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot;->_embedCode:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
