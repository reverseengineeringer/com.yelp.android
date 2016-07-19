.class Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->onCreate(Landroid/os/Bundle;)V
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
    .line 144
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 147
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 148
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->b(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)I

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->f(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->e(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/lang/String;Ljava/util/List;I)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->g(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->a(Ljava/util/ArrayList;)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->h(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->a(Ljava/util/ArrayList;)V

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    .line 157
    :cond_0
    return-void
.end method
