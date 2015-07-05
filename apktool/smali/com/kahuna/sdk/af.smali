.class Lcom/kahuna/sdk/af;
.super Ljava/lang/Object;
.source "KahunaLogger.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "KahunaSDK"

    iput-object v0, p0, Lcom/kahuna/sdk/af;->a:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/kahuna/sdk/af;->b:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kahuna/sdk/af;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/kahuna/sdk/af;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kahuna/sdk/af;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method
