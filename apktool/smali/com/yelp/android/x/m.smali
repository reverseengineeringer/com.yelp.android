.class public Lcom/yelp/android/x/m;
.super Lcom/yelp/android/v/r;
.source "StreamUriLoader.java"

# interfaces
.implements Lcom/yelp/android/x/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/v/r",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/yelp/android/x/h",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/v/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/v/m",
            "<",
            "Lcom/yelp/android/v/e;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/v/r;-><init>(Landroid/content/Context;Lcom/yelp/android/v/m;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/net/Uri;)Lcom/yelp/android/r/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/yelp/android/r/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/yelp/android/r/s;

    invoke-direct {v0, p1, p2}, Lcom/yelp/android/r/s;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Lcom/yelp/android/r/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/r/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/yelp/android/r/r;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/yelp/android/r/r;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method
