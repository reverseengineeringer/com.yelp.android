.class public Lcom/yelp/android/appdata/webrequests/eh;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "SaveBizPhotoFeedbackRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Photo;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "business/photos/save_feedback"

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 15
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/eh;->a:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/yelp/android/appdata/webrequests/eh;->g:Z

    .line 17
    const-string/jumbo v0, "photo_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/eh;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/eh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string/jumbo v1, "feedback"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "POSITIVE"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/eh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void

    .line 18
    :cond_0
    const-string/jumbo v0, "NONE"

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/eh;->g:Z

    return v0
.end method
