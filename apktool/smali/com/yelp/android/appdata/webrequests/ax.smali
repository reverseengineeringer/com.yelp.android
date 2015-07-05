.class public final Lcom/yelp/android/appdata/webrequests/ax;
.super Lcom/yelp/android/appdata/webrequests/av;
.source "ComplimentActionRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/Compliment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;",
            "Lcom/yelp/android/serializable/Compliment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    const-string/jumbo v0, "compliment/delete"

    invoke-direct {p0, p1, v0, p2}, Lcom/yelp/android/appdata/webrequests/av;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Lcom/yelp/android/serializable/Compliment;)V

    .line 57
    const-string/jumbo v0, "thanx_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ax;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/av;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Compliment;

    move-result-object v0

    return-object v0
.end method
