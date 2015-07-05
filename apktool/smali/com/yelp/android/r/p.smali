.class Lcom/yelp/android/r/p;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;II)Lcom/yelp/android/r/o;
    .locals 2

    .prologue
    .line 185
    invoke-static {p1}, Lcom/yelp/android/r/k;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    if-gt p2, v0, :cond_0

    const/16 v0, 0x180

    if-le p3, v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 187
    :cond_1
    invoke-static {p1}, Lcom/yelp/android/r/k;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    new-instance v0, Lcom/yelp/android/r/o;

    new-instance v1, Lcom/yelp/android/r/q;

    invoke-direct {v1}, Lcom/yelp/android/r/q;-><init>()V

    invoke-direct {v0, v1}, Lcom/yelp/android/r/o;-><init>(Lcom/yelp/android/r/n;)V

    goto :goto_0

    .line 190
    :cond_2
    new-instance v0, Lcom/yelp/android/r/o;

    new-instance v1, Lcom/yelp/android/r/m;

    invoke-direct {v1}, Lcom/yelp/android/r/m;-><init>()V

    invoke-direct {v0, v1}, Lcom/yelp/android/r/o;-><init>(Lcom/yelp/android/r/n;)V

    goto :goto_0
.end method
