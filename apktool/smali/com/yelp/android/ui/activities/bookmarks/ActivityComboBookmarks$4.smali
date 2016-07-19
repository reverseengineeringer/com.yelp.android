.class Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$4;
.super Ljava/lang/Object;
.source "ActivityComboBookmarks.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$4;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$4;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/c;->b(I)V

    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$4;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$4;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    new-instance v1, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;)Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;

    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$4;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->p_()V

    .line 411
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 412
    return-void
.end method
