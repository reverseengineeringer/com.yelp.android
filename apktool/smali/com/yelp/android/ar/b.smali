.class public Lcom/yelp/android/ar/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ar/a;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:J


# direct methods
.method protected constructor <init>(Lcom/comscore/analytics/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ar/b;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/comscore/analytics/a;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ar/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ar/b;->c:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/ar/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/yelp/android/ar/b;->a:Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    array-length v5, p1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, p1, v1

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ar/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/ar/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/comscore/utils/f;->c:[Ljava/lang/String;

    if-eq p1, v0, :cond_3

    sget-object v5, Lcom/comscore/utils/f;->c:[Ljava/lang/String;

    array-length v6, v5

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_3

    aget-object v7, v5, v1

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ar/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/ar/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ar/a;

    invoke-virtual {v0}, Lcom/yelp/android/ar/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v0, ""

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method protected a(Lcom/yelp/android/ar/a;)V
    .locals 2

    iget-object v0, p0, Lcom/yelp/android/ar/b;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/yelp/android/ar/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ar/b;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/yelp/android/ar/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/ar/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ar/a;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/yelp/android/ar/d;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ar/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/ar/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/yelp/android/ar/b;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yelp/android/ar/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yelp/android/ar/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/yelp/android/ar/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ar/b;->a(Lcom/yelp/android/ar/a;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/yelp/android/ar/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/yelp/android/ar/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ar/b;->a(Lcom/yelp/android/ar/a;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ar/b;->a(Ljava/util/HashMap;Z)V

    return-void
.end method

.method protected a(Ljava/util/HashMap;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/yelp/android/ar/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/ar/a;)V
    .locals 3

    iget-object v0, p1, Lcom/yelp/android/ar/a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/yelp/android/ar/a;->c:Ljava/lang/Boolean;

    instance-of v2, p1, Lcom/yelp/android/ar/d;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ar/b;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1}, Lcom/yelp/android/ar/b;->a(Lcom/yelp/android/ar/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/ar/b;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/ar/b;->b:Ljava/lang/String;

    return-object v0
.end method
