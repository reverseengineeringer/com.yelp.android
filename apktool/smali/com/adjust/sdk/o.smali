.class final Lcom/adjust/sdk/o;
.super Landroid/os/Handler;
.source "RequestHandler.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Looper;Lcom/adjust/sdk/n;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/o;->a:Ljava/lang/ref/WeakReference;

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    iget-object v0, p0, Lcom/adjust/sdk/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/n;

    .line 90
    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 94
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/adjust/sdk/ActivityPackage;

    .line 100
    invoke-static {v0, v1}, Lcom/adjust/sdk/n;->a(Lcom/adjust/sdk/n;Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-static {v0}, Lcom/adjust/sdk/n;->a(Lcom/adjust/sdk/n;)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x11ad0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
