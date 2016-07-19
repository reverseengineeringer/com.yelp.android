.class Lcom/yelp/android/ui/widgets/d$1;
.super Ljava/lang/Object;
.source "PanelPullDownHeader.java"

# interfaces
.implements Lcom/yelp/android/ui/util/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/d;->setPulledPhotoUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/d;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/d$1;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$1;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->a(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d$1;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/d;->b(Lcom/yelp/android/ui/widgets/d;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ar;->b(Landroid/view/View;I)V

    .line 129
    return-void
.end method
