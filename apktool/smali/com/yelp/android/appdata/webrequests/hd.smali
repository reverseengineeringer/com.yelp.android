.class public Lcom/yelp/android/appdata/webrequests/hd;
.super Ljava/lang/Object;
.source "VideoUploadUrlRequest.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/hd;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/hd;->b:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/hd;->d:Ljava/util/List;

    .line 58
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/hd;->c:Z

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
