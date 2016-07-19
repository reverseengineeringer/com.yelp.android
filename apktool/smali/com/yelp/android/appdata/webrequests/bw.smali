.class public Lcom/yelp/android/appdata/webrequests/bw;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "FavoritesListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/FavoritesList;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/favorites_list"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 26
    const-string/jumbo v0, "list_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "limit"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bw;->a(Ljava/lang/String;I)V

    .line 28
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/bw;->a(Ljava/lang/String;I)V

    .line 30
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/bw;->a:I

    .line 31
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/bw;->g:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/yelp/android/appdata/webrequests/bw;-><init>(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/FavoritesList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/yelp/android/serializable/FavoritesList;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "favorites_list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/FavoritesList;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/core/b;->b(Ljava/lang/Object;)V

    .line 42
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/bw;->a:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/bw;->a:I

    .line 43
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/bw;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bw;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/bw;->g:Ljava/lang/String;

    iget v2, p0, Lcom/yelp/android/appdata/webrequests/bw;->a:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/bw;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/bw;-><init>(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 48
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bw;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 49
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
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/bw;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/FavoritesList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/bw;->a(Lcom/yelp/android/serializable/FavoritesList;)V

    return-void
.end method
