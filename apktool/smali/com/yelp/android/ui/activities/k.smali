.class Lcom/yelp/android/ui/activities/k;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/yelp/android/ui/activities/k;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/k;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/k;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/k;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->b(Lcom/yelp/android/ui/activities/ActivityBookmarks;)V

    .line 379
    :cond_1
    return-void
.end method
