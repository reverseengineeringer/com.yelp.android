.class Lcom/yelp/android/ag/g$a;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lcom/yelp/android/w/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ag/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/w/c",
        "<",
        "Lcom/yelp/android/u/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/u/a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/u/a;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/ag/g$a;->a:Lcom/yelp/android/u/a;

    .line 20
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/ag/g$a;->b(Lcom/bumptech/glide/Priority;)Lcom/yelp/android/u/a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public b(Lcom/bumptech/glide/Priority;)Lcom/yelp/android/u/a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ag/g$a;->a:Lcom/yelp/android/u/a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ag/g$a;->a:Lcom/yelp/android/u/a;

    invoke-virtual {v0}, Lcom/yelp/android/u/a;->d()I

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
