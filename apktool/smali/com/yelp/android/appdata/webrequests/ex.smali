.class public Lcom/yelp/android/appdata/webrequests/ex;
.super Ljava/lang/Object;
.source "ReviewListFilteredRequest.java"


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

.field public final c:Lcom/yelp/android/serializable/MenuItem;

.field public final d:Lcom/yelp/android/serializable/MoreInfoAction;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/yelp/android/serializable/MenuItem;Lcom/yelp/android/serializable/MoreInfoAction;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;I",
            "Lcom/yelp/android/serializable/MenuItem;",
            "Lcom/yelp/android/serializable/MoreInfoAction;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ex;->a:Ljava/util/List;

    .line 64
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/ex;->b:I

    .line 65
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ex;->c:Lcom/yelp/android/serializable/MenuItem;

    .line 66
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/ex;->d:Lcom/yelp/android/serializable/MoreInfoAction;

    .line 67
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/ex;->e:Ljava/lang/String;

    .line 68
    return-void
.end method
