.class Lcom/facebook/share/internal/d$a$1;
.super Ljava/lang/Object;
.source "LikeDialog.java"

# interfaces
.implements Lcom/facebook/internal/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/d$a;->b(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/LikeContent;

.field final synthetic b:Lcom/facebook/share/internal/d$a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/d$a;Lcom/facebook/share/internal/LikeContent;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/facebook/share/internal/d$a$1;->b:Lcom/facebook/share/internal/d$a;

    iput-object p2, p0, Lcom/facebook/share/internal/d$a$1;->a:Lcom/facebook/share/internal/LikeContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/share/internal/d$a$1;->a:Lcom/facebook/share/internal/LikeContent;

    invoke-static {v0}, Lcom/facebook/share/internal/d;->a(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "LikeDialog"

    const-string/jumbo v1, "Attempting to present the Like Dialog with an outdated Facebook app on the device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
