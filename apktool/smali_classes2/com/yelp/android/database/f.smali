.class public Lcom/yelp/android/database/f;
.super Ljava/lang/Object;
.source "Column.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yelp/android/database/ColumnType;

.field private final c:Lcom/yelp/android/database/ColumnModifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/database/ColumnModifier;->NONE:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/yelp/android/database/f;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/yelp/android/database/f;->b:Lcom/yelp/android/database/ColumnType;

    .line 19
    iput-object p3, p0, Lcom/yelp/android/database/f;->c:Lcom/yelp/android/database/ColumnModifier;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/database/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/yelp/android/database/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v1, p0, Lcom/yelp/android/database/f;->b:Lcom/yelp/android/database/ColumnType;

    invoke-virtual {v1}, Lcom/yelp/android/database/ColumnType;->getSQLRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/yelp/android/database/f;->c:Lcom/yelp/android/database/ColumnModifier;

    sget-object v2, Lcom/yelp/android/database/ColumnModifier;->NONE:Lcom/yelp/android/database/ColumnModifier;

    if-eq v1, v2, :cond_0

    .line 36
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/yelp/android/database/f;->c:Lcom/yelp/android/database/ColumnModifier;

    invoke-virtual {v1}, Lcom/yelp/android/database/ColumnModifier;->getSQLRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/database/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
