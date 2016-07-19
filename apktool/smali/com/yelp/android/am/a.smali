.class public abstract Lcom/yelp/android/am/a;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/yelp/android/am/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/am/j",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/request/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/request/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/am/a;->a:Lcom/bumptech/glide/request/b;

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/b;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yelp/android/am/a;->a:Lcom/bumptech/glide/request/b;

    .line 35
    return-void
.end method

.method public a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
