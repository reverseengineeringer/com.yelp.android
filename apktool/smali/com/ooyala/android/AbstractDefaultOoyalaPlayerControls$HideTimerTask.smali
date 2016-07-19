.class public Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$HideTimerTask;
.super Ljava/util/TimerTask;
.source "AbstractDefaultOoyalaPlayerControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HideTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;


# direct methods
.method protected constructor <init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$HideTimerTask;->this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$HideTimerTask;->this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;

    iget-object v0, v0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    return-void
.end method
