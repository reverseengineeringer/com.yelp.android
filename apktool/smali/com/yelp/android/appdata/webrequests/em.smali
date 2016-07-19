.class public Lcom/yelp/android/appdata/webrequests/em;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "SaveTipFeedbackRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/appdata/webrequests/em;-><init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "quicktips/save_feedback"

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 17
    const-string/jumbo v0, "quicktip_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/em;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    if-eqz p2, :cond_0

    const-string/jumbo v0, "POSITIVE"

    .line 19
    :goto_0
    const-string/jumbo v1, "feedback"

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/em;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/em;->a:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, Lcom/yelp/android/appdata/webrequests/em;->g:Z

    .line 22
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
    .line 25
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/em;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/em;->g:Z

    return v0
.end method
