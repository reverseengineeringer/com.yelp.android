.class public Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;
.super Lcom/ooyala/android/OoyalaPlayerLayout;
.source "ShadowOoyalaPlayerLayout.java"


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/ShadowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaPlayerLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/ooyala/android/OoyalaPlayerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/ooyala/android/OoyalaPlayerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ooyala/android/OoyalaPlayerLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;->getWidth()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;->getHeight()I

    move-result v1

    .line 34
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;->a:Lcom/yelp/android/ui/widgets/ShadowView;

    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;->a:Lcom/yelp/android/ui/widgets/ShadowView;

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/ui/widgets/ShadowView;->a(II)V

    .line 37
    :cond_0
    return-void
.end method

.method public setShadowView(Lcom/yelp/android/ui/widgets/ShadowView;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;->a:Lcom/yelp/android/ui/widgets/ShadowView;

    .line 27
    return-void
.end method
