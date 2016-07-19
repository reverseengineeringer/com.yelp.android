.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "BusinessPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 1

    .prologue
    .line 4934
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    .line 4936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    .line 4940
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4941
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 4942
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    .line 4943
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;->b:Z

    if-eqz v0, :cond_0

    .line 4944
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoSwipe:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;->b:Z

    .line 4950
    :cond_0
    :goto_0
    return-void

    .line 4948
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6

    .prologue
    .line 4954
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/z;->g()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/z;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 4957
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/z;->h()V

    .line 4959
    :cond_0
    return-void
.end method
