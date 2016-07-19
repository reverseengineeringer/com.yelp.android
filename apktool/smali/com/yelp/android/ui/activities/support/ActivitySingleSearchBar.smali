.class public abstract Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivitySingleSearchBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FragmentType:",
        "Lcom/yelp/android/ui/activities/support/YelpListFragment;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpActivity;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/support/YelpListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFragmentType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;)V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method protected abstract d()Lcom/yelp/android/ui/activities/support/YelpListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFragmentType;"
        }
    .end annotation
.end method

.method protected e()Lcom/yelp/android/ui/activities/support/YelpListFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFragmentType;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a:Lcom/yelp/android/ui/activities/support/YelpListFragment;

    return-object v0
.end method

.method protected getViewsToHideOnDrawerSelected()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getViewsToHideOnDrawerSelected()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    const v1, 0x7f0f0586

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const v1, 0x7f0f0347

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0f020d

    .line 28
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301e5

    const v0, 0x7f0f0385

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpListFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a:Lcom/yelp/android/ui/activities/support/YelpListFragment;

    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a:Lcom/yelp/android/ui/activities/support/YelpListFragment;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->d()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a:Lcom/yelp/android/ui/activities/support/YelpListFragment;

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a:Lcom/yelp/android/ui/activities/support/YelpListFragment;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 41
    :cond_0
    return-void
.end method
