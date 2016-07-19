.class public abstract Lcom/yelp/android/appdata/webrequests/ep;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "SuggestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/core/b",
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
.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected final k:D

.field protected final l:D

.field protected m:Landroid/location/Location;

.field protected n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 21
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "no_location"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ep;->a:Landroid/location/Location;

    .line 24
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ep;->a:Landroid/location/Location;

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 25
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ep;->a:Landroid/location/Location;

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Landroid/location/Location;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
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

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 51
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/ep;->k:D

    .line 52
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lcom/yelp/android/appdata/webrequests/ep;->l:D

    .line 53
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/ep;->m:Landroid/location/Location;

    .line 54
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/ep;->n:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "latitude"

    iget-wide v2, p0, Lcom/yelp/android/appdata/webrequests/ep;->k:D

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/ep;->c(Ljava/lang/String;D)V

    .line 56
    const-string/jumbo v0, "longitude"

    iget-wide v2, p0, Lcom/yelp/android/appdata/webrequests/ep;->l:D

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/ep;->c(Ljava/lang/String;D)V

    .line 57
    return-void

    :cond_1
    move-wide v0, v2

    .line 51
    goto :goto_0
.end method


# virtual methods
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    const-string/jumbo v0, "suggestions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "analytics_payload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/ep;->i:Ljava/lang/String;

    .line 64
    const-string/jumbo v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "request_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/ep;->g:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "term"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/ep;->h:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ep;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ep;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ep;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/yelp/android/appdata/webrequests/ep;->k:D

    return-wide v0
.end method

.method public i_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ep;->g:Ljava/lang/String;

    return-object v0
.end method

.method public x()D
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/yelp/android/appdata/webrequests/ep;->l:D

    return-wide v0
.end method

.method public y()Landroid/location/Location;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ep;->m:Landroid/location/Location;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ep;->n:Ljava/lang/String;

    return-object v0
.end method
