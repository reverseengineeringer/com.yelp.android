.class public Lcom/yelp/android/services/push/i;
.super Ljava/lang/Object;
.source "MessagesController.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/services/push/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/services/push/i;->a:Ljava/util/Map;

    .line 55
    return-void
.end method

.method private c(Lcom/yelp/android/services/push/h;)Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/services/push/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/services/push/i;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yelp/android/services/push/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/services/push/h;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/i;->b:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/services/push/j;)V
    .locals 3

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/yelp/android/services/push/i;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/yelp/android/services/push/j;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/services/push/h;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 97
    iget-object v1, p0, Lcom/yelp/android/services/push/i;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/services/push/i;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 103
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/j;

    invoke-interface {v0, p1}, Lcom/yelp/android/services/push/j;->b(Lcom/yelp/android/services/push/h;)Z

    move-result v0

    .line 105
    and-int/2addr v0, v1

    :goto_2
    move v1, v0

    .line 107
    goto :goto_1

    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public b(Lcom/yelp/android/services/push/h;)V
    .locals 3

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/yelp/android/services/push/i;->c(Lcom/yelp/android/services/push/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/services/push/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 117
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/j;

    invoke-interface {v0, p1}, Lcom/yelp/android/services/push/j;->a(Lcom/yelp/android/services/push/h;)V

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/services/push/j;)V
    .locals 2

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/yelp/android/services/push/i;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/yelp/android/services/push/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void
.end method
