.class Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$2;
.super Ljava/lang/Object;
.source "ActivityComboBookmarks.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic b:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$2;->b:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$2;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 197
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dk;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$2;->a:Lcom/yelp/android/serializable/YelpBusiness;

    new-instance v2, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$2;->b:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$2;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v2, v3, v4}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/dk;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dk;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$2;->b:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e()V

    .line 201
    const/4 v0, 0x1

    return v0
.end method
