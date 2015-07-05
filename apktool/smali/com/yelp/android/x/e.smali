.class public Lcom/yelp/android/x/e;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lcom/yelp/android/v/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/v/n",
        "<[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/v/c;)Lcom/yelp/android/v/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/v/c;",
            ")",
            "Lcom/yelp/android/v/m",
            "<[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/x/d;

    invoke-direct {v0}, Lcom/yelp/android/x/d;-><init>()V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
