.class public Lcom/yelp/android/appdata/webrequests/fq;
.super Lcom/yelp/android/av/h;
.source "SaveTipFeedbackRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/appdata/webrequests/fq;-><init>(Ljava/lang/String;ZLcom/yelp/android/av/i;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/yelp/android/av/i;)V
    .locals 2

    .prologue
    .line 18
    const-string/jumbo v0, "quicktips/save_feedback"

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 19
    const-string/jumbo v0, "quicktip_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fq;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    if-eqz p2, :cond_0

    const-string/jumbo v0, "POSITIVE"

    .line 21
    :goto_0
    const-string/jumbo v1, "feedback"

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/fq;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/fq;->a:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/yelp/android/appdata/webrequests/fq;->b:Z

    .line 24
    return-void

    .line 20
    :cond_0
    const-string/jumbo v0, "NONE"

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/fq;->b:Z

    return v0
.end method
