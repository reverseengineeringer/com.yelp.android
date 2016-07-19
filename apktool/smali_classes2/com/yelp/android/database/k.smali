.class public abstract Lcom/yelp/android/database/k;
.super Lcom/yelp/android/database/i;
.source "DeprecatedDatabaseTableHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/database/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/yelp/android/database/l;

    invoke-virtual {p0}, Lcom/yelp/android/database/k;->a()Lcom/yelp/android/database/m;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/yelp/android/database/l;-><init>(Lcom/yelp/android/database/m;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lcom/yelp/android/database/l;->a()V

    .line 26
    return-void
.end method

.method public abstract c()I
.end method

.method public d(I)Z
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/database/k;->c()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
