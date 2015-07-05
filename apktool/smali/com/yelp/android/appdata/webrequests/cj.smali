.class public Lcom/yelp/android/appdata/webrequests/cj;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "FriendCheckInsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/ck;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ck;",
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

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 36
    iput v7, p0, Lcom/yelp/android/appdata/webrequests/cj;->e:I

    .line 37
    iput v7, p0, Lcom/yelp/android/appdata/webrequests/cj;->f:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->g:I

    .line 39
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->e:I

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ck;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 43
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/cj;->getRequestId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/serializable/YelpBusiness;->jsonBusinessesToMap(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/HashMap;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "nearby_check_ins"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/serializable/ExternalCheckIn;->mixedCheckInsFromJSONArray(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/cj;->a:Ljava/util/ArrayList;

    .line 48
    const-string/jumbo v1, "city_check_ins"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/serializable/ExternalCheckIn;->mixedCheckInsFromJSONArray(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/cj;->b:Ljava/util/ArrayList;

    .line 50
    const-string/jumbo v1, "other_check_ins"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/serializable/ExternalCheckIn;->mixedCheckInsFromJSONArray(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->c:Ljava/util/ArrayList;

    .line 52
    const-string/jumbo v0, "weekly_check_in_rank"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->e:I

    .line 53
    const-string/jumbo v0, "friend_check_in_rank"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->f:I

    .line 54
    const-string/jumbo v0, "friend_active_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->g:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->d:Ljava/util/ArrayList;

    .line 56
    const-string/jumbo v0, "location_names"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->d:Ljava/util/ArrayList;

    const-string/jumbo v1, "location_names"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/parcelgen/JsonUtil;->getStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 60
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ck;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cj;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/cj;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/cj;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/ck;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->g:I

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cj;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public e()Ljava/util/ArrayList;
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
    .line 92
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cj;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLocationAbsolutelyRequired()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/cj;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ck;

    move-result-object v0

    return-object v0
.end method
