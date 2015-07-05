.class public final Lcom/yelp/android/appdata/webrequests/cm;
.super Ljava/lang/Object;
.source "FriendFinderRequest.java"


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

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cm;->c:Ljava/util/Map;

    .line 69
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/cm;->a:Ljava/util/ArrayList;

    .line 70
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/cm;->b:I

    .line 71
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
    .line 74
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm;->c:Ljava/util/Map;

    return-object v0
.end method
