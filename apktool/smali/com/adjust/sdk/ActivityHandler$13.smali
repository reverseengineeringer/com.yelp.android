.class Lcom/adjust/sdk/ActivityHandler$13;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->foregroundTimerFired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$13;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$13;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # invokes: Lcom/adjust/sdk/ActivityHandler;->foregroundTimerFiredInternal()V
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$1800(Lcom/adjust/sdk/ActivityHandler;)V

    .line 460
    return-void
.end method
