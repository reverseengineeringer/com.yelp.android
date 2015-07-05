.class public Lcom/yelp/android/analytics/h;
.super Ljava/lang/Object;
.source "IriAnalytic.java"


# instance fields
.field a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private c:Lcom/yelp/android/analytics/iris/b;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/analytics/h;->c:Lcom/yelp/android/analytics/iris/b;

    .line 115
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/analytics/h;->a:Ljava/util/TreeMap;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/analytics/h;->b:Z

    .line 117
    return-void
.end method


# virtual methods
.method public final a()Lcom/yelp/android/analytics/g;
    .locals 5

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/yelp/android/analytics/h;->b:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Reusing Builder ... bad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/analytics/h;->b:Z

    .line 139
    new-instance v0, Lcom/yelp/android/analytics/g;

    iget-object v1, p0, Lcom/yelp/android/analytics/h;->c:Lcom/yelp/android/analytics/iris/b;

    iget-object v2, p0, Lcom/yelp/android/analytics/h;->d:Ljava/lang/String;

    new-instance v3, Ljava/util/TreeMap;

    iget-object v4, p0, Lcom/yelp/android/analytics/h;->a:Ljava/util/TreeMap;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/yelp/android/analytics/h;->c:Lcom/yelp/android/analytics/iris/b;

    .line 131
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yelp/android/analytics/h;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yelp/android/analytics/h;->d:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/h;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/analytics/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object p0
.end method
