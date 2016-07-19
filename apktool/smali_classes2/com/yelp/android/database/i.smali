.class public abstract Lcom/yelp/android/database/i;
.super Ljava/lang/Object;
.source "DatabaseTableHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/yelp/android/database/m;
.end method

.method public a(IILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()I
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/database/i;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
