.class final Lcom/yelp/android/ui/util/ScrollToLoadListView$e;
.super Lcom/yelp/android/ui/util/ScrollToLoadListView$a;
.source "ScrollToLoadListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ScrollToLoadListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private c:Z

.field private d:Lcom/yelp/android/ui/util/ScrollToLoadListView;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/ScrollToLoadListView;)V
    .locals 1

    .prologue
    .line 308
    iput-object p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/ScrollToLoadListView$1;)V

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->c:Z

    .line 309
    iput-object p2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 310
    return-void
.end method

.method private a(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 354
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_0

    .line 357
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 358
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 360
    :cond_0
    instance-of v1, v0, Lcom/yelp/android/ui/util/ScrollToLoadListView$c;

    if-eqz v1, :cond_1

    .line 362
    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView$c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView$c;->a()V

    .line 364
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->c:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 318
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;->onScroll(Landroid/widget/AbsListView;III)V

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 323
    if-le p4, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p4, :cond_0

    .line 325
    iget-object v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBottomReached(Z)V

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 330
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->a(Landroid/widget/AbsListView;I)V

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 333
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

    .line 337
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->c:Z

    .line 341
    :goto_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 342
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 343
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->a(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 339
    :cond_3
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->c:Z

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 351
    return-void
.end method
