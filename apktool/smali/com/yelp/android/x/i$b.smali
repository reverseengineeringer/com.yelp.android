.class Lcom/yelp/android/x/i$b;
.super Lcom/yelp/android/x/b;
.source "SizeConfigStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/x/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/x/b",
        "<",
        "Lcom/yelp/android/x/i$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/yelp/android/x/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/yelp/android/x/i$a;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/yelp/android/x/i$a;

    invoke-direct {v0, p0}, Lcom/yelp/android/x/i$a;-><init>(Lcom/yelp/android/x/i$b;)V

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)Lcom/yelp/android/x/i$a;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/x/i$b;->c()Lcom/yelp/android/x/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/x/i$a;

    .line 161
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/x/i$a;->a(ILandroid/graphics/Bitmap$Config;)V

    .line 162
    return-object v0
.end method

.method protected synthetic b()Lcom/yelp/android/x/h;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/x/i$b;->a()Lcom/yelp/android/x/i$a;

    move-result-object v0

    return-object v0
.end method
