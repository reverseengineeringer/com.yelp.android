.class Lcom/yelp/android/ui/activities/businesspage/ca;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/YelpDeal;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3299
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ca;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3300
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/ca;->b:Ljava/lang/String;

    .line 3301
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 3312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ca;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    .line 3313
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->hideLoadingDialog()V

    .line 3315
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpDeal;

    .line 3316
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ca;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3317
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getPurchases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 3318
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getPurchases()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/DealPurchase;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)Landroid/content/Intent;

    move-result-object v1

    .line 3320
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ca;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const/16 v4, 0x3f5

    invoke-virtual {v2, v1, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3322
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ca;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/s;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/yelp/android/ui/util/s;->a(Lcom/yelp/android/serializable/YelpDeal;Z)V

    .line 3323
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/bx;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ca;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/bx;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    .line 3324
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 3326
    const-string/jumbo v4, "deal dialog"

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 3330
    :cond_2
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
    .line 3305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ca;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    .line 3306
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->hideLoadingDialog()V

    .line 3307
    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 3308
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3296
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/ca;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
