.class public abstract Lcom/google/android/gms/internal/kr;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/kr$a;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/kr$a;->hI()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/kr$a;->hS()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kr;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/kr$a;->hI()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/li;->bh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/kr$a;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/kr$a;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/kr;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/kr$a;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/kr$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/kr$a",
            "<TI;TO;>;",
            "Ljava/lang/Object;",
            ")TI;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/kr$a;->c(Lcom/google/android/gms/internal/kr$a;)Lcom/google/android/gms/internal/kr$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kr$a;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected a(Lcom/google/android/gms/internal/kr$a;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hJ()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kr;->bf(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kr;->be(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kr;->bd(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b(Lcom/google/android/gms/internal/kr$a;)Ljava/lang/Object;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hS()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kr;->bc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v4, "Concrete field shouldn\'t be value object: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hQ()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/jx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hP()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kr;->hM()Ljava/util/HashMap;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kr;->hL()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr$a;->hQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kr;->bc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method

.method protected abstract bc(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract bd(Ljava/lang/String;)Z
.end method

.method protected be(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Concrete types not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bf(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Concrete type arrays not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract hK()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/kr$a",
            "<**>;>;"
        }
    .end annotation
.end method

.method public hL()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hM()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kr;->hK()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/kr$a;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/kr$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/kr;->b(Lcom/google/android/gms/internal/kr$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/kr$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "{"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "\":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    const-string/jumbo v0, "null"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/kr$a;->hJ()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kr$a;->hO()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v4, v1, v2}, Lcom/google/android/gms/internal/kr;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/kr$a;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, v2

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/lb;->d([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/android/gms/internal/lb;->e([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    check-cast v2, Ljava/util/HashMap;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/lj;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v4, v1, v2}, Lcom/google/android/gms/internal/kr;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/kr$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string/jumbo v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v0, "{}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
