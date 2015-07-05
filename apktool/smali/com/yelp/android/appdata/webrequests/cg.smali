.class public Lcom/yelp/android/appdata/webrequests/cg;
.super Ljava/lang/Object;
.source "FindReservationRequest.java"


# instance fields
.field final a:Ljava/util/Date;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cg;->a:Ljava/util/Date;

    .line 57
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/cg;->b:Ljava/util/ArrayList;

    .line 58
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cg;->a:Ljava/util/Date;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cg;->b:Ljava/util/ArrayList;

    return-object v0
.end method
