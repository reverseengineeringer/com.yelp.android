.class Lcom/yelp/android/x/a$b;
.super Lcom/yelp/android/x/b;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/x/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/x/b",
        "<",
        "Lcom/yelp/android/x/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/x/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/yelp/android/x/a$a;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/yelp/android/x/a$a;

    invoke-direct {v0, p0}, Lcom/yelp/android/x/a$a;-><init>(Lcom/yelp/android/x/a$b;)V

    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Lcom/yelp/android/x/a$a;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/x/a$b;->c()Lcom/yelp/android/x/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/x/a$a;

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/x/a$a;->a(IILandroid/graphics/Bitmap$Config;)V

    .line 65
    return-object v0
.end method

.method protected synthetic b()Lcom/yelp/android/x/h;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/x/a$b;->a()Lcom/yelp/android/x/a$a;

    move-result-object v0

    return-object v0
.end method
