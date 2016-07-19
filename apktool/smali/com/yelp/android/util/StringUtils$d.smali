.class final Lcom/yelp/android/util/StringUtils$d;
.super Ljava/lang/Object;
.source "StringUtils.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field a:Landroid/content/res/Resources;

.field b:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p1, p0, Lcom/yelp/android/util/StringUtils$d;->a:Landroid/content/res/Resources;

    .line 713
    iput p2, p0, Lcom/yelp/android/util/StringUtils$d;->b:I

    .line 714
    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 718
    new-instance v0, Lcom/yelp/android/util/StringUtils$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/util/StringUtils$a;-><init>(Lcom/yelp/android/util/StringUtils$1;)V

    .line 719
    iget-object v1, p0, Lcom/yelp/android/util/StringUtils$d;->a:Landroid/content/res/Resources;

    iget v2, p0, Lcom/yelp/android/util/StringUtils$d;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/StringUtils$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 720
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/StringUtils$a;->setBounds(Landroid/graphics/Rect;)V

    .line 721
    new-instance v1, Lcom/yelp/android/util/StringUtils$a$a;

    invoke-direct {v1, v0}, Lcom/yelp/android/util/StringUtils$a$a;-><init>(Lcom/yelp/android/util/StringUtils$a;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/yelp/android/webimageview/ImageLoader;->start(Ljava/lang/String;Lcom/yelp/android/webimageview/ImageLoaderHandler;Z)V

    .line 726
    return-object v0
.end method
