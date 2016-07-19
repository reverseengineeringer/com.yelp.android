.class public Lcom/yelp/android/appdata/webrequests/am$a;
.super Ljava/lang/Object;
.source "CheckinCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


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
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/am$a;->a:Ljava/util/List;

    .line 91
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/am$a;->c:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 92
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/am$a;->d:Lcom/yelp/android/serializable/YelpBusiness;

    .line 93
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/am$a;->b:Ljava/util/List;

    .line 94
    return-void
.end method
