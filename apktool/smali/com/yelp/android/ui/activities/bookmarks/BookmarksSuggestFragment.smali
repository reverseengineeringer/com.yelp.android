.class public Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "BookmarksSuggestFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/search/a;

.field private b:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    return-void
.end method

.method public static c()Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 66
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/search/a;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->a:Lcom/yelp/android/ui/activities/search/a;

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->a:Lcom/yelp/android/ui/activities/search/a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->a(Landroid/widget/ListAdapter;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->b(Z)V

    .line 62
    return-void
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->v_()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 31
    const v0, 0x7f0300d7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    const v1, 0x7f0f0343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment$1;-><init>(Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->b:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    :cond_0
    return-void
.end method

.method public v_()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method
