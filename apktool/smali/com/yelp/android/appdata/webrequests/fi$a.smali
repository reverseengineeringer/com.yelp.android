.class public Lcom/yelp/android/appdata/webrequests/fi$a;
.super Ljava/lang/Object;
.source "UserLocationsRanksRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/fi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/fi;

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
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/fi;Ljava/util/ArrayList;Landroid/os/Bundle;)V
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
    .line 60
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/fi$a;->a:Lcom/yelp/android/appdata/webrequests/fi;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/fi$a;->b:Ljava/util/ArrayList;

    .line 63
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/fi$a;->c:Landroid/os/Bundle;

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
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fi$a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fi$a;->c:Landroid/os/Bundle;

    return-object v0
.end method
