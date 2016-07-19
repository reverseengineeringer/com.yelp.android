.class Lcom/kahuna/sdk/q$b$1;
.super Lcom/kahuna/sdk/n;
.source "KahunaInternalDebugManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/q$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/q$b;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/q$b;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/kahuna/sdk/q$b$1;->a:Lcom/kahuna/sdk/q$b;

    invoke-direct {p0}, Lcom/kahuna/sdk/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 377
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 378
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Successfully sent monitor request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 370
    invoke-super {p0, p1, p2}, Lcom/kahuna/sdk/n;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 371
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 372
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to send monitor request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    :cond_0
    return-void
.end method
