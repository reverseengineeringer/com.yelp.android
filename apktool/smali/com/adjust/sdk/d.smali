.class final Lcom/adjust/sdk/d;
.super Landroid/os/Handler;
.source "ActivityHandler.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Looper;Lcom/adjust/sdk/a;)V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/d;->a:Ljava/lang/ref/WeakReference;

    .line 219
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 225
    iget-object v0, p0, Lcom/adjust/sdk/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/a;

    .line 226
    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 230
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 232
    :sswitch_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/a;Z)V

    goto :goto_0

    .line 235
    :sswitch_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/a;Z)V

    goto :goto_0

    .line 238
    :sswitch_2
    invoke-static {v0}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/a;)V

    goto :goto_0

    .line 241
    :sswitch_3
    invoke-static {v0}, Lcom/adjust/sdk/a;->b(Lcom/adjust/sdk/a;)V

    goto :goto_0

    .line 244
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/adjust/sdk/k;

    .line 245
    invoke-static {v0, v1}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/a;Lcom/adjust/sdk/k;)V

    goto :goto_0

    .line 248
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/adjust/sdk/k;

    .line 249
    invoke-static {v0, v1}, Lcom/adjust/sdk/a;->b(Lcom/adjust/sdk/a;Lcom/adjust/sdk/k;)V

    goto :goto_0

    .line 252
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    .line 253
    invoke-static {v0, v1}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/a;Landroid/net/Uri;)V

    goto :goto_0

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x11bb6 -> :sswitch_0
        0x11bb9 -> :sswitch_1
        0x11bc0 -> :sswitch_2
        0x11bca -> :sswitch_3
        0x11bd4 -> :sswitch_4
        0x11bde -> :sswitch_5
        0x11be8 -> :sswitch_6
    .end sparse-switch
.end method
