.class public Lcom/yelp/android/appdata/webrequests/p;
.super Lcom/yelp/android/av/g;
.source "AutomaticApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/parcelgen/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Ljava/util/Map;Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/parcelgen/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResult;>;",
            "Lcom/yelp/parcelgen/JsonParser",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p4}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 39
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/p;->a:Lcom/yelp/parcelgen/JsonParser;

    .line 40
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/p;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/parcelgen/JsonParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResult;>;",
            "Lcom/yelp/parcelgen/JsonParser",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/p;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Ljava/util/Map;Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/parcelgen/JsonParser;)V

    .line 34
    return-void
.end method


# virtual methods
.method public process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/p;->a:Lcom/yelp/parcelgen/JsonParser;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
