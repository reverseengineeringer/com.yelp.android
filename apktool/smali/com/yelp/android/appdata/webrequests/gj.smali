.class public Lcom/yelp/android/appdata/webrequests/gj;
.super Ljava/lang/Object;
.source "UserBusinessesRanksRequest.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/gj;->a:Ljava/util/ArrayList;

    .line 63
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/gj;->b:Landroid/os/Bundle;

    .line 64
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
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/gj;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/gj;->b:Landroid/os/Bundle;

    return-object v0
.end method
