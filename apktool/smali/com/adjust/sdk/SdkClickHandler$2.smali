.class Lcom/adjust/sdk/SdkClickHandler$2;
.super Ljava/lang/Object;
.source "SdkClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/SdkClickHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/SdkClickHandler;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 73
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    # getter for: Lcom/adjust/sdk/SdkClickHandler;->paused:Z
    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$300(Lcom/adjust/sdk/SdkClickHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    # getter for: Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;
    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$000(Lcom/adjust/sdk/SdkClickHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    # getter for: Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;
    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$000(Lcom/adjust/sdk/SdkClickHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityPackage;

    .line 83
    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getRetries()I

    move-result v1

    .line 85
    if-lez v1, :cond_2

    .line 86
    iget-object v2, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    # getter for: Lcom/adjust/sdk/SdkClickHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;
    invoke-static {v2}, Lcom/adjust/sdk/SdkClickHandler;->access$400(Lcom/adjust/sdk/SdkClickHandler;)Lcom/adjust/sdk/BackoffStrategy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adjust/sdk/Util;->getWaitingTime(ILcom/adjust/sdk/BackoffStrategy;)J

    move-result-wide v2

    .line 88
    long-to-double v4, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 89
    sget-object v6, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v6, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    # getter for: Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;
    invoke-static {v5}, Lcom/adjust/sdk/SdkClickHandler;->access$100(Lcom/adjust/sdk/SdkClickHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string/jumbo v6, "Sleeping for %s seconds before retrying sdk_click for the %d time"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    # invokes: Lcom/adjust/sdk/SdkClickHandler;->sendSdkClickInternal(Lcom/adjust/sdk/ActivityPackage;)V
    invoke-static {v1, v0}, Lcom/adjust/sdk/SdkClickHandler;->access$500(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V

    .line 97
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    # getter for: Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;
    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$000(Lcom/adjust/sdk/SdkClickHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    # invokes: Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V
    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$200(Lcom/adjust/sdk/SdkClickHandler;)V

    goto :goto_0
.end method
