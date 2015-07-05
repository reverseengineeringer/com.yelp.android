.class public final Lcom/yelp/android/appdata/webrequests/cs;
.super Ljava/lang/Object;
.source "ListBookmarksRequest.java"


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
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cs;->a:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/cs;->b:Ljava/util/ArrayList;

    .line 48
    iput p4, p0, Lcom/yelp/android/appdata/webrequests/cs;->d:I

    .line 49
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/cs;->c:Lcom/yelp/android/serializable/MapSpan;

    .line 50
    return-void
.end method
