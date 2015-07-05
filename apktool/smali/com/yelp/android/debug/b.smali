.class Lcom/yelp/android/debug/b;
.super Ljava/lang/Object;
.source "FreezerDebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yelp/android/debug/FreezerDebugActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/debug/FreezerDebugActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/debug/b;->b:Lcom/yelp/android/debug/FreezerDebugActivity;

    iput-object p2, p0, Lcom/yelp/android/debug/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dp;

    invoke-direct {v0, v3, v2}, Lcom/yelp/android/appdata/webrequests/dp;-><init>(Lcom/yelp/android/appdata/webrequests/m;I)V

    .line 48
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dp;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 49
    iget-object v1, p0, Lcom/yelp/android/debug/b;->b:Lcom/yelp/android/debug/FreezerDebugActivity;

    invoke-static {v1}, Lcom/yelp/android/debug/FreezerDebugActivity;->a(Lcom/yelp/android/debug/FreezerDebugActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/debug/c;

    iget-object v3, p0, Lcom/yelp/android/debug/b;->b:Lcom/yelp/android/debug/FreezerDebugActivity;

    iget-object v4, p0, Lcom/yelp/android/debug/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/debug/c;-><init>(Lcom/yelp/android/debug/FreezerDebugActivity;Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->ALPHABETICAL:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-direct {v0, v3, v1, v2}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;-><init>(Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;I)V

    .line 53
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 54
    iget-object v1, p0, Lcom/yelp/android/debug/b;->b:Lcom/yelp/android/debug/FreezerDebugActivity;

    invoke-static {v1}, Lcom/yelp/android/debug/FreezerDebugActivity;->a(Lcom/yelp/android/debug/FreezerDebugActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/debug/c;

    iget-object v3, p0, Lcom/yelp/android/debug/b;->b:Lcom/yelp/android/debug/FreezerDebugActivity;

    iget-object v4, p0, Lcom/yelp/android/debug/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/debug/c;-><init>(Lcom/yelp/android/debug/FreezerDebugActivity;Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
