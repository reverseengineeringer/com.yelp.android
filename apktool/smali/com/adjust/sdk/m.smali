.class final Lcom/adjust/sdk/m;
.super Landroid/os/Handler;
.source "PackageHandler.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Looper;Lcom/adjust/sdk/l;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/m;->a:Ljava/lang/ref/WeakReference;

    .line 143
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    iget-object v0, p0, Lcom/adjust/sdk/m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/l;

    .line 150
    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    invoke-static {v0}, Lcom/adjust/sdk/l;->a(Lcom/adjust/sdk/l;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/adjust/sdk/ActivityPackage;

    .line 160
    invoke-static {v0, v1}, Lcom/adjust/sdk/l;->a(Lcom/adjust/sdk/l;Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0

    .line 163
    :pswitch_2
    invoke-static {v0}, Lcom/adjust/sdk/l;->b(Lcom/adjust/sdk/l;)V

    goto :goto_0

    .line 166
    :pswitch_3
    invoke-static {v0}, Lcom/adjust/sdk/l;->c(Lcom/adjust/sdk/l;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
