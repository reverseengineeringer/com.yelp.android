.class Lcom/kahuna/sdk/inapp/c$1$3;
.super Ljava/lang/Object;
.source "RichInAppMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/inapp/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/inapp/c$1;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/inapp/c$1;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/c$1$3;->a:Lcom/kahuna/sdk/inapp/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$1$3;->a:Lcom/kahuna/sdk/inapp/c$1;

    iget-object v0, v0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$1$3;->a:Lcom/kahuna/sdk/inapp/c$1;

    iget-object v0, v0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/d;

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "button1"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    .line 246
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1$3;->a:Lcom/kahuna/sdk/inapp/c$1;

    iget-object v1, v1, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v1, v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Lcom/kahuna/sdk/inapp/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$1$3;->a:Lcom/kahuna/sdk/inapp/c$1;

    iget-object v0, v0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1$3;->a:Lcom/kahuna/sdk/inapp/c$1;

    iget-object v1, v1, Lcom/kahuna/sdk/inapp/c$1;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/app/Activity;Z)V

    .line 253
    return-void

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method
