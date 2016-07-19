.class Lcom/facebook/share/internal/b$10;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/b;->d(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/b$j;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/facebook/share/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/b;Lcom/facebook/share/internal/b$j;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/facebook/share/internal/b$10;->c:Lcom/facebook/share/internal/b;

    iput-object p2, p0, Lcom/facebook/share/internal/b$10;->a:Lcom/facebook/share/internal/b$j;

    iput-object p3, p0, Lcom/facebook/share/internal/b$10;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/i;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1049
    iget-object v0, p0, Lcom/facebook/share/internal/b$10;->c:Lcom/facebook/share/internal/b;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/internal/b;Z)Z

    .line 1051
    iget-object v0, p0, Lcom/facebook/share/internal/b$10;->a:Lcom/facebook/share/internal/b$j;

    iget-object v0, v0, Lcom/facebook/share/internal/b$j;->c:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/facebook/share/internal/b$10;->c:Lcom/facebook/share/internal/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/b;->b(Lcom/facebook/share/internal/b;Z)V

    .line 1068
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/b$10;->c:Lcom/facebook/share/internal/b;

    invoke-static {v0, v3}, Lcom/facebook/share/internal/b;->b(Lcom/facebook/share/internal/b;Ljava/lang/String;)Ljava/lang/String;

    .line 1057
    iget-object v0, p0, Lcom/facebook/share/internal/b$10;->c:Lcom/facebook/share/internal/b;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/b;->c(Lcom/facebook/share/internal/b;Z)Z

    .line 1059
    iget-object v0, p0, Lcom/facebook/share/internal/b$10;->c:Lcom/facebook/share/internal/b;

    invoke-static {v0}, Lcom/facebook/share/internal/b;->g(Lcom/facebook/share/internal/b;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const-string/jumbo v1, "fb_like_control_did_unlike"

    iget-object v2, p0, Lcom/facebook/share/internal/b$10;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1066
    iget-object v0, p0, Lcom/facebook/share/internal/b$10;->c:Lcom/facebook/share/internal/b;

    iget-object v1, p0, Lcom/facebook/share/internal/b$10;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/internal/b;Landroid/os/Bundle;)V

    goto :goto_0
.end method
