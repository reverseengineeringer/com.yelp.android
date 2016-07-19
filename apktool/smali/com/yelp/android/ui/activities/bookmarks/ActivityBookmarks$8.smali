.class Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$8;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$8;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 564
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/c;->b(I)V

    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$8;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 566
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$8;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->p(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$8;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v1

    iget v1, v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->descriptionPastParticiple:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 568
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$8;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)V

    .line 570
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$8;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a()V

    .line 572
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 573
    return-void
.end method
