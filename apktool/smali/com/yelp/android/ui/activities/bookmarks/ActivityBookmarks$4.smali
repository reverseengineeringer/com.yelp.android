.class Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$4;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 179
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$4;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$4;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;)V

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$4;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->a(I)V

    .line 186
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$4;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->show(Landroid/support/v4/app/o;Ljava/lang/String;)I

    .line 189
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BookmarksSort:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 190
    return-void
.end method
