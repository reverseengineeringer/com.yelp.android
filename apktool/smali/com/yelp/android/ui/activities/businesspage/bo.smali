.class Lcom/yelp/android/ui/activities/businesspage/bo;
.super Landroid/support/v7/widget/bt;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 1

    .prologue
    .line 3574
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/bo;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/bt;-><init>()V

    .line 3576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/bo;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    .line 3580
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/bt;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3581
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 3582
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bo;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    .line 3583
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/bo;->b:Z

    if-eqz v0, :cond_0

    .line 3584
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoSwipe:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/bo;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/bo;->b:Z

    .line 3590
    :cond_0
    :goto_0
    return-void

    .line 3588
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bo;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    goto :goto_0
.end method
