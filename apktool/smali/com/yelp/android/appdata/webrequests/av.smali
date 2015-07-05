.class public abstract Lcom/yelp/android/appdata/webrequests/av;
.super Lcom/yelp/android/av/g;
.source "ComplimentActionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/Compliment;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/serializable/Compliment;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Lcom/yelp/android/serializable/Compliment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Compliment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    invoke-direct {p0, v0, p2, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 26
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/av;->a:Lcom/yelp/android/serializable/Compliment;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Compliment;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/av;->a:Lcom/yelp/android/serializable/Compliment;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/av;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Compliment;

    move-result-object v0

    return-object v0
.end method
