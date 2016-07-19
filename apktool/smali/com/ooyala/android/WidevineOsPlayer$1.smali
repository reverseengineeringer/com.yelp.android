.class Lcom/ooyala/android/WidevineOsPlayer$1;
.super Ljava/lang/Object;
.source "WidevineOsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/WidevineOsPlayer;->onFrozen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/WidevineOsPlayer;


# direct methods
.method constructor <init>(Lcom/ooyala/android/WidevineOsPlayer;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ooyala/android/WidevineOsPlayer$1;->this$0:Lcom/ooyala/android/WidevineOsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    const-string/jumbo v0, "WidevineOsPlayer"

    const-string/jumbo v1, "onFrozen(): running the runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer$1;->this$0:Lcom/ooyala/android/WidevineOsPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/WidevineOsPlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer$1;->this$0:Lcom/ooyala/android/WidevineOsPlayer;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/WidevineOsPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 139
    iget-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer$1;->this$0:Lcom/ooyala/android/WidevineOsPlayer;

    # getter for: Lcom/ooyala/android/WidevineOsPlayer;->_stuckMonitor:Lcom/ooyala/android/WidevineStuckMonitor;
    invoke-static {v0}, Lcom/ooyala/android/WidevineOsPlayer;->access$000(Lcom/ooyala/android/WidevineOsPlayer;)Lcom/ooyala/android/WidevineStuckMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/WidevineStuckMonitor;->reset()V

    .line 141
    :cond_0
    return-void
.end method
