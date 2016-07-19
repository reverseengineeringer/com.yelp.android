.class public abstract Lcom/yelp/android/appdata/webrequests/at;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "ComplimentsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/at$1;,
        Lcom/yelp/android/appdata/webrequests/at$a;,
        Lcom/yelp/android/appdata/webrequests/at$b;,
        Lcom/yelp/android/appdata/webrequests/at$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/at$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/at$a;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    invoke-direct {p0, v0, p2, p1}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 27
    iput-boolean p3, p0, Lcom/yelp/android/appdata/webrequests/at;->a:Z

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/at$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    const-string/jumbo v0, "compliments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Compliment;->CREATOR:Lcom/yelp/android/serializable/a;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/at;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 35
    :goto_0
    new-instance v2, Lcom/yelp/android/appdata/webrequests/at$a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/yelp/android/appdata/webrequests/at$a;-><init>(Ljava/util/List;ZLcom/yelp/android/appdata/webrequests/at$1;)V

    return-object v2

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 20
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/at;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/at$a;

    move-result-object v0

    return-object v0
.end method
