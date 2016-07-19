.class Lcom/kahuna/sdk/q$a;
.super Landroid/content/BroadcastReceiver;
.source "KahunaInternalDebugManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/q;


# direct methods
.method private constructor <init>(Lcom/kahuna/sdk/q;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/kahuna/sdk/q$a;->a:Lcom/kahuna/sdk/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kahuna/sdk/q;Lcom/kahuna/sdk/q$1;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/q$a;-><init>(Lcom/kahuna/sdk/q;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 210
    :try_start_0
    invoke-static {p1, p2}, Lcom/kahuna/sdk/q;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "KahunaSDK wasn\'t initialized in onAppCreate(), please initialized Kahuna correctly to prevent strange behavior"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
