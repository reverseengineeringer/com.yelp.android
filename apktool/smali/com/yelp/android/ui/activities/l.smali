.class Lcom/yelp/android/ui/activities/l;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/q;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/yelp/android/ui/activities/l;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/l;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/i;->b(I)V

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/l;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/l;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    new-instance v1, Lcom/yelp/android/ui/activities/n;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/n;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/ui/activities/n;)Lcom/yelp/android/ui/activities/n;

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/l;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a_()V

    .line 393
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 394
    return-void
.end method
