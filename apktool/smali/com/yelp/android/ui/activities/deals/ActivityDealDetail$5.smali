.class Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$5;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "ActivityDealDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReview;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$5;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$5;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Ljava/util/List;)Ljava/util/List;

    .line 627
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$5;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    .line 628
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 632
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
    const v3, 0x7f0f0160

    .line 637
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$5;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$5;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ErrorType;->buildAdapter(Landroid/content/Context;)Landroid/widget/BaseAdapter;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->a:Landroid/widget/BaseAdapter;

    .line 639
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$5;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->b:Landroid/view/View;

    .line 640
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 622
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
