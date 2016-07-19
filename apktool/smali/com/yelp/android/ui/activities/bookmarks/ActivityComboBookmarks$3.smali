.class Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$3;
.super Ljava/lang/Object;
.source "ActivityComboBookmarks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->f()V
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
    .line 390
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$3;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$3;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$3;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$3;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->b(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)V

    .line 396
    :cond_1
    return-void
.end method
