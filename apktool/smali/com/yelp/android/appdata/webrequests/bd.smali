.class public final Lcom/yelp/android/appdata/webrequests/bd;
.super Lcom/yelp/android/appdata/webrequests/az;
.source "ComplimentsRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/bb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    const-string/jumbo v0, "user/requests/compliments"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/appdata/webrequests/az;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/az;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/bb;

    move-result-object v0

    return-object v0
.end method
