.class public Lcom/yelp/android/analytics/g$a;
.super Ljava/lang/Object;
.source "IriAnalytic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


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

.field private c:Lcom/yelp/android/analytics/iris/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/analytics/g$a;->c:Lcom/yelp/android/analytics/iris/a;

    .line 116
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/analytics/g$a;->a:Ljava/util/TreeMap;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/analytics/g$a;->b:Z

    .line 118
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yelp/android/analytics/g$a;->c:Lcom/yelp/android/analytics/iris/a;

    .line 132
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yelp/android/analytics/g$a;->d:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/analytics/g$a;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-object p0
.end method

.method public final a()Lcom/yelp/android/analytics/g;
    .locals 5

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/yelp/android/analytics/g$a;->b:Z

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Reusing Builder ... bad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/analytics/g$a;->b:Z

    .line 140
    new-instance v0, Lcom/yelp/android/analytics/g;

    iget-object v1, p0, Lcom/yelp/android/analytics/g$a;->c:Lcom/yelp/android/analytics/iris/a;

    iget-object v2, p0, Lcom/yelp/android/analytics/g$a;->d:Ljava/lang/String;

    new-instance v3, Ljava/util/TreeMap;

    iget-object v4, p0, Lcom/yelp/android/analytics/g$a;->a:Ljava/util/TreeMap;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
