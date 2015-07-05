.class public Lcom/bumptech/glide/load/engine/f;
.super Ljava/lang/Object;
.source "Engine.java"


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/i;

.field private final b:Lcom/bumptech/glide/request/d;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/i;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/f;->b:Lcom/bumptech/glide/request/d;

    .line 48
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/i;

    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/i;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->b:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/i;->b(Lcom/bumptech/glide/request/d;)V

    .line 53
    return-void
.end method
