.class public Lcom/yelp/android/appdata/webrequests/gq;
.super Ljava/lang/Object;
.source "UserFriendsRequest.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/gq;->a:Ljava/util/ArrayList;

    .line 35
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/gq;->b:I

    .line 36
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
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/gq;->a:Ljava/util/ArrayList;

    return-object v0
.end method
