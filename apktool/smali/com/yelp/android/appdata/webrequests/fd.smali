.class public Lcom/yelp/android/appdata/webrequests/fd;
.super Ljava/lang/Object;
.source "ReviewSearchRequest.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/fd;->a:Ljava/util/List;

    .line 41
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/fd;->b:I

    .line 42
    return-void
.end method
