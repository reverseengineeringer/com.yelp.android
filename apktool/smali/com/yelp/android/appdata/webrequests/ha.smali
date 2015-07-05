.class public Lcom/yelp/android/appdata/webrequests/ha;
.super Lcom/yelp/android/av/h;
.source "VideoMarkUploadCompleteRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 8
    const-string/jumbo v0, "/business/video/mark_upload_complete"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 9
    const-string/jumbo v0, "biz_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ha;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "video_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/ha;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/ha;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
