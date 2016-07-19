.class Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment$1;
.super Ljava/lang/Object;
.source "BookmarksMapFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/map/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/map/e$a",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment$1;->a:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment$1;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment$1;->a:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment$1;->a:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment$1;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method
