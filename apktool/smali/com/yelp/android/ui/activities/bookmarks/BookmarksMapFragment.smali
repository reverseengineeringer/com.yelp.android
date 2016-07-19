.class public Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;
.super Lcom/yelp/android/ui/util/YelpMapFragment;
.source "BookmarksMapFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpMapFragment",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;",
        "Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;"
    }
.end annotation


# instance fields
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

.field private final c:Lcom/yelp/android/ui/map/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/e$a",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;-><init>()V

    .line 80
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment$1;-><init>(Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->c:Lcom/yelp/android/ui/map/e$a;

    return-void
.end method

.method public static b()Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;-><init>()V

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->g()V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/yelp/android/ui/map/j;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/yelp/android/ui/map/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->f()V

    .line 78
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->h()V

    .line 57
    return-void
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
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->b:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->h()V

    .line 71
    :cond_0
    return-void
.end method

.method public c()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BookmarksMap:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->c()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 37
    if-eqz p3, :cond_0

    .line 38
    const-string/jumbo v0, "business_list"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->b:Ljava/util/ArrayList;

    .line 40
    :cond_0
    const v0, 0x7f030182

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->c(Landroid/view/View;)V

    .line 42
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v2, Lcom/yelp/android/ui/map/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/map/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 43
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->c:Lcom/yelp/android/ui/map/e$a;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->setInfoWindowListener(Lcom/yelp/android/ui/map/e$a;)V

    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->h()V

    .line 45
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 51
    const-string/jumbo v0, "business_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    return-void
.end method
