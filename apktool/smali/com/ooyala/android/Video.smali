.class public Lcom/ooyala/android/Video;
.super Lcom/ooyala/android/ContentItem;
.source "Video.java"

# interfaces
.implements Lcom/ooyala/android/PlayableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/Video$1;,
        Lcom/ooyala/android/Video$FetchPlaybackInfoTask;
    }
.end annotation


# instance fields
.field protected _ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ooyala/android/AdSpot;",
            ">;"
        }
    .end annotation
.end field

.field protected _closedCaptions:Lcom/ooyala/android/ClosedCaptions;

.field protected _duration:I

.field protected _live:Z

.field protected _parent:Lcom/ooyala/android/Channel;

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
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/ooyala/android/ContentItem;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/Video;->_streams:Ljava/util/Set;

    .line 21
    iput-object v2, p0, Lcom/ooyala/android/Video;->_parent:Lcom/ooyala/android/Channel;

    .line 22
    iput v1, p0, Lcom/ooyala/android/Video;->_duration:I

    .line 23
    iput-boolean v1, p0, Lcom/ooyala/android/Video;->_live:Z

    .line 24
    iput-object v2, p0, Lcom/ooyala/android/Video;->_closedCaptions:Lcom/ooyala/android/ClosedCaptions;

    .line 26
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/Channel;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/ooyala/android/ContentItem;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/Video;->_streams:Ljava/util/Set;

    .line 21
    iput-object v2, p0, Lcom/ooyala/android/Video;->_parent:Lcom/ooyala/android/Channel;

    .line 22
    iput v1, p0, Lcom/ooyala/android/Video;->_duration:I

    .line 23
    iput-boolean v1, p0, Lcom/ooyala/android/Video;->_live:Z

    .line 24
    iput-object v2, p0, Lcom/ooyala/android/Video;->_closedCaptions:Lcom/ooyala/android/ClosedCaptions;

    .line 33
    iput-object p2, p0, Lcom/ooyala/android/Video;->_embedCode:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/ooyala/android/Video;->_api:Lcom/ooyala/android/PlayerAPIClient;

    .line 35
    iput-object p3, p0, Lcom/ooyala/android/Video;->_parent:Lcom/ooyala/android/Channel;

    .line 36
    invoke-virtual {p0, p1}, Lcom/ooyala/android/Video;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 37
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ooyala/android/Video;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/Channel;Lcom/ooyala/android/PlayerAPIClient;)V

    .line 30
    return-void
.end method


# virtual methods
.method public fetchPlaybackInfo(Lcom/ooyala/android/FetchPlaybackInfoCallback;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/ooyala/android/Video$FetchPlaybackInfoTask;

    invoke-direct {v0, p0, p1}, Lcom/ooyala/android/Video$FetchPlaybackInfoTask;-><init>(Lcom/ooyala/android/Video;Lcom/ooyala/android/FetchPlaybackInfoCallback;)V

    .line 188
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/Video$FetchPlaybackInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    return-object v0
.end method

.method public fetchPlaybackInfo()Z
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/ooyala/android/Video;->hasAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/AdSpot;

    .line 158
    invoke-virtual {v0}, Lcom/ooyala/android/AdSpot;->fetchPlaybackInfo()Z

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/Video;->_closedCaptions:Lcom/ooyala/android/ClosedCaptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/android/Video;->_closedCaptions:Lcom/ooyala/android/ClosedCaptions;

    invoke-virtual {v0}, Lcom/ooyala/android/ClosedCaptions;->fetchClosedCaptionsInfo()Z

    .line 164
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public firstVideo()Lcom/ooyala/android/Video;
    .locals 0

    .prologue
    .line 144
    return-object p0
.end method

.method public getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ooyala/android/AdSpot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    return-object v0
.end method

.method public getClosedCaptions()Lcom/ooyala/android/ClosedCaptions;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ooyala/android/Video;->_closedCaptions:Lcom/ooyala/android/ClosedCaptions;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/ooyala/android/Video;->_duration:I

    return v0
.end method

.method public getParent()Lcom/ooyala/android/Channel;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ooyala/android/Video;->_parent:Lcom/ooyala/android/Channel;

    return-object v0
.end method

.method public getStream()Lcom/ooyala/android/Stream;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ooyala/android/Video;->_streams:Ljava/util/Set;

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
    .line 224
    iget-object v0, p0, Lcom/ooyala/android/Video;->_streams:Ljava/util/Set;

    return-object v0
.end method

.method public hasAds()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClosedCaptions()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ooyala/android/Video;->_closedCaptions:Lcom/ooyala/android/ClosedCaptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/Video;->_closedCaptions:Lcom/ooyala/android/ClosedCaptions;

    invoke-virtual {v0}, Lcom/ooyala/android/ClosedCaptions;->getLanguages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertAd(Lcom/ooyala/android/AdSpot;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ooyala/android/Video;->_api:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {p1, v0}, Lcom/ooyala/android/AdSpot;->setAPI(Lcom/ooyala/android/PlayerAPIClient;)V

    .line 121
    iget-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 127
    invoke-virtual {p1}, Lcom/ooyala/android/AdSpot;->getTime()I

    move-result v2

    iget-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/AdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/AdSpot;->getTime()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/ooyala/android/Video;->_live:Z

    return v0
.end method

.method public nextVideo()Lcom/ooyala/android/Video;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ooyala/android/Video;->_parent:Lcom/ooyala/android/Channel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/Video;->_parent:Lcom/ooyala/android/Channel;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/Channel;->nextVideo(Lcom/ooyala/android/Video;)Lcom/ooyala/android/Video;

    move-result-object v0

    goto :goto_0
.end method

.method public previousVideo()Lcom/ooyala/android/Video;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ooyala/android/Video;->_parent:Lcom/ooyala/android/Channel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/Video;->_parent:Lcom/ooyala/android/Channel;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/Channel;->previousVideo(Lcom/ooyala/android/Video;)Lcom/ooyala/android/Video;

    move-result-object v0

    goto :goto_0
.end method

.method public setClosedCaptions(Lcom/ooyala/android/ClosedCaptions;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/ooyala/android/Video;->_closedCaptions:Lcom/ooyala/android/ClosedCaptions;

    .line 210
    return-void
.end method

.method public update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 40
    sget-object v1, Lcom/ooyala/android/Video$1;->$SwitchMap$com$ooyala$android$Constants$ReturnState:[I

    invoke-super {p0, p1}, Lcom/ooyala/android/ContentItem;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ooyala/android/Constants$ReturnState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/ooyala/android/Video;->_embedCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 51
    const-string/jumbo v2, "duration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    const-string/jumbo v2, "duration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ooyala/android/Video;->_duration:I

    .line 54
    :cond_0
    const-string/jumbo v2, "content_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    const-string/jumbo v2, "content_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LiveStream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ooyala/android/Video;->_live:Z

    .line 57
    :cond_1
    const-string/jumbo v2, "authorized"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "authorized"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "streams"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 59
    const-string/jumbo v2, "streams"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 61
    iget-object v1, p0, Lcom/ooyala/android/Video;->_streams:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    move v2, v0

    .line 62
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 63
    new-instance v4, Lcom/ooyala/android/Stream;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/ooyala/android/Stream;-><init>(Lorg/json/JSONObject;)V

    .line 64
    iget-boolean v1, p0, Lcom/ooyala/android/Video;->_live:Z

    if-nez v1, :cond_2

    iget-boolean v1, v4, Lcom/ooyala/android/Stream;->_isLiveStream:Z

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/ooyala/android/Video;->_live:Z

    .line 65
    if-eqz v4, :cond_3

    .line 66
    iget-object v1, p0, Lcom/ooyala/android/Video;->_streams:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 42
    :pswitch_0
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    .line 108
    :goto_2
    return-object v0

    .line 44
    :pswitch_1
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_UNMATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_2

    :cond_4
    move v1, v0

    .line 64
    goto :goto_1

    .line 70
    :cond_5
    :try_start_1
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_2

    .line 73
    :cond_6
    const-string/jumbo v2, "ads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 74
    const-string/jumbo v2, "ads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 76
    iget-object v3, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 77
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 78
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/ooyala/android/Video;->_api:Lcom/ooyala/android/PlayerAPIClient;

    invoke-static {v3, v4}, Lcom/ooyala/android/AdSpot;->create(Lorg/json/JSONObject;Lcom/ooyala/android/PlayerAPIClient;)Lcom/ooyala/android/AdSpot;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_7

    .line 80
    iget-object v4, p0, Lcom/ooyala/android/Video;->_ads:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 82
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Unable to create ad."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_2

    .line 88
    :cond_8
    :try_start_2
    const-string/jumbo v0, "closed_captions"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/Video;->_closedCaptions:Lcom/ooyala/android/ClosedCaptions;

    .line 90
    const-string/jumbo v0, "closed_captions"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 100
    new-instance v1, Lcom/ooyala/android/ClosedCaptions;

    invoke-direct {v1, v0}, Lcom/ooyala/android/ClosedCaptions;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/ooyala/android/Video;->_closedCaptions:Lcom/ooyala/android/ClosedCaptions;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    :cond_9
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_2

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public videoFromEmbedCode(Ljava/lang/String;Lcom/ooyala/android/Video;)Lcom/ooyala/android/Video;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ooyala/android/Video;->_embedCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
