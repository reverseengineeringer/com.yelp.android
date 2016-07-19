.class Lcom/yelp/android/ui/activities/FacebookConnectManager$4;
.super Ljava/lang/Object;
.source "FacebookConnectManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/FacebookConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/FacebookConnectManager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$4;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$4;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/b;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/b;->hideLoadingDialog()V

    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$4;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)Z

    .line 493
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$4;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$4;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager$a;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 494
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$4;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    .line 499
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 487
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/FacebookConnectManager$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
