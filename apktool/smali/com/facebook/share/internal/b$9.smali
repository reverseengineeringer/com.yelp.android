.class Lcom/facebook/share/internal/b$9;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/b$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/b;->c(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/facebook/share/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/b;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/facebook/share/internal/b$9;->b:Lcom/facebook/share/internal/b;

    iput-object p2, p0, Lcom/facebook/share/internal/b$9;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 987
    iget-object v0, p0, Lcom/facebook/share/internal/b$9;->b:Lcom/facebook/share/internal/b;

    invoke-static {v0}, Lcom/facebook/share/internal/b;->h(Lcom/facebook/share/internal/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 990
    const-string/jumbo v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string/jumbo v2, "Invalid Object Id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/facebook/share/internal/b$9;->b:Lcom/facebook/share/internal/b;

    const-string/jumbo v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v1, v2, v0}, Lcom/facebook/share/internal/b;->b(Lcom/facebook/share/internal/b;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1034
    :goto_0
    return-void

    .line 1002
    :cond_0
    new-instance v0, Lcom/facebook/i;

    invoke-direct {v0}, Lcom/facebook/i;-><init>()V

    .line 1003
    new-instance v1, Lcom/facebook/share/internal/b$i;

    iget-object v2, p0, Lcom/facebook/share/internal/b$9;->b:Lcom/facebook/share/internal/b;

    iget-object v3, p0, Lcom/facebook/share/internal/b$9;->b:Lcom/facebook/share/internal/b;

    invoke-static {v3}, Lcom/facebook/share/internal/b;->h(Lcom/facebook/share/internal/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/share/internal/b$9;->b:Lcom/facebook/share/internal/b;

    invoke-static {v4}, Lcom/facebook/share/internal/b;->i(Lcom/facebook/share/internal/b;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/share/internal/b$i;-><init>(Lcom/facebook/share/internal/b;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1005
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/b$i;->a(Lcom/facebook/i;)V

    .line 1006
    new-instance v2, Lcom/facebook/share/internal/b$9$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/share/internal/b$9$1;-><init>(Lcom/facebook/share/internal/b$9;Lcom/facebook/share/internal/b$i;)V

    invoke-virtual {v0, v2}, Lcom/facebook/i;->a(Lcom/facebook/i$a;)V

    .line 1033
    invoke-virtual {v0}, Lcom/facebook/i;->h()Lcom/facebook/h;

    goto :goto_0
.end method
