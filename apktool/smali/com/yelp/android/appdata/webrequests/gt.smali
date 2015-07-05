.class public Lcom/yelp/android/appdata/webrequests/gt;
.super Ljava/lang/Object;
.source "UserLocationsRanksRequest.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/gs;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/gs;Ljava/util/ArrayList;Landroid/os/Bundle;)V
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
    .line 54
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/gt;->a:Lcom/yelp/android/appdata/webrequests/gs;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/gt;->b:Ljava/util/ArrayList;

    .line 57
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/gt;->c:Landroid/os/Bundle;

    .line 58
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
    .line 61
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/gt;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/gt;->c:Landroid/os/Bundle;

    return-object v0
.end method
