.class Lcom/ooyala/android/Analytics$1;
.super Landroid/webkit/WebViewClient;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/Analytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/Analytics;


# direct methods
.method constructor <init>(Lcom/ooyala/android/Analytics;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ooyala/android/Analytics$1;->this$0:Lcom/ooyala/android/Analytics;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ooyala/android/Analytics$1;->this$0:Lcom/ooyala/android/Analytics;

    # getter for: Lcom/ooyala/android/Analytics;->_ready:Z
    invoke-static {v0}, Lcom/ooyala/android/Analytics;->access$000(Lcom/ooyala/android/Analytics;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/Analytics$1;->this$0:Lcom/ooyala/android/Analytics;

    # getter for: Lcom/ooyala/android/Analytics;->_failed:Z
    invoke-static {v0}, Lcom/ooyala/android/Analytics;->access$100(Lcom/ooyala/android/Analytics;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ooyala/android/Analytics$1;->this$0:Lcom/ooyala/android/Analytics;

    const/4 v1, 0x1

    # setter for: Lcom/ooyala/android/Analytics;->_ready:Z
    invoke-static {v0, v1}, Lcom/ooyala/android/Analytics;->access$002(Lcom/ooyala/android/Analytics;Z)Z

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Initialized Analytics."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/ooyala/android/Analytics$1;->this$0:Lcom/ooyala/android/Analytics;

    # invokes: Lcom/ooyala/android/Analytics;->performQueuedActions()V
    invoke-static {v0}, Lcom/ooyala/android/Analytics;->access$200(Lcom/ooyala/android/Analytics;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ooyala/android/Analytics$1;->this$0:Lcom/ooyala/android/Analytics;

    # getter for: Lcom/ooyala/android/Analytics;->_failed:Z
    invoke-static {v0}, Lcom/ooyala/android/Analytics;->access$100(Lcom/ooyala/android/Analytics;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/ooyala/android/Analytics$1;->this$0:Lcom/ooyala/android/Analytics;

    const/4 v1, 0x0

    # setter for: Lcom/ooyala/android/Analytics;->_ready:Z
    invoke-static {v0, v1}, Lcom/ooyala/android/Analytics;->access$002(Lcom/ooyala/android/Analytics;Z)Z

    .line 134
    iget-object v0, p0, Lcom/ooyala/android/Analytics$1;->this$0:Lcom/ooyala/android/Analytics;

    const/4 v1, 0x1

    # setter for: Lcom/ooyala/android/Analytics;->_failed:Z
    invoke-static {v0, v1}, Lcom/ooyala/android/Analytics;->access$102(Lcom/ooyala/android/Analytics;Z)Z

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ERROR: Failed to load js Analytics!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void
.end method
