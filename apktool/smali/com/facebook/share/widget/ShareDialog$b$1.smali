.class Lcom/facebook/share/widget/ShareDialog$b$1;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Lcom/facebook/internal/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/ShareDialog$b;->b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/a;

.field final synthetic b:Lcom/facebook/share/model/ShareContent;

.field final synthetic c:Z

.field final synthetic d:Lcom/facebook/share/widget/ShareDialog$b;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/ShareDialog$b;Lcom/facebook/internal/a;Lcom/facebook/share/model/ShareContent;Z)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$b$1;->d:Lcom/facebook/share/widget/ShareDialog$b;

    iput-object p2, p0, Lcom/facebook/share/widget/ShareDialog$b$1;->a:Lcom/facebook/internal/a;

    iput-object p3, p0, Lcom/facebook/share/widget/ShareDialog$b$1;->b:Lcom/facebook/share/model/ShareContent;

    iput-boolean p4, p0, Lcom/facebook/share/widget/ShareDialog$b$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/share/widget/ShareDialog$b$1;->a:Lcom/facebook/internal/a;

    invoke-virtual {v0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/widget/ShareDialog$b$1;->b:Lcom/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lcom/facebook/share/widget/ShareDialog$b$1;->c:Z

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/f;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/share/widget/ShareDialog$b$1;->a:Lcom/facebook/internal/a;

    invoke-virtual {v0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/widget/ShareDialog$b$1;->b:Lcom/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lcom/facebook/share/widget/ShareDialog$b$1;->c:Z

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/a;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
