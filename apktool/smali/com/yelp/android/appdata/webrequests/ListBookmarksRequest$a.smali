.class public final Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;
.super Ljava/lang/Object;
.source "ListBookmarksRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/yelp/android/serializable/MapSpan;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;Lcom/yelp/android/serializable/MapSpan;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;",
            "Lcom/yelp/android/serializable/MapSpan;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;->a:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;->b:Ljava/util/ArrayList;

    .line 53
    iput p4, p0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;->d:I

    .line 54
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;->c:Lcom/yelp/android/serializable/MapSpan;

    .line 55
    return-void
.end method
