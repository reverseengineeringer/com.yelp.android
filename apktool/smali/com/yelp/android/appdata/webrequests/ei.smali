.class public Lcom/yelp/android/appdata/webrequests/ei;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "SaveBizPhotoVoteRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Media;)V
    .locals 2

    .prologue
    .line 12
    const-string/jumbo v0, "/business/photos/save_vote"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 13
    const-string/jumbo v0, "photo_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ei;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "vote"

    const-string/jumbo v1, "not_helpful"

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ei;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
