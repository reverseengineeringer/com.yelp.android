.class public final Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;
.super Ljava/lang/Object;
.source "ActivityComboBookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/e",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Lcom/yelp/android/g/e;

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/yelp/android/g/e;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;->a:Lcom/yelp/android/g/e;

    .line 482
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;->a:Lcom/yelp/android/g/e;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/g/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;->a:Lcom/yelp/android/g/e;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/g/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    return-void
.end method
