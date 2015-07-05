.class Lcom/yelp/android/ui/activities/businesspage/bm;
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
        "Lcom/yelp/android/appdata/webrequests/ez;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 3510
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ez;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3520
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 3521
    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/ez;->c:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 3523
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3524
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;

    .line 3529
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ez;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/Map;)Ljava/util/Map;

    .line 3530
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/ez;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3531
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 3535
    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ez;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3536
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 3540
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ez;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 3541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget v1, p2, Lcom/yelp/android/appdata/webrequests/ez;->e:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;I)I

    .line 3542
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 3543
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    .line 3548
    :goto_2
    return-void

    .line 3526
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3545
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 3546
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    goto :goto_2
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
    .line 3514
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 3515
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/bm;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 3516
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3510
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ez;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/bm;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ez;)V

    return-void
.end method
