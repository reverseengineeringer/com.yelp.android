.class public Lcom/yelp/android/ui/util/n;
.super Landroid/text/style/CharacterStyle;
.source "ForegroundAlphaSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 21
    iput p1, p0, Lcom/yelp/android/ui/util/n;->a:F

    .line 22
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/yelp/android/ui/util/n;->a:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 27
    return-void
.end method
