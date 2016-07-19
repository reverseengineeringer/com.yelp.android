.class public final Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;
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
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    new-instance v0, Lcom/yelp/android/g/e;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/yelp/android/g/e;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;->a:Lcom/yelp/android/g/e;

    .line 688
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;",
            "Ljava/lang/String;",
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
    .line 691
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;->a:Lcom/yelp/android/g/e;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/g/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/lang/String;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 695
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;->a:Lcom/yelp/android/g/e;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/g/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    return-void
.end method
