.class public abstract Lcom/yelp/android/services/j;
.super Ljava/lang/Object;
.source "Query.java"


# instance fields
.field protected final a:Landroid/net/Uri;

.field protected final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "QueryType cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Server cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    iput-object p2, p0, Lcom/yelp/android/services/j;->c:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/j;->a:Landroid/net/Uri;

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/services/j;->b:Ljava/util/LinkedHashMap;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;D)Lcom/yelp/android/services/j;
    .locals 2

    .prologue
    .line 43
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/f;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Lcom/yelp/android/services/j;
    .locals 1

    .prologue
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Lcom/yelp/android/services/j;
    .locals 2

    .prologue
    .line 47
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/j;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/services/j;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/yelp/android/services/j;
    .locals 1

    .prologue
    .line 55
    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/j;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method
