.class final Lcom/kahuna/sdk/k;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZII)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/kahuna/sdk/k;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/kahuna/sdk/k;->b:Z

    iput p3, p0, Lcom/kahuna/sdk/k;->c:I

    iput p4, p0, Lcom/kahuna/sdk/k;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 961
    :try_start_0
    new-instance v0, Lcom/kahuna/sdk/c;

    iget-object v1, p0, Lcom/kahuna/sdk/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/c;-><init>(Ljava/lang/String;)V

    .line 962
    iget-boolean v1, p0, Lcom/kahuna/sdk/k;->b:Z

    if-eqz v1, :cond_0

    .line 963
    iget v1, p0, Lcom/kahuna/sdk/k;->c:I

    iget v2, p0, Lcom/kahuna/sdk/k;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/kahuna/sdk/c;->a(II)Lcom/kahuna/sdk/c;

    .line 965
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kahuna/sdk/c;->a()Lcom/kahuna/sdk/Event;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 969
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaAnalytics.trackEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
