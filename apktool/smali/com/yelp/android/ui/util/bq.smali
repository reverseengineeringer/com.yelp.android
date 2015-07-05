.class final Lcom/yelp/android/ui/util/bq;
.super Lcom/yelp/android/ui/util/bm;
.source "ScrollToLoadListView.java"


# instance fields
.field final synthetic b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private c:Z

.field private d:Lcom/yelp/android/ui/util/ScrollToLoadListView;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/ScrollToLoadListView;)V
    .locals 1

    .prologue
    .line 316
    iput-object p1, p0, Lcom/yelp/android/ui/util/bq;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/bm;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/bk;)V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/bq;->c:Z

    .line 317
    iput-object p2, p0, Lcom/yelp/android/ui/util/bq;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 318
    return-void
.end method

.method private a(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 358
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/yelp/android/ui/util/bq;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v1

    .line 360
    if-eqz v1, :cond_0

    .line 361
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 362
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 364
    :cond_0
    instance-of v1, v0, Lcom/yelp/android/ui/util/bo;

    if-eqz v1, :cond_1

    .line 366
    check-cast v0, Lcom/yelp/android/ui/util/bo;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bo;->a()V

    .line 368
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bq;->c:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/util/bm;->onScroll(Landroid/widget/AbsListView;III)V

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/util/bq;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 328
    if-le p4, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/util/bq;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p4, :cond_0

    .line 330
    iget-object v1, p0, Lcom/yelp/android/ui/util/bq;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBottomReached(Z)V

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/util/bq;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 335
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/bq;->a(Landroid/widget/AbsListView;I)V

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_3

    .line 341
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/bq;->c:Z

    .line 345
    :goto_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 346
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 347
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/bq;->a(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 343
    :cond_3
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/bq;->c:Z

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 354
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/bm;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 355
    return-void
.end method
