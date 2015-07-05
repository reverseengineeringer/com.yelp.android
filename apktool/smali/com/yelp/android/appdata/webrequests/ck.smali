.class public Lcom/yelp/android/appdata/webrequests/ck;
.super Ljava/lang/Object;
.source "FriendCheckInsRequest.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ck;->a:Ljava/util/ArrayList;

    .line 109
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ck;->b:Ljava/util/ArrayList;

    .line 110
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ck;->c:Ljava/util/ArrayList;

    .line 111
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
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ck;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ck;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ck;->c:Ljava/util/ArrayList;

    return-object v0
.end method
