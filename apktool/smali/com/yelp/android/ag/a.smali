.class public abstract Lcom/yelp/android/ag/a;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/yelp/android/ag/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ag/j",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/request/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yelp/android/ag/a;->a:Lcom/bumptech/glide/request/a;

    .line 35
    return-void
.end method

.method public a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public f()Lcom/bumptech/glide/request/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ag/a;->a:Lcom/bumptech/glide/request/a;

    return-object v0
.end method
