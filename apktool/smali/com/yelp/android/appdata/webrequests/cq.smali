.class public Lcom/yelp/android/appdata/webrequests/cq;
.super Ljava/lang/Object;
.source "InitializePurchaseRequest.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cq;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/cq;->b:Ljava/util/ArrayList;

    .line 48
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cq;->b:Ljava/util/ArrayList;

    return-object v0
.end method
