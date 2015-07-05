.class public Lcom/yelp/android/appdata/webrequests/fp;
.super Lcom/yelp/android/av/h;
.source "SaveDraftRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/av/i;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V
    .locals 2

    .prologue
    .line 12
    const-string/jumbo v0, "reviews/draft/save"

    invoke-direct {p0, v0, p4}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 13
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fp;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/fp;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "rating"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/fp;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "replace"

    const-string/jumbo v1, "yes"

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/fp;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string/jumbo v0, "source"

    invoke-virtual {p5}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/fp;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
