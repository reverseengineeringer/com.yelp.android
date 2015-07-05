.class Lcom/yelp/android/ui/activities/businesspage/bg;
.super Lcom/google/android/gms/ads/AdListener;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 3257
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 3

    .prologue
    .line 3291
    sget-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->DFPFailed:Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "reason"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 3293
    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3260
    sget-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->DFPSucceeded:Lcom/yelp/android/analytics/iris/AutoIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 3262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/h;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->t(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 3270
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 3271
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3272
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getLocationOnScreen([I)V

    .line 3273
    const/4 v1, 0x1

    aget v0, v0, v1

    .line 3276
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 3278
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 3279
    if-eqz v0, :cond_1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 3280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 3281
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v1

    .line 3282
    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->scrollBy(II)V

    .line 3286
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bg;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setVisibility(I)V

    .line 3287
    return-void
.end method
