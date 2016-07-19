.class public Lcom/yelp/android/appdata/webrequests/ek;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "SaveCheckInFeedbackRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/appdata/webrequests/ek;-><init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2

    .prologue
    .line 19
    const-string/jumbo v0, "check_in/save_feedback"

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 20
    const-string/jumbo v1, "feedback"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "POSITIVE"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/ek;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ek;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ek;->a:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/yelp/android/appdata/webrequests/ek;->g:Z

    .line 24
    return-void

    .line 20
    :cond_0
    const-string/jumbo v0, "NONE"

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ek;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/ek;->g:Z

    return v0
.end method
