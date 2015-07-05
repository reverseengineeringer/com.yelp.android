.class public Lcom/yelp/android/av/h;
.super Lcom/yelp/android/av/g;
.source "YelpResultlessApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    invoke-direct {p0, v0, p1, p2}, Lcom/yelp/android/av/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/yelp/android/av/h;->a(Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
