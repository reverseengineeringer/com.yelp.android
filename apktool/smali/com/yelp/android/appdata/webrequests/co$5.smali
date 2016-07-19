.class Lcom/yelp/android/appdata/webrequests/co$5;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/co;

.field private b:I


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/co$5;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/User;",
            ")V"
        }
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/serializable/User;)V

    .line 761
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FriendCount:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/appdata/webrequests/co;)V

    .line 767
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 772
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->b:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 778
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/appdata/webrequests/co;)V

    .line 786
    :cond_0
    :goto_0
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->b:I

    .line 793
    :cond_1
    :goto_1
    return-void

    .line 782
    :cond_2
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->b:I

    if-nez v0, :cond_0

    .line 783
    const-string/jumbo v0, "LoginManager"

    invoke-static {v0, p2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 788
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->b:I

    .line 789
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/co;->c(Lcom/yelp/android/appdata/webrequests/co;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$5;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/co;->c(Lcom/yelp/android/appdata/webrequests/co;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "user_failed_to_fetch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 754
    check-cast p2, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/co$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V

    return-void
.end method
