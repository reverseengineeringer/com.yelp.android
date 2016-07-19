.class public Lcom/yelp/android/database/n;
.super Ljava/lang/Object;
.source "TableDescriptorBuilder.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/database/f;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/yelp/android/database/n;->a:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/database/n;->b:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/database/n;->c:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/database/m;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/database/m;

    iget-object v1, p0, Lcom/yelp/android/database/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/database/n;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/yelp/android/database/n;->c:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/database/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/database/n;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yelp/android/database/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object p0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/database/n;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/database/n;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-object p0
.end method
