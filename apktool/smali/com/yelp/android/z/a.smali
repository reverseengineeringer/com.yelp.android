.class public abstract Lcom/yelp/android/z/a;
.super Ljava/lang/Object;
.source "DrawableResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Drawable must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/z/a;->a:Landroid/graphics/drawable/Drawable;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/yelp/android/z/a;->b:Z

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/z/a;->b:Z

    .line 33
    iget-object v0, p0, Lcom/yelp/android/z/a;->a:Landroid/graphics/drawable/Drawable;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/z/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yelp/android/z/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
