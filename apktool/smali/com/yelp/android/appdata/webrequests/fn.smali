.class public Lcom/yelp/android/appdata/webrequests/fn;
.super Lcom/yelp/android/av/h;
.source "SaveBizVideoFeedbackRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Video;Z)V
    .locals 2

    .prologue
    .line 10
    const-string/jumbo v0, "/business/video/save_feedback"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 11
    const-string/jumbo v0, "video_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/fn;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "video_source"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->getVideoSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/fn;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string/jumbo v1, "feedback"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "POSITIVE"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/fn;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 13
    :cond_0
    const-string/jumbo v0, "NONE"

    goto :goto_0
.end method
