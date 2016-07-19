.class Landroid/support/v7/app/c$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/c;


# direct methods
.method constructor <init>(Landroid/support/v7/app/c;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/c;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->b(Landroid/support/v7/app/c;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->b(Landroid/support/v7/app/c;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 126
    :goto_0
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->h(Landroid/support/v7/app/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v2}, Landroid/support/v7/app/c;->g(Landroid/support/v7/app/c;)Landroid/support/v7/app/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->c(Landroid/support/v7/app/c;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->d(Landroid/support/v7/app/c;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->d(Landroid/support/v7/app/c;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->e(Landroid/support/v7/app/c;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->f(Landroid/support/v7/app/c;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Landroid/support/v7/app/c$1;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->f(Landroid/support/v7/app/c;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
