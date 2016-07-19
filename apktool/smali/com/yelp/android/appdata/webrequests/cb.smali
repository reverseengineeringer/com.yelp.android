.class public Lcom/yelp/android/appdata/webrequests/cb;
.super Lcom/yelp/android/appdata/webrequests/k;
.source "FriendCheckInsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/cb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/cb$a;",
        ">;"
    }
.end annotation


# instance fields
.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/k$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cb$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 34
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "check_ins/friends"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 41
    iput v7, p0, Lcom/yelp/android/appdata/webrequests/cb;->k:I

    .line 42
    iput v7, p0, Lcom/yelp/android/appdata/webrequests/cb;->l:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->m:I

    .line 44
    return-void
.end method


# virtual methods
.method public A()I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cb;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cb;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public B()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cb$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 48
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/cb;->i_()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/serializable/YelpBusiness;->b(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/HashMap;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "nearby_check_ins"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/serializable/ExternalCheckIn;->a(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/cb;->g:Ljava/util/ArrayList;

    .line 54
    const-string/jumbo v1, "city_check_ins"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/serializable/ExternalCheckIn;->a(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/cb;->h:Ljava/util/ArrayList;

    .line 57
    const-string/jumbo v1, "other_check_ins"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/serializable/ExternalCheckIn;->a(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->i:Ljava/util/ArrayList;

    .line 60
    const-string/jumbo v0, "weekly_check_in_rank"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->k:I

    .line 61
    const-string/jumbo v0, "friend_check_in_rank"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->l:I

    .line 62
    const-string/jumbo v0, "friend_active_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->m:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->j:Ljava/util/ArrayList;

    .line 64
    const-string/jumbo v0, "location_names"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->j:Ljava/util/ArrayList;

    const-string/jumbo v1, "location_names"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/parcelgen/JsonUtil;->getStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 69
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cb$a;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cb;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/cb;->h:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/cb;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/cb$a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

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
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/cb;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cb$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->k:I

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->l:I

    return v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/cb;->m:I

    return v0
.end method
