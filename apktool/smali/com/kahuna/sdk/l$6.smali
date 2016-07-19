.class Lcom/kahuna/sdk/l$6;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->e()V
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
    .line 1189
    iput-object p1, p0, Lcom/kahuna/sdk/l$6;->a:Lcom/kahuna/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1193
    iget-object v0, p0, Lcom/kahuna/sdk/l$6;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1194
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You need to call onAppCreate() before any other call to the SDK. Ignoring enablePush request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/kahuna/sdk/l$6;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->l(Lcom/kahuna/sdk/l;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/kahuna/sdk/l$6;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Z)Z

    .line 1201
    iget-object v0, p0, Lcom/kahuna/sdk/l$6;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->l(Lcom/kahuna/sdk/l;)Z

    move-result v0

    iget-object v1, p0, Lcom/kahuna/sdk/l$6;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/s;->a(ZLandroid/content/Context;)V

    .line 1202
    iget-object v0, p0, Lcom/kahuna/sdk/l$6;->a:Lcom/kahuna/sdk/l;

    new-instance v1, Lcom/kahuna/sdk/Event;

    const-string/jumbo v2, "k_push_enabled"

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/Event;)V

    goto :goto_0
.end method
