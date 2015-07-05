.class Lcom/yelp/android/ui/activities/businesspage/bi;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 3389
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/bi;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bi;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 3401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bi;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    .line 3402
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 3393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bi;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 3394
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bi;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/bi;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 3395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bi;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    .line 3396
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3389
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dm;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/bi;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V

    return-void
.end method
