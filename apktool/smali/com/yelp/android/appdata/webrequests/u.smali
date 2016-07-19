.class public Lcom/yelp/android/appdata/webrequests/u;
.super Lcom/yelp/android/appdata/webrequests/w;
.source "BusinessAttributesAddRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/BusinessAttributes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    const-string/jumbo v0, "business/attributes/add"

    invoke-direct {p0, p1, v0, p2}, Lcom/yelp/android/appdata/webrequests/w;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 10
    return-void
.end method
