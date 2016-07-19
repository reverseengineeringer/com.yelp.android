.class public Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "BookmarksListFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;


# instance fields
.field private a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    return-void
.end method

.method public static c()Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;-><init>()V

    return-object v0
.end method

.method private f()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;Z)V

    .line 91
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->NUMBERED:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 101
    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 74
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->c:Ljava/lang/Runnable;

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BookmarksList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    if-eqz p1, :cond_1

    .line 38
    const-string/jumbo v0, "business_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->b:Ljava/util/ArrayList;

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->f()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 50
    return-void

    .line 40
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->l()V

    .line 56
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    const-string/jumbo v0, "business_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 62
    return-void
.end method
