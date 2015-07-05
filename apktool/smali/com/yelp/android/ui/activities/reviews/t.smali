.class Lcom/yelp/android/ui/activities/reviews/t;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 729
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 730
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 731
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 732
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    .line 745
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 738
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/ui/panels/PanelError;)Lcom/yelp/android/ui/panels/PanelError;

    .line 740
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/util/ErrorType;->GENERIC_ERROR:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 741
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f070243

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(I)V

    goto :goto_0
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
    .line 750
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 751
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->i(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/ui/panels/PanelError;)Lcom/yelp/android/ui/panels/PanelError;

    .line 753
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 755
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/t;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f070243

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(I)V

    .line 757
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 724
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/t;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
