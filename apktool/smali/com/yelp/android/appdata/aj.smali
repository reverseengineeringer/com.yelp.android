.class abstract Lcom/yelp/android/appdata/aj;
.super Ljava/lang/Object;
.source "RemoteConfigPreferences.java"

# interfaces
.implements Lcom/yelp/android/services/push/t;


# instance fields
.field public final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/yelp/android/appdata/aj;->b:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/yelp/android/appdata/aj;->a:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 71
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/appdata/aj;-><init>(Ljava/lang/String;I)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/yelp/android/appdata/aj;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    check-cast p1, Lcom/yelp/android/appdata/aj;

    .line 114
    iget v2, p0, Lcom/yelp/android/appdata/aj;->a:I

    iget v3, p1, Lcom/yelp/android/appdata/aj;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/appdata/aj;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 117
    iget-object v2, p1, Lcom/yelp/android/appdata/aj;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 118
    goto :goto_0

    .line 119
    :cond_5
    iget-object v2, p0, Lcom/yelp/android/appdata/aj;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/appdata/aj;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 120
    goto :goto_0
.end method

.method public final getAntiTokens()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lcom/yelp/android/services/push/t;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 76
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 80
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    iget v0, p0, Lcom/yelp/android/appdata/aj;->a:I

    if-eq v0, v5, :cond_0

    .line 87
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    iget-object v2, p0, Lcom/yelp/android/appdata/aj;->b:Ljava/lang/String;

    const-string/jumbo v3, "Something went very wrong"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 98
    .line 100
    iget v0, p0, Lcom/yelp/android/appdata/aj;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 101
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/appdata/aj;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 102
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/aj;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/appdata/aj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/appdata/aj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
