.class public Lcom/facebook/internal/h;
.super Lcom/facebook/internal/w;
.source "FacebookWebFallbackDialog.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/facebook/internal/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/facebook/internal/h;->b(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/h;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/facebook/internal/w;->cancel()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 56
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/u;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 60
    const-string/jumbo v0, "bridge_args"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string/jumbo v2, "bridge_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {v2}, Lcom/facebook/internal/c;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 69
    const-string/jumbo v2, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    const-string/jumbo v0, "method_results"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string/jumbo v2, "method_results"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "{}"

    .line 85
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v2}, Lcom/facebook/internal/c;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 87
    const-string/jumbo v2, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :cond_2
    :goto_1
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-static {}, Lcom/facebook/internal/p;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    sget-object v2, Lcom/facebook/internal/h;->a:Ljava/lang/String;

    const-string/jumbo v3, "Unable to parse bridge_args JSON"

    invoke-static {v2, v3, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    sget-object v2, Lcom/facebook/internal/h;->a:Ljava/lang/String;

    const-string/jumbo v3, "Unable to parse bridge_args JSON"

    invoke-static {v2, v3, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/facebook/internal/h;->c()Landroid/webkit/WebView;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/facebook/internal/h;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/internal/h;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    :cond_0
    invoke-super {p0}, Lcom/facebook/internal/w;->cancel()V

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/internal/h;->b:Z

    if-nez v1, :cond_1

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/internal/h;->b:Z

    .line 126
    const-string/jumbo v1, "(function() {  var event = document.createEvent(\'Event\');  event.initEvent(\'fbPlatformDialogMustClose\',true,true);  document.dispatchEvent(event);})();"

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    new-instance v1, Lcom/facebook/internal/h$1;

    invoke-direct {v1, p0}, Lcom/facebook/internal/h$1;-><init>(Lcom/facebook/internal/h;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
