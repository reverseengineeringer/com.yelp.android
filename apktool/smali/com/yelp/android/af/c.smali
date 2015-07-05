.class Lcom/yelp/android/af/c;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/yelp/android/af/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/af/b;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yelp/android/af/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 68
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 69
    return-object v0
.end method
