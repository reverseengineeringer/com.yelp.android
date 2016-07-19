.class public final Lcom/yelp/android/appdata/webrequests/cu$a;
.super Ljava/lang/Object;
.source "MyCheckInsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


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
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cu$a;->e:Ljava/util/List;

    .line 79
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/cu$a;->d:Lcom/yelp/android/serializable/OfferSummary;

    .line 80
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/cu$a;->a:I

    .line 81
    iput p4, p0, Lcom/yelp/android/appdata/webrequests/cu$a;->b:I

    .line 82
    iput p5, p0, Lcom/yelp/android/appdata/webrequests/cu$a;->c:I

    .line 83
    return-void
.end method
