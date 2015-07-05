.class Lcom/yelp/android/ab/m;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lcom/yelp/android/r/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/r/c",
        "<",
        "Lcom/yelp/android/p/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/p/a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/p/a;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/ab/m;->a:Lcom/yelp/android/p/a;

    .line 20
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/ab/m;->b(Lcom/bumptech/glide/Priority;)Lcom/yelp/android/p/a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public b(Lcom/bumptech/glide/Priority;)Lcom/yelp/android/p/a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ab/m;->a:Lcom/yelp/android/p/a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ab/m;->a:Lcom/yelp/android/p/a;

    invoke-virtual {v0}, Lcom/yelp/android/p/a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
