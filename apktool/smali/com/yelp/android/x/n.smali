.class public Lcom/yelp/android/x/n;
.super Ljava/lang/Object;
.source "StreamUriLoader.java"

# interfaces
.implements Lcom/yelp/android/v/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/v/n",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/v/c;)Lcom/yelp/android/v/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/v/c;",
            ")",
            "Lcom/yelp/android/v/m",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/yelp/android/x/m;

    const-class v1, Lcom/yelp/android/v/e;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p2, v1, v2}, Lcom/yelp/android/v/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/v/m;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/x/m;-><init>(Landroid/content/Context;Lcom/yelp/android/v/m;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
