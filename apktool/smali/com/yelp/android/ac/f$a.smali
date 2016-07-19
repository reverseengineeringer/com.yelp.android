.class public Lcom/yelp/android/ac/f$a;
.super Ljava/lang/Object;
.source "StreamResourceLoader.java"

# interfaces
.implements Lcom/yelp/android/aa/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ac/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/aa/m",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/aa/c;)Lcom/yelp/android/aa/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/aa/c;",
            ")",
            "Lcom/yelp/android/aa/l",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/ac/f;

    const-class v1, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p2, v1, v2}, Lcom/yelp/android/aa/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/aa/l;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ac/f;-><init>(Landroid/content/Context;Lcom/yelp/android/aa/l;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
