.class public Lcom/yelp/android/appdata/webrequests/ej;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "SaveBizVideoFeedbackRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Video;Z)V
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "/business/video/save_feedback"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 17
    const-string/jumbo v0, "video_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ej;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "video_source"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ej;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v1, "feedback"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "POSITIVE"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/ej;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ej;->a:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, Lcom/yelp/android/appdata/webrequests/ej;->g:Z

    .line 22
    return-void

    .line 19
    :cond_0
    const-string/jumbo v0, "NONE"

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ej;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/ej;->g:Z

    return v0
.end method
