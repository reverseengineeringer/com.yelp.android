.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;
.super Lcom/google/android/gms/ads/a;
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


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 4587
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4590
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DFPSucceeded:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 4592
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4593
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 4600
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 4601
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4602
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getLocationOnScreen([I)V

    .line 4603
    const/4 v1, 0x1

    aget v0, v0, v1

    .line 4606
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 4608
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 4609
    if-eqz v0, :cond_1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 4610
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 4611
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v1

    .line 4612
    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->scrollBy(II)V

    .line 4616
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setVisibility(I)V

    .line 4617
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 4621
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DFPFailed:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "reason"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4622
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4623
    return-void
.end method
