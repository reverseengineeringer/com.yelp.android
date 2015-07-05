.class public Lcom/yelp/android/appdata/webrequests/bg;
.super Ljava/lang/Object;
.source "DealBusinessesRequest.java"


# instance fields
.field final a:I

.field final b:Lcom/yelp/android/serializable/MapSpan;

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/yelp/android/serializable/MapSpan;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yelp/android/serializable/MapSpan;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/bg;->a:I

    .line 52
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/bg;->b:Lcom/yelp/android/serializable/MapSpan;

    .line 53
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/bg;->c:Ljava/util/ArrayList;

    .line 54
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/MapSpan;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/bg;->b:Lcom/yelp/android/serializable/MapSpan;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/bg;->c:Ljava/util/ArrayList;

    return-object v0
.end method
