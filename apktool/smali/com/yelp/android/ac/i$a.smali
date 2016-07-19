.class public Lcom/yelp/android/ac/i$a;
.super Ljava/lang/Object;
.source "StreamUrlLoader.java"

# interfaces
.implements Lcom/yelp/android/aa/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ac/i;
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
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
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
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/ac/i;

    const-class v1, Lcom/yelp/android/aa/d;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p2, v1, v2}, Lcom/yelp/android/aa/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/aa/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ac/i;-><init>(Lcom/yelp/android/aa/l;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
