.class public Lcom/yelp/android/appdata/webrequests/an;
.super Ljava/lang/Object;
.source "CheckinCommentRequest.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/CheckInFeedback;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/yelp/android/serializable/YelpCheckIn;

.field public final d:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Comment;",
            ">;",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/CheckInFeedback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/an;->a:Ljava/util/List;

    .line 80
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/an;->c:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 81
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/an;->d:Lcom/yelp/android/serializable/YelpBusiness;

    .line 82
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/an;->b:Ljava/util/List;

    .line 83
    return-void
.end method
