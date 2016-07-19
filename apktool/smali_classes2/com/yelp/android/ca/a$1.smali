.class final Lcom/yelp/android/ca/a$1;
.super Lcom/yelp/android/database/i;
.source "AdapterBusinessSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ca/a;->d()Lcom/yelp/android/database/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/yelp/android/database/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/database/m;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/yelp/android/ca/a;->a:Lcom/yelp/android/database/m;

    return-object v0
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/yelp/android/ca/a$1;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x7

    return v0
.end method
