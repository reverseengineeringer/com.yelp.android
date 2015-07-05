.class public Lcom/yelp/android/appdata/webrequests/fo;
.super Lcom/yelp/android/av/h;
.source "SaveCheckInFeedbackRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/appdata/webrequests/fo;-><init>(Ljava/lang/String;ZLcom/yelp/android/av/i;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/yelp/android/av/i;)V
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "check_in/save_feedback"

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 17
    const-string/jumbo v1, "feedback"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "POSITIVE"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/fo;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fo;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void

    .line 17
    :cond_0
    const-string/jumbo v0, "NONE"

    goto :goto_0
.end method
