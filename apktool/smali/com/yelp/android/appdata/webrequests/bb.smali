.class public Lcom/yelp/android/appdata/webrequests/bb;
.super Ljava/lang/Object;
.source "ComplimentsRequest.java"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field

.field final b:Z


# direct methods
.method private constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/bb;->a:Ljava/util/List;

    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/bb;->b:Z

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/List;ZLcom/yelp/android/appdata/webrequests/ba;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/bb;-><init>(Ljava/util/List;Z)V

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
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/bb;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/bb;->b:Z

    return v0
.end method
