.class Lcom/yelp/android/bl/a$a$a;
.super Ljava/lang/Object;
.source "CachedJobQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/bl/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Long;

.field b:Z

.field c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLjava/lang/Long;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/yelp/android/bl/a$a$a;->a:Ljava/lang/Long;

    .line 135
    iput-boolean p1, p0, Lcom/yelp/android/bl/a$a$a;->b:Z

    .line 136
    iput-object p3, p0, Lcom/yelp/android/bl/a$a$a;->c:Ljava/util/Collection;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/Long;Ljava/util/Collection;Lcom/yelp/android/bl/a$1;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/bl/a$a$a;-><init>(ZLjava/lang/Long;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/bl/a$a$a;ZLjava/util/Collection;)Z
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/bl/a$a$a;->a(ZLjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/yelp/android/bl/a$a$a;->c:Ljava/util/Collection;

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 160
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/bl/a$a$a;->c:Ljava/util/Collection;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v2

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/bl/a$a$a;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v0, v3, :cond_3

    move v0, v2

    .line 151
    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/bl/a$a$a;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 154
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 155
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 157
    goto :goto_0

    :cond_5
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method private a(ZLjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/yelp/android/bl/a$a$a;->b:Z

    if-ne v0, p1, :cond_0

    invoke-direct {p0, p2}, Lcom/yelp/android/bl/a$a$a;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ZLjava/lang/Long;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    iput-object p2, p0, Lcom/yelp/android/bl/a$a$a;->a:Ljava/lang/Long;

    .line 165
    iput-boolean p1, p0, Lcom/yelp/android/bl/a$a$a;->b:Z

    .line 166
    iput-object p3, p0, Lcom/yelp/android/bl/a$a$a;->c:Ljava/util/Collection;

    .line 167
    return-void
.end method
