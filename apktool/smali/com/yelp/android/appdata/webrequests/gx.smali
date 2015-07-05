.class public Lcom/yelp/android/appdata/webrequests/gx;
.super Lcom/yelp/android/av/g;
.source "UserRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/profile"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 13
    if-eqz p2, :cond_1

    .line 14
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/gx;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    :goto_0
    return-void

    .line 15
    :cond_1
    if-eqz p3, :cond_0

    .line 16
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/gx;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/User;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gx;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method
