.class Lcom/kahuna/sdk/l$3;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->a(Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/kahuna/sdk/l;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/l;Ljava/lang/String;ZII)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/kahuna/sdk/l$3;->e:Lcom/kahuna/sdk/l;

    iput-object p2, p0, Lcom/kahuna/sdk/l$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/kahuna/sdk/l$3;->b:Z

    iput p4, p0, Lcom/kahuna/sdk/l$3;->c:I

    iput p5, p0, Lcom/kahuna/sdk/l$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 858
    :try_start_0
    new-instance v0, Lcom/kahuna/sdk/d;

    iget-object v1, p0, Lcom/kahuna/sdk/l$3;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/d;-><init>(Ljava/lang/String;)V

    .line 859
    iget-boolean v1, p0, Lcom/kahuna/sdk/l$3;->b:Z

    if-eqz v1, :cond_0

    .line 860
    iget v1, p0, Lcom/kahuna/sdk/l$3;->c:I

    iget v2, p0, Lcom/kahuna/sdk/l$3;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/kahuna/sdk/d;->a(II)Lcom/kahuna/sdk/d;

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/l$3;->e:Lcom/kahuna/sdk/l;

    invoke-virtual {v0}, Lcom/kahuna/sdk/d;->a()Lcom/kahuna/sdk/Event;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 866
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaCommon.trackEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
