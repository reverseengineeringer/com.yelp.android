.class Lcom/bumptech/glide/p;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/d;


# instance fields
.field private final a:Lcom/bumptech/glide/manager/l;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/l;)V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p1, p0, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/manager/l;

    .line 743
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 747
    if-eqz p1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->d()V

    .line 750
    :cond_0
    return-void
.end method
