.class public Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "YelpSwipeRefreshListFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$a;


# instance fields
.field protected i:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->p_()V

    .line 99
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->k()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->c(Landroid/view/View;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p2, v1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;II)V

    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$a;)V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setBackgroundColor(I)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZII)V

    .line 58
    if-eqz p3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string/jumbo v1, "is_refreshing"

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 62
    :cond_0
    return-void

    .line 51
    :array_0
    .array-data 4
        0x7f0e00a2
        0x7f0e00a4
        0x7f0e00a3
        0x7f0e00a1
    .end array-data
.end method

.method protected b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->k()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeView(Landroid/view/View;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->c(Landroid/view/View;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 111
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v0

    return v0
.end method

.method public k()Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->l()V

    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->c(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 27
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 28
    invoke-virtual {p0, v0, v1, p3}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    :cond_0
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "is_refreshing"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->j()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    :cond_0
    return-void
.end method
