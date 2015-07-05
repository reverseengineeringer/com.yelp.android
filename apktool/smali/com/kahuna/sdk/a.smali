.class public Lcom/kahuna/sdk/a;
.super Ljava/lang/Object;
.source "ArchiveContainerObject.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/Event;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/Event;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/kahuna/sdk/a;->a:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/kahuna/sdk/a;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/kahuna/sdk/a;->c:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kahuna/sdk/a;->a:Ljava/util/List;

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2710

    .line 47
    const-string/jumbo v0, ""

    .line 49
    iget-object v1, p0, Lcom/kahuna/sdk/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/kahuna/sdk/a;->b:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/kahuna/sdk/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_1
    return-object v0
.end method

.method protected c()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 65
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 66
    iget-object v0, p0, Lcom/kahuna/sdk/a;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/kahuna/sdk/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 74
    :cond_1
    return-object v1
.end method
