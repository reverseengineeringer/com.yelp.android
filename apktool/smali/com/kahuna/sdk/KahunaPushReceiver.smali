.class public Lcom/kahuna/sdk/KahunaPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KahunaPushReceiver.java"


# static fields
.field private static a:Z


# instance fields
.field private final b:Lcom/kahuna/sdk/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kahuna/sdk/KahunaPushReceiver;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    new-instance v0, Lcom/kahuna/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/r;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaPushReceiver;->b:Lcom/kahuna/sdk/r;

    return-void
.end method

.method static final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "com.kahuna.sdk.KahunaPushService"

    .line 69
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPushReceiver;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 42
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaPushReceiver;->b:Lcom/kahuna/sdk/r;

    const-string/jumbo v1, "onReceive: %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v6, v1, v2}, Lcom/kahuna/sdk/r;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    sget-boolean v0, Lcom/kahuna/sdk/KahunaPushReceiver;->a:Z

    if-nez v0, :cond_0

    .line 45
    sput-boolean v4, Lcom/kahuna/sdk/KahunaPushReceiver;->a:Z

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/KahunaPushReceiver;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/kahuna/sdk/KahunaPushReceiver;->b:Lcom/kahuna/sdk/r;

    const-string/jumbo v2, "GCM IntentService class: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v6, v2, v3}, Lcom/kahuna/sdk/r;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {p1, p2, v0}, Lcom/kahuna/sdk/GCMBaseIntentService;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 53
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v7, v7}, Lcom/kahuna/sdk/KahunaPushReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 54
    return-void
.end method
