.class public final Lcom/bumptech/glide/i$c;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/i;

.field private final b:Lcom/yelp/android/aa/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/l",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/i;Lcom/yelp/android/aa/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/aa/l",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    iput-object p1, p0, Lcom/bumptech/glide/i$c;->a:Lcom/bumptech/glide/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p2, p0, Lcom/bumptech/glide/i$c;->b:Lcom/yelp/android/aa/l;

    .line 675
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/bumptech/glide/i$c;->a:Lcom/bumptech/glide/i;

    invoke-static {v0}, Lcom/bumptech/glide/i;->e(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/i$d;

    move-result-object v9

    new-instance v0, Lcom/bumptech/glide/d;

    iget-object v2, p0, Lcom/bumptech/glide/i$c;->b:Lcom/yelp/android/aa/l;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/i$c;->a:Lcom/bumptech/glide/i;

    invoke-static {v1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/i;)Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/bumptech/glide/i$c;->a:Lcom/bumptech/glide/i;

    invoke-static {v1}, Lcom/bumptech/glide/i;->b(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/g;

    move-result-object v5

    iget-object v1, p0, Lcom/bumptech/glide/i$c;->a:Lcom/bumptech/glide/i;

    invoke-static {v1}, Lcom/bumptech/glide/i;->c(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/manager/l;

    move-result-object v6

    iget-object v1, p0, Lcom/bumptech/glide/i$c;->a:Lcom/bumptech/glide/i;

    invoke-static {v1}, Lcom/bumptech/glide/i;->d(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/manager/g;

    move-result-object v7

    iget-object v1, p0, Lcom/bumptech/glide/i$c;->a:Lcom/bumptech/glide/i;

    invoke-static {v1}, Lcom/bumptech/glide/i;->e(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/i$d;

    move-result-object v8

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/d;-><init>(Ljava/lang/Class;Lcom/yelp/android/aa/l;Lcom/yelp/android/aa/l;Landroid/content/Context;Lcom/bumptech/glide/g;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/i$d;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/i$d;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 697
    invoke-static {p1}, Lcom/bumptech/glide/i;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/i$c;->a(Ljava/lang/Class;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method
