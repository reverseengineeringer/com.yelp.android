.class Lcom/yelp/android/ui/activities/businesspage/cb;
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
        "Lcom/yelp/android/appdata/webrequests/ev;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 1

    .prologue
    .line 3365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3366
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/cb;->a:Ljava/lang/ref/WeakReference;

    .line 3367
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ev;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ev;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/cb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 3382
    if-eqz v0, :cond_0

    .line 3383
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ev;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ev;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;I)V

    .line 3386
    :cond_0
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
    .line 3371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/cb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 3372
    if-eqz v0, :cond_0

    .line 3373
    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/t;->clear()V

    .line 3374
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 3375
    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    .line 3377
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3361
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ev;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/cb;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ev;)V

    return-void
.end method
