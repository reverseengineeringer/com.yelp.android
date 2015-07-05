.class Lcom/bumptech/glide/o;
.super Ljava/lang/Object;
.source "RequestManager.java"


# instance fields
.field final synthetic a:Lcom/bumptech/glide/j;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/j;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lcom/bumptech/glide/e",
            "<TA;***>;>(TX;)TX;"
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/j;

    invoke-static {v0}, Lcom/bumptech/glide/j;->f(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/j;

    invoke-static {v0}, Lcom/bumptech/glide/j;->f(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/e;)V

    .line 734
    :cond_0
    return-object p1
.end method
