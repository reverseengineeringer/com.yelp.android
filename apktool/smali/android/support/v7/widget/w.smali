.class Landroid/support/v7/widget/w;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/support/v7/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Landroid/support/v7/widget/w;->b:Landroid/support/v7/widget/u;

    iput-object p2, p0, Landroid/support/v7/widget/w;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ad;

    .line 144
    iget-object v2, p0, Landroid/support/v7/widget/w;->b:Landroid/support/v7/widget/u;

    invoke-static {v2, v0}, Landroid/support/v7/widget/u;->a(Landroid/support/v7/widget/u;Landroid/support/v7/widget/ad;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/w;->b:Landroid/support/v7/widget/u;

    invoke-static {v0}, Landroid/support/v7/widget/u;->b(Landroid/support/v7/widget/u;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
