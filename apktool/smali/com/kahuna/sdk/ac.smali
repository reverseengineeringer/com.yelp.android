.class Lcom/kahuna/sdk/ac;
.super Landroid/content/BroadcastReceiver;
.source "KahunaInternalDebugManager.java"


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/aa;


# direct methods
.method private constructor <init>(Lcom/kahuna/sdk/aa;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/kahuna/sdk/ac;->a:Lcom/kahuna/sdk/aa;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kahuna/sdk/aa;Lcom/kahuna/sdk/ab;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/ac;-><init>(Lcom/kahuna/sdk/aa;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 212
    invoke-static {p1, p2}, Lcom/kahuna/sdk/aa;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 213
    return-void
.end method
