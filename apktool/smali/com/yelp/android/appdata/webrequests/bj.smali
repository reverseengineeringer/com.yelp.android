.class public Lcom/yelp/android/appdata/webrequests/bj;
.super Lcom/yelp/android/av/g;
.source "DealRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/YelpDeal;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "deal"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 15
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/bj;->a:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "deal_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/bj;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bj;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpDeal;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/yelp/android/serializable/YelpDeal;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "deal"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/bj;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    return-object v0
.end method
