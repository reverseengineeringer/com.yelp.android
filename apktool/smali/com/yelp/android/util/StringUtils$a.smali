.class final Lcom/yelp/android/util/StringUtils$a;
.super Landroid/graphics/drawable/Drawable;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/util/StringUtils$a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 805
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 835
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/util/StringUtils$1;)V
    .locals 0

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/yelp/android/util/StringUtils$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 830
    iput-object p1, p0, Lcom/yelp/android/util/StringUtils$a;->a:Landroid/graphics/drawable/Drawable;

    .line 831
    iget-object v0, p0, Lcom/yelp/android/util/StringUtils$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/util/StringUtils$a;->setBounds(Landroid/graphics/Rect;)V

    .line 832
    invoke-virtual {p0}, Lcom/yelp/android/util/StringUtils$a;->invalidateSelf()V

    .line 833
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/yelp/android/util/StringUtils$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 812
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/yelp/android/util/StringUtils$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/yelp/android/util/StringUtils$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 822
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/yelp/android/util/StringUtils$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 827
    return-void
.end method
