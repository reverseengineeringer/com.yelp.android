.class public Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "YelpSwipeRefreshListFragment.java"

# interfaces
.implements Landroid/support/v4/widget/bw;


# instance fields
.field private a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a_()V

    .line 89
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->k()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->c(Landroid/view/View;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->k()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeView(Landroid/view/View;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->c(Landroid/view/View;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 101
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->j()V

    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->b(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public k()Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 28
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v1, v3, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;II)V

    .line 34
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 37
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/bw;)V

    .line 38
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setBackgroundColor(I)V

    .line 40
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 43
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v4, v4, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZII)V

    .line 46
    if-eqz p3, :cond_0

    .line 47
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string/jumbo v2, "is_refreshing"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 51
    :cond_0
    return-object v0

    .line 40
    :array_0
    .array-data 4
        0x7f0a0069
        0x7f0a006b
        0x7f0a006a
        0x7f0a0068
    .end array-data
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v0, "is_refreshing"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    :cond_0
    return-void
.end method
