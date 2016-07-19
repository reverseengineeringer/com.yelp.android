.class Lcom/yelp/android/w/i$e;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/w/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;II)Lcom/yelp/android/w/i$d;
    .locals 2

    .prologue
    .line 253
    invoke-static {p1}, Lcom/yelp/android/w/i;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    if-gt p2, v0, :cond_0

    const/16 v0, 0x180

    if-le p3, v0, :cond_1

    .line 254
    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 255
    :cond_1
    invoke-static {p1}, Lcom/yelp/android/w/i;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    new-instance v0, Lcom/yelp/android/w/i$d;

    new-instance v1, Lcom/yelp/android/w/i$f;

    invoke-direct {v1}, Lcom/yelp/android/w/i$f;-><init>()V

    invoke-direct {v0, v1}, Lcom/yelp/android/w/i$d;-><init>(Lcom/yelp/android/w/i$c;)V

    goto :goto_0

    .line 258
    :cond_2
    new-instance v0, Lcom/yelp/android/w/i$d;

    new-instance v1, Lcom/yelp/android/w/i$b;

    invoke-direct {v1}, Lcom/yelp/android/w/i$b;-><init>()V

    invoke-direct {v0, v1}, Lcom/yelp/android/w/i$d;-><init>(Lcom/yelp/android/w/i$c;)V

    goto :goto_0
.end method
