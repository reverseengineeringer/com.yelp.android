.class Lcom/yelp/android/ui/activities/deals/d;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "ActivityDealDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/appdata/webrequests/bg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/d;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/bg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/bg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/d;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/bg;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/d;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/bg;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/d;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/d;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/bg;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Ljava/util/List;)Ljava/util/List;

    .line 578
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/d;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/bg;->a()Lcom/yelp/android/serializable/MapSpan;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Lcom/yelp/android/serializable/MapSpan;)Lcom/yelp/android/serializable/MapSpan;

    .line 579
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/d;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    .line 581
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
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
    const v3, 0x7f0c0122

    .line 567
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/d;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/i;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/d;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ErrorType;->buildAdapter(Landroid/content/Context;)Landroid/widget/BaseAdapter;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/i;->a:Landroid/widget/BaseAdapter;

    .line 569
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/d;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/i;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/i;->b:Landroid/view/View;

    .line 570
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 558
    check-cast p2, Lcom/yelp/android/appdata/webrequests/bg;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/d;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/bg;)V

    return-void
.end method
