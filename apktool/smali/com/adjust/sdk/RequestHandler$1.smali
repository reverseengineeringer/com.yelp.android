.class Lcom/adjust/sdk/RequestHandler$1;
.super Ljava/lang/Object;
.source "RequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/RequestHandler;->sendPackage(Lcom/adjust/sdk/ActivityPackage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/RequestHandler;

.field final synthetic val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

.field final synthetic val$queueSize:I


# direct methods
.method constructor <init>(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adjust/sdk/RequestHandler$1;->this$0:Lcom/adjust/sdk/RequestHandler;

    iput-object p2, p0, Lcom/adjust/sdk/RequestHandler$1;->val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

    iput p3, p0, Lcom/adjust/sdk/RequestHandler$1;->val$queueSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler$1;->this$0:Lcom/adjust/sdk/RequestHandler;

    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler$1;->val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

    iget v2, p0, Lcom/adjust/sdk/RequestHandler$1;->val$queueSize:I

    # invokes: Lcom/adjust/sdk/RequestHandler;->sendInternal(Lcom/adjust/sdk/ActivityPackage;I)V
    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/RequestHandler;->access$000(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V

    .line 53
    return-void
.end method
