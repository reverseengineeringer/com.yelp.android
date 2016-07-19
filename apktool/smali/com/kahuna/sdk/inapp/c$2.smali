.class Lcom/kahuna/sdk/inapp/c$2;
.super Ljava/lang/Object;
.source "RichInAppMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/inapp/c;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/kahuna/sdk/inapp/c;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/inapp/c;Z)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/c$2;->b:Lcom/kahuna/sdk/inapp/c;

    iput-boolean p2, p0, Lcom/kahuna/sdk/inapp/c$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 616
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$2;->b:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/c;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$2;->b:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/c;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 619
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$2;->b:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$2;->b:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v0, v4}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 627
    iget-boolean v0, p0, Lcom/kahuna/sdk/inapp/c$2;->a:Z

    if-eqz v0, :cond_1

    .line 628
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->e()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Lcom/kahuna/sdk/inapp/RichInAppMessage;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    .line 631
    :cond_1
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception dismissing In App Message dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
