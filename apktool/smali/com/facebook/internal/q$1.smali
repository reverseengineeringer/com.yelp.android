.class Lcom/facebook/internal/q$1;
.super Landroid/os/Handler;
.source "PlatformServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/q;-><init>(Landroid/content/Context;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/q;


# direct methods
.method constructor <init>(Lcom/facebook/internal/q;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/internal/q$1;->a:Lcom/facebook/internal/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/internal/q$1;->a:Lcom/facebook/internal/q;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/q;->a(Landroid/os/Message;)V

    .line 63
    return-void
.end method
