.class final Lcom/facebook/share/internal/j$1;
.super Lcom/facebook/share/internal/h;
.source "ShareInternalUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/j;->a(Lcom/facebook/f;)Lcom/facebook/share/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/f;


# direct methods
.method constructor <init>(Lcom/facebook/f;Lcom/facebook/f;)V
    .locals 0

    .prologue
    .line 201
    iput-object p2, p0, Lcom/facebook/share/internal/j$1;->a:Lcom/facebook/f;

    invoke-direct {p0, p1}, Lcom/facebook/share/internal/h;-><init>(Lcom/facebook/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/internal/a;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/share/internal/j$1;->a:Lcom/facebook/f;

    invoke-static {v0}, Lcom/facebook/share/internal/j;->b(Lcom/facebook/f;)V

    .line 222
    return-void
.end method

.method public a(Lcom/facebook/internal/a;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 204
    if-eqz p2, :cond_1

    .line 205
    invoke-static {p2}, Lcom/facebook/share/internal/j;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    const-string/jumbo v1, "post"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    :cond_0
    invoke-static {p2}, Lcom/facebook/share/internal/j;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/facebook/share/internal/j$1;->a:Lcom/facebook/f;

    invoke-static {v1, v0}, Lcom/facebook/share/internal/j;->a(Lcom/facebook/f;Ljava/lang/String;)V

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    const-string/jumbo v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/facebook/share/internal/j$1;->a:Lcom/facebook/f;

    invoke-static {v0}, Lcom/facebook/share/internal/j;->b(Lcom/facebook/f;)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/facebook/share/internal/j$1;->a:Lcom/facebook/f;

    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "UnknownError"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/share/internal/j;->a(Lcom/facebook/f;Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/facebook/share/internal/j$1;->a:Lcom/facebook/f;

    invoke-static {v0, p2}, Lcom/facebook/share/internal/j;->a(Lcom/facebook/f;Lcom/facebook/FacebookException;)V

    .line 227
    return-void
.end method
