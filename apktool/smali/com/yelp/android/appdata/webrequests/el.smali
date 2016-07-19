.class public Lcom/yelp/android/appdata/webrequests/el;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "SaveDraftRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "reviews/draft/save"

    invoke-direct {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 15
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string/jumbo v0, "rating"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/el;->b(Ljava/lang/String;I)V

    .line 18
    const-string/jumbo v0, "replace"

    const-string/jumbo v1, "yes"

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "source"

    invoke-virtual {p5}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
