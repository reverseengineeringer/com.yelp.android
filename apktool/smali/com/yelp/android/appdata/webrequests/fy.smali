.class public abstract Lcom/yelp/android/appdata/webrequests/fy;
.super Lcom/yelp/android/av/g;
.source "SuggestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field public static a:Landroid/location/Location;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected final f:D

.field protected final g:D

.field protected h:Landroid/location/Location;

.field protected i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 23
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "no_location"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/fy;->a:Landroid/location/Location;

    .line 25
    sget-object v0, Lcom/yelp/android/appdata/webrequests/fy;->a:Landroid/location/Location;

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 26
    sget-object v0, Lcom/yelp/android/appdata/webrequests/fy;->a:Landroid/location/Location;

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;Landroid/location/Location;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<TT;>;>;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 47
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/fy;->f:D

    .line 48
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lcom/yelp/android/appdata/webrequests/fy;->g:D

    .line 49
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/fy;->h:Landroid/location/Location;

    .line 50
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/fy;->i:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "latitude"

    iget-wide v2, p0, Lcom/yelp/android/appdata/webrequests/fy;->f:D

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fy;->addObfuscatedUrlParam(Ljava/lang/String;D)V

    .line 52
    const-string/jumbo v0, "longitude"

    iget-wide v2, p0, Lcom/yelp/android/appdata/webrequests/fy;->g:D

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fy;->addObfuscatedUrlParam(Ljava/lang/String;D)V

    .line 53
    return-void

    :cond_1
    move-wide v0, v2

    .line 47
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fy;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    const-string/jumbo v0, "suggestions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "analytics_payload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/fy;->d:Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "request_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/fy;->b:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "term"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/fy;->c:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/yelp/android/appdata/webrequests/fy;->f:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/yelp/android/appdata/webrequests/fy;->g:D

    return-wide v0
.end method

.method public e()Landroid/location/Location;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fy;->h:Landroid/location/Location;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fy;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/fy;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
