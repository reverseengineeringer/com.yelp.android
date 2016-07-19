.class Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$3;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/util/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$3;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$3;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->l()V

    .line 110
    new-instance v0, Lcom/yelp/android/ui/util/s;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/s;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$3;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/util/s;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 111
    return-void
.end method
