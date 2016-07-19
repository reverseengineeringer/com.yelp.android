.class public Lcom/yelp/android/services/push/g;
.super Ljava/lang/Object;
.source "PushNotification.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/net/Uri;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/g;->a:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "sender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/g;->b:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "device_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/g;->c:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/g;->d:Landroid/net/Uri;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/services/push/g;->e:Ljava/util/Map;

    .line 40
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/yelp/android/services/push/g;->e:Ljava/util/Map;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/services/push/g;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/yelp/android/services/push/g;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/g;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/yelp/android/services/push/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/g;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/yelp/android/services/push/g;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/g;->c:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/yelp/android/services/push/g;->f()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/g;->d:Landroid/net/Uri;

    .line 59
    invoke-virtual {p1}, Lcom/yelp/android/services/push/g;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/push/g;->e:Ljava/util/Map;

    .line 60
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/services/push/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/services/push/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/services/push/g;->e:Ljava/util/Map;

    return-object v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/services/push/g;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/services/push/g;->c:Ljava/lang/String;

    return-object v0
.end method
