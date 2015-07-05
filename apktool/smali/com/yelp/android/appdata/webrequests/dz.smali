.class public Lcom/yelp/android/appdata/webrequests/dz;
.super Ljava/lang/Object;
.source "OffersRequest.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dz;->a:Ljava/util/List;

    .line 43
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/dz;->b:I

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dz;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/dz;->b:I

    return v0
.end method
