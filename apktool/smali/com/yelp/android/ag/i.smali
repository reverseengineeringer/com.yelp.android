.class public Lcom/yelp/android/ag/i;
.super Lcom/yelp/android/z/b;
.source "SquaringDrawable.java"


# instance fields
.field private final a:Lcom/yelp/android/z/b;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/z/b;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/z/b;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    .line 25
    iput p2, p0, Lcom/yelp/android/ag/i;->b:I

    .line 26
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/z/b;->a(I)V

    .line 163
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->a()Z

    move-result v0

    return v0
.end method

.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->clearColorFilter()V

    .line 80
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/z/b;->draw(Landroid/graphics/Canvas;)V

    .line 138
    return-void
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/yelp/android/ag/i;->b:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/yelp/android/ag/i;->b:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/z/b;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/yelp/android/z/b;->invalidateSelf()V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->invalidateSelf()V

    .line 121
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->isRunning()Z

    move-result v0

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/z/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/z/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 133
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/z/b;->setAlpha(I)V

    .line 143
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/z/b;->setBounds(IIII)V

    .line 31
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yelp/android/z/b;->setBounds(IIII)V

    .line 32
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/yelp/android/z/b;->setBounds(Landroid/graphics/Rect;)V

    .line 37
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/z/b;->setBounds(Landroid/graphics/Rect;)V

    .line 38
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/z/b;->setChangingConfigurations(I)V

    .line 43
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/z/b;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/z/b;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 148
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/z/b;->setDither(Z)V

    .line 53
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/z/b;->setFilterBitmap(Z)V

    .line 58
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/z/b;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->start()V

    .line 168
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0}, Lcom/yelp/android/z/b;->stop()V

    .line 173
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/yelp/android/z/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ag/i;->a:Lcom/yelp/android/z/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/z/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method
