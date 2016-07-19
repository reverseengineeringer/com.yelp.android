.class Lcom/kahuna/sdk/l$1;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 193
    iput-object p1, p0, Lcom/kahuna/sdk/l$1;->a:Lcom/kahuna/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/kahuna/sdk/l$1;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0, p1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Landroid/app/Activity;)V

    .line 202
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/kahuna/sdk/l$1;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0, p1}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;Landroid/app/Activity;)V

    .line 217
    return-void
.end method
