.class Lcom/kahuna/sdk/l$7;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/l;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/l;)V
    .locals 0

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/kahuna/sdk/l$7;->a:Lcom/kahuna/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/kahuna/sdk/l$7;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1215
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You need to call onAppCreate() before any other call to the SDK. Ignoring disablePush request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/kahuna/sdk/l$7;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->l(Lcom/kahuna/sdk/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/kahuna/sdk/l$7;->a:Lcom/kahuna/sdk/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Z)Z

    .line 1222
    iget-object v0, p0, Lcom/kahuna/sdk/l$7;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->l(Lcom/kahuna/sdk/l;)Z

    move-result v0

    iget-object v1, p0, Lcom/kahuna/sdk/l$7;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/s;->a(ZLandroid/content/Context;)V

    .line 1224
    iget-object v0, p0, Lcom/kahuna/sdk/l$7;->a:Lcom/kahuna/sdk/l;

    new-instance v1, Lcom/kahuna/sdk/Event;

    const-string/jumbo v2, "k_push_disabled"

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/Event;)V

    goto :goto_0
.end method
