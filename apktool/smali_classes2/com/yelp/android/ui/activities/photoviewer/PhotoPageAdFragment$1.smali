.class Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$1;
.super Ljava/lang/Object;
.source "PhotoPageAdFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/util/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$1;->c:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$1;->c:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->l()V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$1;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$1;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    return-void
.end method
