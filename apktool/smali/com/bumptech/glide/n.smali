.class public final Lcom/bumptech/glide/n;
.super Ljava/lang/Object;
.source "RequestManager.java"


# instance fields
.field final synthetic a:Lcom/bumptech/glide/m;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/m;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 703
    iput-object p1, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/n;->d:Z

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/n;->b:Ljava/lang/Object;

    .line 706
    iput-object p2, p0, Lcom/bumptech/glide/n;->c:Ljava/lang/Class;

    .line 707
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/g",
            "<TA;TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/m;

    iget-object v0, v0, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/j;

    invoke-static {v0}, Lcom/bumptech/glide/j;->e(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/o;

    move-result-object v10

    new-instance v0, Lcom/bumptech/glide/g;

    iget-object v1, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/m;

    iget-object v1, v1, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/j;

    invoke-static {v1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/m;

    iget-object v2, v2, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/j;

    invoke-static {v2}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/h;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/n;->c:Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/m;

    invoke-static {v4}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/m;)Lcom/yelp/android/v/m;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/m;

    invoke-static {v5}, Lcom/bumptech/glide/m;->b(Lcom/bumptech/glide/m;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/m;

    iget-object v6, v6, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/j;

    invoke-static {v6}, Lcom/bumptech/glide/j;->c(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/manager/l;

    move-result-object v7

    iget-object v6, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/m;

    iget-object v6, v6, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/j;

    invoke-static {v6}, Lcom/bumptech/glide/j;->d(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/manager/h;

    move-result-object v8

    iget-object v6, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/m;

    iget-object v6, v6, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/j;

    invoke-static {v6}, Lcom/bumptech/glide/j;->e(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/o;

    move-result-object v9

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/g;-><init>(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Class;Lcom/yelp/android/v/m;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/o;)V

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    .line 720
    iget-boolean v1, p0, Lcom/bumptech/glide/n;->d:Z

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/bumptech/glide/n;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    .line 723
    :cond_0
    return-object v0
.end method
