.class public abstract Lcom/ooyala/android/AdSpot;
.super Ljava/lang/Object;
.source "AdSpot.java"


# static fields
.field public static final REUSABLE:Z = true

.field public static final SINGLE_USE:Z


# instance fields
.field protected _api:Lcom/ooyala/android/PlayerAPIClient;

.field protected _clickURL:Ljava/net/URL;

.field protected final _isReusable:Z

.field protected _time:I

.field protected _trackingURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/AdSpot;->_time:I

    .line 20
    iput-object v1, p0, Lcom/ooyala/android/AdSpot;->_clickURL:Ljava/net/URL;

    .line 21
    iput-object v1, p0, Lcom/ooyala/android/AdSpot;->_trackingURLs:Ljava/util/List;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/AdSpot;->_isReusable:Z

    .line 27
    return-void
.end method

.method constructor <init>(ILjava/net/URL;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/AdSpot;->_time:I

    .line 20
    iput-object v1, p0, Lcom/ooyala/android/AdSpot;->_clickURL:Ljava/net/URL;

    .line 21
    iput-object v1, p0, Lcom/ooyala/android/AdSpot;->_trackingURLs:Ljava/util/List;

    .line 34
    iput p1, p0, Lcom/ooyala/android/AdSpot;->_time:I

    .line 35
    iput-object p2, p0, Lcom/ooyala/android/AdSpot;->_clickURL:Ljava/net/URL;

    .line 36
    iput-object p3, p0, Lcom/ooyala/android/AdSpot;->_trackingURLs:Ljava/util/List;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/AdSpot;->_isReusable:Z

    .line 38
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/AdSpot;->_time:I

    .line 20
    iput-object v1, p0, Lcom/ooyala/android/AdSpot;->_clickURL:Ljava/net/URL;

    .line 21
    iput-object v1, p0, Lcom/ooyala/android/AdSpot;->_trackingURLs:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/ooyala/android/AdSpot;->_api:Lcom/ooyala/android/PlayerAPIClient;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/AdSpot;->_isReusable:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/ooyala/android/AdSpot;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 44
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/AdSpot;->_time:I

    .line 20
    iput-object v1, p0, Lcom/ooyala/android/AdSpot;->_clickURL:Ljava/net/URL;

    .line 21
    iput-object v1, p0, Lcom/ooyala/android/AdSpot;->_trackingURLs:Ljava/util/List;

    .line 30
    iput-boolean p1, p0, Lcom/ooyala/android/AdSpot;->_isReusable:Z

    .line 31
    return-void
.end method

.method static create(Lorg/json/JSONObject;Lcom/ooyala/android/PlayerAPIClient;)Lcom/ooyala/android/AdSpot;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 93
    if-eqz p0, :cond_0

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    :try_start_0
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v2, "ooyala"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    new-instance v0, Lcom/ooyala/android/OoyalaAdSpot;

    invoke-direct {v0, p0, p1}, Lcom/ooyala/android/OoyalaAdSpot;-><init>(Lorg/json/JSONObject;Lcom/ooyala/android/PlayerAPIClient;)V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    const-class v2, Lcom/ooyala/android/AdSpot;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ad create failed due to JSONException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_2
    const-string/jumbo v2, "vast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    new-instance v0, Lcom/ooyala/android/VASTAdSpot;

    invoke-direct {v0, p0, p1}, Lcom/ooyala/android/VASTAdSpot;-><init>(Lorg/json/JSONObject;Lcom/ooyala/android/PlayerAPIClient;)V

    goto :goto_0

    .line 109
    :cond_3
    const-class v2, Lcom/ooyala/android/AdSpot;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown ad type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract fetchPlaybackInfo()Z
.end method

.method public getClickURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ooyala/android/AdSpot;->_clickURL:Ljava/net/URL;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/ooyala/android/AdSpot;->_time:I

    return v0
.end method

.method public getTrackingURLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ooyala/android/AdSpot;->_trackingURLs:Ljava/util/List;

    return-object v0
.end method

.method public isReusable()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/ooyala/android/AdSpot;->_isReusable:Z

    return v0
.end method

.method setAPI(Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/ooyala/android/AdSpot;->_api:Lcom/ooyala/android/PlayerAPIClient;

    .line 140
    return-void
.end method

.method update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 47
    if-nez p1, :cond_0

    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    .line 82
    :goto_0
    return-object v0

    .line 50
    :cond_0
    :try_start_0
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ooyala/android/AdSpot;->_time:I

    .line 56
    :cond_1
    :goto_1
    const-string/jumbo v1, "click_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 58
    :try_start_1
    new-instance v1, Ljava/net/URL;

    const-string/jumbo v2, "click_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ooyala/android/AdSpot;->_clickURL:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :cond_2
    :goto_2
    :try_start_2
    const-string/jumbo v1, "tracking_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 67
    const-string/jumbo v1, "tracking_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/ooyala/android/AdSpot;->_trackingURLs:Ljava/util/List;

    .line 69
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-ge v0, v2, :cond_4

    .line 71
    :try_start_3
    iget-object v2, p0, Lcom/ooyala/android/AdSpot;->_trackingURLs:Ljava/util/List;

    new-instance v3, Ljava/net/URL;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 69
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 52
    :cond_3
    :try_start_4
    iget v1, p0, Lcom/ooyala/android/AdSpot;->_time:I

    if-gez v1, :cond_1

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/ooyala/android/AdSpot;->_time:I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
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

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_0

    .line 59
    :catch_1
    move-exception v1

    .line 60
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Malformed Ad Click URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "click_url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ooyala/android/AdSpot;->_clickURL:Ljava/net/URL;

    goto/16 :goto_2

    .line 72
    :catch_2
    move-exception v2

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Malformed Ad Tracking URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "tracking_url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    .line 82
    :cond_4
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_0
.end method
