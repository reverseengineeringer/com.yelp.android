.class Lcom/facebook/share/widget/a$1;
.super Lcom/facebook/share/internal/h;
.source "AppInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/f;


# virtual methods
.method public a(Lcom/facebook/internal/a;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 147
    invoke-static {p2}, Lcom/facebook/share/internal/j;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/facebook/share/widget/a$1;->a:Lcom/facebook/f;

    invoke-interface {v0}, Lcom/facebook/f;->a()V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/widget/a$1;->a:Lcom/facebook/f;

    new-instance v1, Lcom/facebook/share/widget/a$b;

    invoke-direct {v1, p2}, Lcom/facebook/share/widget/a$b;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/facebook/f;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
