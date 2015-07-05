.class public Lcom/yelp/android/appdata/webrequests/fm;
.super Lcom/yelp/android/av/h;
.source "SaveBizPhotoFeedbackRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Photo;Z)V
    .locals 2

    .prologue
    .line 10
    const-string/jumbo v0, "business/photos/save_feedback"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 11
    const-string/jumbo v0, "photo_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/fm;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v1, "feedback"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "POSITIVE"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/fm;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void

    .line 12
    :cond_0
    const-string/jumbo v0, "NONE"

    goto :goto_0
.end method
