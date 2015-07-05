.class final Lcom/yelp/android/util/ah;
.super Ljava/lang/Object;
.source "StringUtils.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field a:Landroid/content/res/Resources;

.field b:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput-object p1, p0, Lcom/yelp/android/util/ah;->a:Landroid/content/res/Resources;

    .line 663
    iput p2, p0, Lcom/yelp/android/util/ah;->b:I

    .line 664
    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 668
    new-instance v0, Lcom/yelp/android/util/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/util/ac;-><init>(Lcom/yelp/android/util/ab;)V

    .line 669
    iget-object v1, p0, Lcom/yelp/android/util/ah;->a:Landroid/content/res/Resources;

    iget v2, p0, Lcom/yelp/android/util/ah;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ac;->a(Landroid/graphics/drawable/Drawable;)V

    .line 670
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ac;->setBounds(Landroid/graphics/Rect;)V

    .line 671
    new-instance v1, Lcom/yelp/android/util/ad;

    invoke-direct {v1, v0}, Lcom/yelp/android/util/ad;-><init>(Lcom/yelp/android/util/ac;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/yelp/android/webimageview/ImageLoader;->start(Ljava/lang/String;Lcom/yelp/android/webimageview/ImageLoaderHandler;Z)V

    .line 674
    return-object v0
.end method
