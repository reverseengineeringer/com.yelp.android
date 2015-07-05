.class public final Lcom/yelp/android/appdata/webrequests/dq;
.super Ljava/lang/Object;
.source "MyCheckInsRequest.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lcom/yelp/android/serializable/OfferSummary;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yelp/android/serializable/OfferSummary;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;",
            "Lcom/yelp/android/serializable/OfferSummary;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dq;->e:Ljava/util/List;

    .line 71
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/dq;->d:Lcom/yelp/android/serializable/OfferSummary;

    .line 72
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/dq;->a:I

    .line 73
    iput p4, p0, Lcom/yelp/android/appdata/webrequests/dq;->b:I

    .line 74
    iput p5, p0, Lcom/yelp/android/appdata/webrequests/dq;->c:I

    .line 75
    return-void
.end method
