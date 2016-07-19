.class public abstract Lcom/yelp/android/ui/activities/messaging/apimanagers/d;
.super Ljava/lang/Object;
.source "ApiManager.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 53
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ApiAdapter dropped the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is already in progress."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->d(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Z)V

    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 19
    iput-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 21
    :cond_0
    return-void
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 57
    return-void
.end method
