.class public Lcom/yelp/android/appdata/webrequests/gm;
.super Ljava/lang/Object;
.source "UserDealsAndOffersRequest.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/gm;->a:Ljava/util/ArrayList;

    .line 44
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/gm;->b:Ljava/util/ArrayList;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/gm;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/gm;->b:Ljava/util/ArrayList;

    return-object v0
.end method
