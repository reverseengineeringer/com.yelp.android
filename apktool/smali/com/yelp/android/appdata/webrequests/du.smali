.class public Lcom/yelp/android/appdata/webrequests/du;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "ReviewDraftDeleteMultipleRequest.java"


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/core/c$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/reviews/draft/delete_multiple"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 17
    const-string/jumbo v0, "business_ids"

    const/16 v1, 0x2c

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/b;->a(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/du;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
